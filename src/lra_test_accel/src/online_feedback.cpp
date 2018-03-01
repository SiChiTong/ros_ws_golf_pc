#include <ros/ros.h>
#include <math.h>
#include <haptic_base/PutterValues.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <sensor_msgs/Imu.h>
#include <std_msgs/String.h>
#include <utility>
#include <limits>
#include <Eigen/Dense>
#include "kalman.hpp"


#define PI 3.14159265359
#define RAD2DEG 57.295779513 

haptic_base::PutterValues val;

enum State {BACKSWING, DOWNSWING};
State curState = BACKSWING;
double curAngle = 0;
double gyroScaling = 0.0175;
double desiredAngleFeedback = -20;
bool engageFeedback = true;
int actionCounter = -1;


double dt = 1.0/200.; // Time step
/*** KalmanFilter Setup ***/
const int n_k=3; // Number of States
const int m_k=1; // Number of Measurements
Eigen::MatrixXd A(n_k, n_k); // System dynamics matrix
Eigen::MatrixXd C(m_k, n_k); // Output matrix
Eigen::MatrixXd Q(n_k, n_k); // Process noise covariance
Eigen::MatrixXd R(m_k, m_k); // Measurement noise covariance
Eigen::MatrixXd P(n_k, n_k); // Estimate error covariance
KalmanFilter kf;
Eigen::VectorXd x0(n_k);
double t = 0;
Eigen::VectorXd y(m_k), y_est(m_k);
int kalmanStabilizationCycles = 0;
//ros::Publisher motor_values_pubPred;

void initializeKalmanFilter(){
  // Discrete LTI projectile motion, measuring position only
  A << 1, dt, 0, 0, 1, dt, 0, 0, 1;
  C << 1, 0, 0;
  // Reasonable covariance matrices
  Q << .5, .5, .0, .5, .5, .0, .0, .0, .0;
  R << 3;
  P << .1, .1, .1, .1, 10000, 10, .1, 10, 100;
  kf =KalmanFilter(dt,A,C,Q,R,P);
  // Best guess of initial states
  x0 << 90.0, 0, 0;
  kf.init(0, x0);
  y_est << 0.0;

}

int calDuty(double amplitude)
{
  return (2358 - (int)(sqrt(1.54E-4 - 1.053E-5*amplitude) / 5.264E-6));
}

double mapValues(double x, double fl, double fh, double tl, double th){
  return (((x-fl)*((th-tl)/(fh-fl)))+tl);
}


void updateVibration(double ac, double min, double max, double offset){
  double dutyCycle = 0;
  for(int i = 0; i < 4; i ++){
    val.duty_values[i]=0;
    val.interval_values[i]=0.01;
  }
  if (ac-offset < 0){
    dutyCycle = mapValues(fabs(ac-offset), 0, fabs(min), 14.5, 0);
    double interval =  mapValues(abs(ac-offset), 0, fabs(min), 0.01, 0.03);
    dutyCycle = calDuty(dutyCycle);
    val.duty_values[0]=dutyCycle;
    val.interval_values[0] = interval;
  }else if (ac-offset > 0){
    dutyCycle = mapValues(fabs(ac-offset), 0, fabs(max), 14.5, 0);
    double interval =  mapValues(abs(ac-offset), 0, fabs(max), 0.01, 0.03);
    dutyCycle = calDuty(dutyCycle);
    val.duty_values[2]=dutyCycle;
    val.interval_values[2] = interval;
  }else{
    val.duty_values[0]=0;
    //val.interval_values[0] = 0.01;
    val.duty_values[2]=0;
    //val.interval_values[2] = 0.01;
  }
}

void ballHitVibration(){
  
  for(int i = 0; i < 4; i ++){
    val.duty_values[i]=2048;
    val.interval_values[i]=0.08;
  }
}

void stopMotors(){
  for(int i = 0; i < 4; i ++){
    val.duty_values[i]=0;
    val.interval_values[i]=0.5;
  }
}


void rpyCB(const geometry_msgs::Vector3Stamped::ConstPtr& msg){
  
  curAngle = msg->vector.x;
        /*** prediction using KF ***/
  t += dt;
  y_est = kf.prediction();
  y << curAngle;
  kf.update(y);
  x0 << y, kf.state()(1), kf.state()(2);
  kf.init(t, x0);
  if (kalmanStabilizationCycles < 400)
    kalmanStabilizationCycles++;
  
  /*geometry_msgs::Vector3 punto;
  punto.x = curAngle;
  punto.y = (double)y_est[0];
  motor_values_pubPred.publish(punto);
  */
  if (engageFeedback 
    && curAngle > desiredAngleFeedback 
    && (double)y_est[0] <= desiredAngleFeedback 
    && kalmanStabilizationCycles == 400){
      //prevAngle > desiredAngleFeedback && 
      //curAngle <= desiredAngleFeedback){
    ballHitVibration();
    engageFeedback = false;

    //ROS_INFO("Passed threshold!");
    actionCounter = 0;
  }else if(!engageFeedback && actionCounter >=0 && actionCounter < 10){
    actionCounter ++;
  }else{
    actionCounter =-1;
    stopMotors();
  }
}


void commandsCB(const std_msgs::String::ConstPtr& msg){
    //Dont forget to receive the bias and send it from the APP when its changed please thanks
  std::string s = msg->data;
  
  std::string command = s.substr(0, s.find("#"));
  std::string value = s.substr(s.find("#")+1);
  
  if (command.compare("set_feedback_angle") ==0){
    desiredAngleFeedback = atof(value.c_str());
    ROS_INFO("Updating angle to %s",value.c_str());
  }else if(command.compare("engage_feedback")==0){
    engageFeedback = true;
    ROS_INFO("Feedback engaged");
  }else if(command.compare("reset_angle")==0){
    //prevAngle = curAngle = 0;
    kalmanStabilizationCycles = 0;
    ROS_INFO("Angle Reset");
  }else if(command.compare("produce_tempo") ==0){
    //Listening to this topic to switch between two modalities
    engageFeedback = true;
    ROS_INFO("Engaged Feedback");
  } 
}

int main( int argc, char** argv )
{

  ros::init(argc, argv, "online_feedback");
  ros::NodeHandle n;
  ros::Rate r(1000);
  ros::Publisher motor_values_pub = n.advertise<haptic_base::PutterValues>("putter_motor_values", 100);
  initializeKalmanFilter();
  //motor_values_pubPred = n.advertise<geometry_msgs::Vector3>("angle_prediction", 100);
  //ros::Publisher status_pub = n.advertise<std_msgs::Bool>("putter_engage", 10);
  //ros::Subscriber sub = n.subscribe("/imu",100,imuCB);
  ros::Subscriber sub = n.subscribe("/putt_rpy",100,rpyCB);
  ros::Subscriber sub2 = n.subscribe("/golf_fb_commands",100,commandsCB);
  stopMotors();
  //Int iterator for the vector

  ros::Time startTime = ros::Time::now();
  
  while (ros::ok())
  {
    
    motor_values_pub.publish(val);
    
    ros::spinOnce();
    r.sleep();

  }
}

