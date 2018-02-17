#include <ros/ros.h>
#include <math.h>
#include <haptic_base/PutterValues.h>
#include <geometry_msgs/Point.h>
#include <std_msgs/String.h>
#include <utility>
#include <fstream>
#include <limits>
#define PI 3.14159265359
#define RAD2DEG 57.295779513 

haptic_base::PutterValues val;

ros::Publisher pwmValues;

void readAcc(std::string name, 
  std::vector<std::pair<double, geometry_msgs::Point> > &v, 
  std::pair <int, double> &minValue,
  std::pair <int, double> &maxValue,
  std::pair <int, double> &hitPeak)
  {
  //File reading vars
  std::ifstream file ( name.c_str() );
  std::string value;
  //Time shifting var
  double startT = -1;
  //Peak detection vars
  //std::pair <int, double> minValue (-1, DBL_MAX), maxValue(-1,0), hitPeak(-1, 0);
  double previousValue =0;
  int numSamples = 0;
  bool foundPeaks = false;
  
  while ( file.good() )
  {
    getline ( file, value);
    size_t pos = 0;
    std::string token;
    std::string delimiter = ",";
    int paramNum = 0;
    std::pair<double, geometry_msgs::Point> par; 
    bool validPair = false;
    do{
    
      pos = value.find(delimiter);
      if (pos != std::string::npos)
        token = value.substr(0, pos);
      else
        token = value;
      value.erase(0, pos + delimiter.length());
      if (startT < 0 && paramNum == 0)
      {
        startT = atof(token.c_str());
        std::cout<<"Actualizando tiempo"<<std::endl;
      }
      switch(paramNum){
        case 0:
          par.first = atof(token.c_str()) - startT; 
        break;
        case 1:
          par.second.x = atof(token.c_str());
        break;
        case 2:
          par.second.y = atof(token.c_str()); 
          //First, are we in the absolute peak? If yes, then print or something
          
          if (numSamples > 0  && previousValue > 0 && (fabs((par.second.y-previousValue)*100/previousValue) > 500))
          {
            //std::cout << numSamples << " "<<par.second.y<<" "<<previousValue << " "<<abs((par.second.y-previousValue)*100/previousValue)<<std::endl;
            //Impact Peak detected
            foundPeaks = true;
            hitPeak.first = numSamples;
            hitPeak.second = par.second.y;
          }
          previousValue = par.second.y;
    
          if ((minValue.first == -1 || minValue.second > par.second.y) && !foundPeaks){
            minValue.first  = numSamples;
            minValue.second = par.second.y;
          }
          if ((maxValue.first == -1 || maxValue.second <  par.second.y) && !foundPeaks){
            maxValue.first  = numSamples;
            maxValue.second = par.second.y;
          }
        
        break;
        case 3:
          par.second.z = atof(token.c_str());
          validPair = true; 
        break;
      }
      paramNum++;
    }while ( pos != std::string::npos);
    if (validPair){
      v.push_back(par); 
    }
    numSamples++;
  }
}

