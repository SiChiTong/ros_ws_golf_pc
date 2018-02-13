#include <ros/ros.h>
#include <math.h>
#include <haptic_base/PutterValues.h>
#include <geometry_msgs/Point.h>
#include <sensor_msgs/Imu.h>
#include <std_msgs/String.h>
#include <utility>
#include <limits>
#define PI 3.14159265359
#define RAD2DEG 57.295779513 

haptic_base::PutterValues val;

enum State {BACKSWING, DOWNSWING};
State curState = BACKSWING;
double prevAngle = 0;
double curAngle = 0;
double prevTime = -1;
double gyroBias = 81.285250;
double gyroScaling = 0.0175;
double desiredAngleFeedback = -20;
bool engageFeedback = true;


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

void imuCB(const sensor_msgs::Imu::ConstPtr& msg){
  double curTime = msg->header.stamp.toSec();

  if(prevTime > 0){
    curAngle = prevAngle + (msg->angular_velocity.x-gyroBias)*(curTime-prevTime)*gyroScaling;
  }
  
  if (engageFeedback && 
      prevAngle > desiredAngleFeedback && 
      curAngle <= desiredAngleFeedback){
    ballHitVibration();
    engageFeedback = false;
    ROS_INFO("Passed threshold!");
  }else{
    stopMotors();
  }

  prevTime=curTime;
  prevAngle = curAngle;
}

void commandsCB(const std_msgs::String::ConstPtr& msg){
    //Dont forget to receive the bias and send it from the APP when its changed please thanks
  std::string s = msg->data;
  
  std::string command = s.substr(0, s.find("#"));
  std::string value = s.substr(s.find("#")+1);
  
  if(command.compare("set_bias") ==0){
    gyroBias = atof(value.c_str());
    ROS_INFO("Updating bias to %s",value.c_str());
  }else if (command.compare("set_feedback_angle") ==0){
    desiredAngleFeedback = atof(value.c_str());
    ROS_INFO("Updating angle to %s",value.c_str());
  }else if(command.compare("engage_feedback")==0){
    engageFeedback = true;
    ROS_INFO("Feedback engaged");
  }  
}

int main( int argc, char** argv )
{
  ros::init(argc, argv, "online_feedback");
  ros::NodeHandle n;
  ros::Rate r(1000);
  ros::Publisher motor_values_pub = n.advertise<haptic_base::PutterValues>("putter_motor_values", 100);
  //ros::Publisher status_pub = n.advertise<std_msgs::Bool>("putter_engage", 10);
  ros::Subscriber sub = n.subscribe("/imu",100,imuCB);
  ros::Subscriber sub2 = n.subscribe("/golf_fb_commands",100,commandsCB);
  stopMotors();
  //Int iterator for the vector

  ros::Time startTime = ros::Time::now();
  while (ros::ok())
  {
   /* double elapsed = (ros::Time::now() - startTime).toNSec();
    while (curIndex < gyro.size() && elapsed > gyro[curIndex].first ){
      curIndex++;
    }
    if (curIndex < 2000){
      if (curIndex >= hitPeakAcc.first && curIndex < hitPeakAcc.first + 15)
        ballHitVibration();
      else
        updateVibration(gyro[curIndex].second.x, minValueGyro.second, maxValueGyro.second, gyro[0].second.x);

    }else{
      startTime = ros::Time::now();
      curIndex = 0;
      //stopMotors();
      
    }*/
      
  
    motor_values_pub.publish(val);
    ros::spinOnce();
    r.sleep();

  }
}

