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

//ros::Publisher pwmValues;
int pattern = 1;

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
  double previousTime=-1;
  double curDiffVel=0;
  double prevDiffVel = 0;
  int numSamples = 0;
  enum PuttPhase {IDLE, BS, DS, FT};
  PuttPhase phase = IDLE;
  int countThreshold = 40;
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
          
          if (previousTime >0)
                curDiffVel = (par.second.y - previousValuePos)/(par.first - previousTime);
              
          int curDiffVelSign = (curDiffVel>0) - (curDiffVel< 0);
          int prevDiffVelSign =(prevDiffVel>0) - (prevDiffVel< 0);

          switch(phase)
          {
            case IDLE:
              if (numSamples > 0){
                //Conditions: 1. Same sign, less than zero (decreasing)
                //&& ( fabs((diff)*100.0/(float)previousValuePos) > 5.0)
                if (curDiffVelSign == prevDiffVelSign && curDiffVelSign == -1 )
                {
                  counterSign++;

                  if ( counterSign >=countThreshold && 
                        abs(curDiffVel) > 10.0 &&
                        abs(prevDiffVel) > 10.0 &&
                        par.second.y <-2.0){
                        startPoint.first = numSamples-counterSign;
                        startPoint.second = v[numSamples-counterSign].second.y;
                        phase = BS;
                        ROS_INFO("Idle->BS at %d", numSamples-counterSign);
                    }
                }  
                else{
                  counterSign=0;
                }

                //Conditions met 20 times -> change phase
                //numSamples-counterSign > 10 &&
                /*if ( counterSign >= 40)
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
                  }*/
              }
            break;
            case BS:
                if (curDiffVelSign != prevDiffVelSign && curDiffVel >= 0 )
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
          prevDiffVel = curDiffVel;
          previousTime = par.first;

        
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
  /*geometry_msgs::Point punto;
  punto.z = ac*500;*/
  stopMotors();
  double interval = 0;
  if (ac-offset < 0){
    
    if (pattern == 1 || pattern == 2 || pattern == 5 || pattern == 6 ){
      dutyCycle = mapValues(fabs(ac-offset), 0, fabs(min), 0, 14.5); 
    }else{
      dutyCycle = mapValues(fabs(ac-offset), 0, fabs(min), 14.5, 0);  
    }

    if(pattern == 2 || pattern == 4 || pattern == 6 || pattern == 8){
      interval =  mapValues(abs(ac-offset), 0, fabs(min), 0.03, 0.01);
    }else{
      interval =  mapValues(abs(ac-offset), 0, fabs(min), 0.01, 0.03);
    }

    dutyCycle = calDuty(dutyCycle);
    val.duty_values[0]=dutyCycle;
    val.interval_values[0] = interval;
  }else if (ac-offset > 0){

    if (pattern == 1 || pattern == 2 || pattern == 5 || pattern == 6 ){
      dutyCycle = mapValues(fabs(ac-offset), 0, fabs(max), 0, 14.5); 
    }else{
      dutyCycle = mapValues(fabs(ac-offset), 0, fabs(max), 14.5, 0);  
    }

    if(pattern == 2 || pattern == 4 || pattern == 6 || pattern == 8){
      interval =  mapValues(abs(ac-offset), 0, fabs(max), 0.03, 0.01);
    }else{
      interval =  mapValues(abs(ac-offset), 0, fabs(max), 0.01, 0.03);
    }

    dutyCycle = calDuty(dutyCycle);
    val.duty_values[2]=dutyCycle;
    val.interval_values[2] = interval;
  }else{
    double intensityAt0 = 0;
    double delayAt0 = 0;

    if(pattern == 3 || pattern == 4 || pattern == 7 || pattern == 8){
      intensityAt0 = 14.5;
    }else{
      intensityAt0 = 0;
    }

    if(pattern == 1 || pattern == 3 || pattern == 5 || pattern == 7){
      delayAt0 = 0.01;
    }else{
      delayAt0 = 0.03;
    }
    val.duty_values[0]=calDuty(intensityAt0);
    val.interval_values[0] = delayAt0;
    /*val.duty_values[2]=calDuty(intensityAt0);
    val.interval_values[2] = delayAt0;*/
  }
  
}

void ballHitVibration(){
  
  for(int i = 0; i < 4; i ++){
    val.duty_values[i]=2048;
    val.interval_values[i]=0.08;
  }
}

void commandsCB(const std_msgs::String::ConstPtr& msg){
    //Dont forget to receive the bias and send it from the APP when its changed please thanks
  std::string s = msg->data;
  
  std::string command = s.substr(0, s.find("#"));
  std::string value = s.substr(s.find("#")+1);
  
  if(command.compare("produce_tempo") ==0){

  }  
}


void setParam(ros::NodeHandle *n){
 if (n->getParam("/putter_motors/pattern_number",pattern)){
    ROS_INFO("pattern number Obtained and set to %d", pattern);
  }else{
    ROS_INFO("Parameter not found, default %d", pattern);
  }

  
}


int main( int argc, char** argv )
{
  ros::init(argc, argv, "putter_motor_changer");
  ros::NodeHandle n;
  ros::Rate r(1000);
  ros::Publisher marker_pub = n.advertise<haptic_base::PutterValues>("putter_motor_values", 100);
  ros::Subscriber sub2 = n.subscribe("/golf_fb_commands",100,commandsCB);
  //pwmValues = n.advertise<geometry_msgs::Point>("pwmcalc", 100);
  setParam(&n);
  
  std::vector<std::pair<double, geometry_msgs::Point> > acc, gyro, posAcc;
  std::pair <int, double> minValueGyro (-1, DBL_MAX), maxValueGyro(-1,0), hitPeakGyro(-1, 0), startPoint (-1, DBL_MAX);
  std::pair <int, double> minValueAcc (-1, DBL_MAX), maxValueAcc(-1,0), hitPeakAcc(-1, 0);
  readProcessedFile("/home/raven/ros_ws/src/lra_test_accel/imu_data/angle4mModelBased.csv", posAcc, startPoint, minValueGyro, maxValueGyro, hitPeakGyro);

  std::cout<<"Start/Min/Hit/Max " << startPoint.first << "/" <<minValueGyro.first<< "/" << hitPeakGyro.first<< "/" << maxValueGyro.first <<std::endl;
  std::cout<<"Tempo " << (posAcc[minValueGyro.first].first - posAcc[startPoint.first].first)<<"/"<<(posAcc[hitPeakGyro.first].first - posAcc[minValueGyro.first].first)<<"="<<std::endl;
  stopMotors();
  int curIndex = 0;

  ros::Time startTime = ros::Time::now();
  while (ros::ok())
  {
    
    
  //double elapsed = (ros::Time::now() - startTime).toNSec();
    double elapsed = (ros::Time::now() - startTime).toSec();
    while (curIndex < posAcc.size() && elapsed > posAcc[curIndex].first){
      curIndex++;
    }
    if (curIndex < posAcc.size()){
      if(pattern >=5 && pattern <=8 && curIndex >= hitPeakGyro.first && curIndex < hitPeakGyro.first + 15)
        ballHitVibration();
      else
        updateVibration(posAcc[curIndex].second.y, minValueGyro.second, maxValueGyro.second, 0);

    }else{
      stopMotors();
      marker_pub.publish(val);
      ros::spinOnce();
      ros::Duration(2.0).sleep();
      startTime = ros::Time::now();
      curIndex = 0;
    }
    
    marker_pub.publish(val);
    ros::spinOnce();
    r.sleep();
  
  }


}