void readGyro(std::string name, 
  std::vector<std::pair<double, geometry_msgs::Point> > &v, 
  std::pair <int, double> &minValue,
  std::pair <int, double> &maxValue,
  std::pair <int, double> &hitPeak)
  {
  //File reading vars
  std::ifstream file ( name.c_str() );
  std::string value;
  //Time shifting var
  double startT = -1;
  //Peak detection vars
  //std::pair <int, double> minValue (-1, DBL_MAX), maxValue(-1,0), hitPeak(-1, 0);
  double previousValue =0;
  int numSamples = 0;
  bool foundPeaks = false;
  
  while ( file.good() )
  {
    getline ( file, value);
    size_t pos = 0;
    std::string token;
    std::string delimiter = ",";
    int paramNum = 0;
    std::pair<double, geometry_msgs::Point> par; 
    bool validPair = false;
    do{
    
      pos = value.find(delimiter);
      if (pos != std::string::npos)
        token = value.substr(0, pos);
      else
        token = value;

      value.erase(0, pos + delimiter.length());
      if (startT < 0 && paramNum == 0)
      {
        startT = atof(token.c_str());
        std::cout<<"Actualizando tiempo"<<std::endl;
      }
      switch(paramNum){
        case 0:
          par.first = atof(token.c_str()) - startT; 
        break;
        case 1:
        break;
        case 4:
          par.second.x = atof(token.c_str());
          
          if (numSamples > 0  && previousValue > 0 && (fabs((par.second.x-previousValue)*100/previousValue) > 500))
          {
            foundPeaks = false;
            hitPeak.first = numSamples;
            hitPeak.second = par.second.x;
          }
          previousValue = par.second.x;
    
          if ((minValue.first == -1 || minValue.second > par.second.x) && !foundPeaks){
            minValue.first  = numSamples;
            minValue.second = par.second.x;
          }
          if ((maxValue.first == -1 || maxValue.second <  par.second.x) && !foundPeaks){
            maxValue.first  = numSamples;
            maxValue.second = par.second.x;
          }
        break;
        case 2:
          par.second.y = atof(token.c_str()); 
          
        break;
        case 3:
          par.second.z = atof(token.c_str());
          validPair = true; 
        break;

      }
      paramNum++;
    }while ( pos != std::string::npos);
    if (validPair){
      v.push_back(par); 
    }
    numSamples++;
  }  
}

void readProcessedFile(std::string name, 
  std::vector<std::pair<double, geometry_msgs::Point> > &v,
  std::pair <int, double> &startPoint, 
  std::pair <int, double> &minValue,
  std::pair <int, double> &maxValue,
  std::pair <int, double> &hitPeak)
  {
  //File reading vars
  std::ifstream file ( name.c_str() );
  std::string value;
  //Time shifting var
  double startT = -1;
  double previousValueAcc =0;
  double previousValuePos =0;
  int numSamples = 0;
  enum PuttPhase {IDLE, BS, DS, FT};
  PuttPhase phase = IDLE;
  int currentSign = 0;
  int prevSign = 0;
  int counterSign = 0;

  while ( file.good() )
  {
    getline ( file, value);
    size_t pos = 0;
    std::string token;
    std::string delimiter = ",";
    int paramNum = 0;
    std::pair<double, geometry_msgs::Point> par; 
    bool validPair = false;
    
    do{
      pos = value.find(delimiter);
      if (pos != std::string::npos)
        token = value.substr(0, pos);
      else
        token = value;

      value.erase(0, pos + delimiter.length());
      if (startT < 0 && paramNum == 0)
      {
        startT = atof(token.c_str());
        std::cout<<"Actualizando tiempo"<<std::endl;
      }
      switch(paramNum){
        case 0:
          par.first = atof(token.c_str()) - startT; 
        break;
        case 1:
        {
          par.second.y = atof(token.c_str());
          float diff = par.second.y - previousValuePos;
            if (diff == 0)
              currentSign = 0;
            else if (diff<0)
              currentSign = -1;
            else if (diff > 0)
              currentSign = 1;

          switch(phase)
          {
            case IDLE:
              if (numSamples > 0){
                //Conditions: 1. Same sign, less than zero (decreasing)
                //&& ( fabs((diff)*100.0/(float)previousValuePos) > 5.0)
                if (currentSign == prevSign && currentSign < 0 )
                {
                  counterSign++;
                }  
                else{
                  counterSign=0;
                }

                //Conditions met 20 times -> change phase
                //numSamples-counterSign > 10 &&
                if ( counterSign >= 40)
                {
                  //ROS_INFO(" %d %f",numSamples,fabs(v[numSamples-counterSign].second.y*100/par.second.y));
                  if (fabs(v[numSamples-counterSign].second.y - par.second.y) > 4.0){
                    startPoint.first = numSamples-counterSign;
                    startPoint.second = v[numSamples-counterSign].second.y;
                    phase = BS;
                    ROS_INFO("Idle->BS at %d", numSamples-counterSign);
                  }else{
                    counterSign = 0;
                  }
                  }
              }
            break;
            case BS:
                if (currentSign != prevSign && currentSign > 0 )
                {
                  minValue.first = numSamples;
                  minValue.second = par.second.y;
                  phase = DS;
                  ROS_INFO("BS->DS at %d", numSamples);  
                }     
            break;
            case DS:
              if (previousValuePos <0 && par.second.y > 0)
                {
                  hitPeak.first = numSamples;
                  hitPeak.second = par.second.y;
                  phase = FT;
                  ROS_INFO("DS->FT at %d", numSamples);
                }
            break;
            case FT:
            {
              if ((maxValue.first == -1 || maxValue.second <  par.second.y) ){
                maxValue.first  = numSamples;
                maxValue.second = par.second.y;
              }
            }

          } 
                    
         
          previousValuePos = par.second.y;
          prevSign = currentSign;
        }
        break;
        case 2:
          par.second.x = atof(token.c_str());
          
          /*if (numSamples > 0  && previousValueAcc > 0 && (fabs((par.second.x-previousValueAcc)*100/previousValueAcc) > 500))
          {
            //std::cout << "Acc "<< numSamples << " "<<par.second.x<<" "<<previousValueAcc << std::endl;
            //foundPeaks = true;
            //hitPeak.first = numSamples;
            //hitPeak.second = par.second.x;
          }
          previousValueAcc = par.second.x;
          */
          validPair = true; 
        break;

      }
      paramNum++;
    }while ( pos != std::string::npos);
    if (validPair){
      v.push_back(par); 
    }
    numSamples++;
  }
}

int calDuty(double amplitude)
{
  return (2358 - (int)(sqrt(1.54E-4 - 1.053E-5*amplitude) / 5.264E-6));
}

double mapValues(double x, double fl, double fh, double tl, double th){
  //return std::min(th, std::max(tl,(((x-fl)*((th-tl)/(fh-fl)))+tl)));
  return (((x-fl)*((th-tl)/(fh-fl)))+tl);
}


void stopMotors(){
  for(int i = 0; i < 4; i ++){
    val.duty_values[i]=0;
    val.interval_values[i]=0.5;
  }
}
void updateVibration(double ac, double min, double max, double offset){
  double dutyCycle = 0;
  geometry_msgs::Point punto;
  punto.z = ac*500;
  stopMotors();
  if (ac-offset < 0){
    dutyCycle = mapValues(fabs(ac-offset), 0, fabs(min), 14.5, 0);
    double interval =  mapValues(abs(ac-offset), 0, fabs(min), 0.01, 0.03);
    dutyCycle = calDuty(dutyCycle);
    val.duty_values[0]=dutyCycle;
    val.interval_values[0] = interval;
    punto.x = dutyCycle;
    punto.y = interval*100000;
  }else if (ac-offset > 0){
    dutyCycle = mapValues(fabs(ac-offset), 0, fabs(max), 14.5, 0);
    double interval =  mapValues(abs(ac-offset), 0, fabs(max), 0.01, 0.03);
    dutyCycle = calDuty(dutyCycle);
    val.duty_values[2]=dutyCycle;
    val.interval_values[2] = interval;
    punto.x = dutyCycle;
    punto.y = interval*100000;
  }else{
    val.duty_values[0]=calDuty(14.5);
    val.interval_values[0] = 0.01;
    val.duty_values[2]=calDuty(14.5);
    val.interval_values[2] = 0.01;
    punto.x = 2358;
    punto.y = 0.01*100000;
  }
  pwmValues.publish(punto);
}

void ballHitVibration(){
  
  for(int i = 0; i < 4; i ++){
    val.duty_values[i]=2048;
    val.interval_values[i]=0.08;
  }
}

/*void commandsCB(const std_msgs::String::ConstPtr& msg){
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
  }else if(command.compare("reset_angle")==0){
    //prevAngle = curAngle = 0;
    kalmanStabilizationCycles = 0;
    ROS_INFO("Angle Reset");
  }  
}*/

int main( int argc, char** argv )
{
  ros::init(argc, argv, "putter_motor_changer");
  ros::NodeHandle n;
  ros::Rate r(1000);
  ros::Publisher marker_pub = n.advertise<haptic_base::PutterValues>("putter_motor_values", 100);
  pwmValues = n.advertise<geometry_msgs::Point>("pwmcalc", 100);

  //Accelerometer and Gyro Vectors, prerecorded
  std::vector<std::pair<double, geometry_msgs::Point> > acc, gyro, posAcc;
  //Characteristics of the curves, minumum and maximum for Yacc and Xgyro

  std::pair <int, double> minValueGyro (-1, DBL_MAX), maxValueGyro(-1,0), hitPeakGyro(-1, 0), startPoint (-1, DBL_MAX);
  std::pair <int, double> minValueAcc (-1, DBL_MAX), maxValueAcc(-1,0), hitPeakAcc(-1, 0);
  //Fill the vectors with data from files
  //readAcc("/home/raven/ros_ws/src/lra_test_accel/imu_data/acc.csv", acc, minValueAcc, maxValueAcc, hitPeakAcc);
  //readGyro("/home/raven/ros_ws/src/lra_test_accel/imu_data/gyro.csv", gyro, minValueGyro, maxValueGyro, hitPeakGyro);
  //readProcessedFile("/home/raven/ros_ws/src/lra_test_accel/imu_data/Anthonny4mTrimmed.csv", posAcc, startPoint, minValueGyro, maxValueGyro, hitPeakGyro);
  readProcessedFile("/home/raven/ros_ws/src/lra_test_accel/imu_data/Anthonny4mTrimmed.csv", posAcc, startPoint, minValueGyro, maxValueGyro, hitPeakGyro);

  std::cout<<"Start/Min/Hit/Max " << startPoint.first << "/" <<minValueGyro.first<< "/" << hitPeakGyro.first<< "/" << maxValueGyro.first <<std::endl;
  std::cout<<"Tempo " << (posAcc[minValueGyro.first].first - posAcc[startPoint.first].first)/1000000.0<<"/"<<(posAcc[hitPeakGyro.first].first - posAcc[minValueGyro.first].first)/1000000.0<<"="<<std::endl;
  

  //Initialize the message to be sent to RPi
  stopMotors();
  //Int iterator for the vector
  int curIndex = 0;

  ros::Time startTime = ros::Time::now();
  while (ros::ok())
  {
    double elapsed = (ros::Time::now() - startTime).toNSec();
    while (curIndex < posAcc.size() && elapsed > posAcc[curIndex].first){
      curIndex++;
    }
    if (curIndex < posAcc.size()){
      if(curIndex >= hitPeakGyro.first && curIndex < hitPeakGyro.first + 15)
        ballHitVibration();
      else
      //posAcc[0].second.y
        updateVibration(posAcc[curIndex].second.y, minValueGyro.second, maxValueGyro.second, 0);

    }else{
      stopMotors();
      marker_pub.publish(val);
      ros::spinOnce();
      ros::Duration(2.0).sleep();
      startTime = ros::Time::now();
      curIndex = 0;
      
    }
    
    /*while (curIndex < acc.size() && elapsed > acc[curIndex].first ){
      curIndex++;
    }
    if (curIndex < 1620){
      updateVibration(acc[curIndex].second.y, minValueAcc.second, maxValueAcc.second, acc[0].second.y);  
    }else{
      stopMotors();
    }*/
    
    marker_pub.publish(val);
    ros::spinOnce();
    r.sleep();

  }
}

