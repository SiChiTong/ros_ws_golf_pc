#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Vector3.h>
#include <angles/angles.h>
#include <tf/transform_broadcaster.h>
#include <sensor_msgs/Imu.h>
#include <math.h>

#define PI 3.14159265359
#define RAD2DEG 57.295779513

geometry_msgs::Quaternion data;
geometry_msgs::Vector3 eular;

//ros::Publisher eular_pub;
ros::Publisher rpy_pub;
void qt2eular(geometry_msgs::Quaternion qt)
{
	double x = qt.x;
	double y = qt.y;
	double z = qt.z;
	double w = qt.w;

	double x2 = qt.x*qt.x;
	double y2 = qt.y*qt.y;
	double z2 = qt.z*qt.z;
	double w2 = qt.w*qt.w;

	double xy = qt.x*qt.y;
	double xz = qt.x*qt.z;
	double yz = qt.y*qt.z;
	double wx = qt.w*qt.x;
	double wy = qt.w*qt.y;
	double wz = qt.w*qt.z;

	double m00 = 1. - (2. * y2) - (2. * z2);
	double m01 = (2. * xy) - (2. * wz);
	double m10 = (2. * xy) + (2. * wz);
	double m11 = 1. - (2. * x2) - (2. * z2);
	double m20 = (2. * xz) - (2. * wy);
	double m21 = (2. * yz) + (2. * wx);
	double m22 = 1. - (2. * x2) - (2. * y2);
	
	//ROS_INFO("m21 = %f, approx. = %f", m21, abs(m21)-1.);
	if (fabs(m21 - 1.) < 1.e-5) {
		eular.x = PI / 2.;
		eular.y = 0.;
		eular.z = atan2(m10,m00);
	}else if (fabs(m21 + 1.) < 1.e-5) {
		eular.x = -PI / 2.;
		eular.y = 0.;
		eular.z = atan2(m10,m00);
	}else {
		eular.x = asin(-m21);
		eular.y = atan2(m20,m22);
		eular.z = atan2(m01,m11);
	}
	eular.x *= RAD2DEG;
	eular.y *= RAD2DEG;
	eular.z *= RAD2DEG;
	//ROS_INFO("x=%f, y=%f, z=%f",eular.x, eular.y, eular.z);
	//eular_pub.publish(eular);
}

void qtCallback(const geometry_msgs::Quaternion::ConstPtr& qt)
{
	data.x = qt->x;
	data.y = qt->y;
	data.z = qt->z;
	data.w = qt->w;
	qt2eular(data);
	//ROS_INFO("aaa");
}

void imuCallback(const sensor_msgs::Imu::ConstPtr& imu)
{
	data.x = imu->orientation.x;
	data.y = imu->orientation.y;
	data.z = imu->orientation.z;
	data.w = imu->orientation.w;

	double roll, pitch, yaw;
    tf::Quaternion quat;
    tf::quaternionMsgToTF(data,quat);
    tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);
    geometry_msgs::Vector3  rpy;
    rpy.x = roll*RAD2DEG;
    rpy.y = pitch*RAD2DEG;
    rpy.z = yaw*RAD2DEG;
    rpy_pub.publish(rpy);
	
	//qt2eular(data);
	//ROS_INFO("aaa");
}


void multiQt(geometry_msgs::Quaternion *orientation, int i)
{
	geometry_msgs::Quaternion wq, axis;
	if (i == 0) {
		axis.x = 0.;
		axis.y = 0.;
		axis.z = 0.;
		axis.w = 1.;
	}else if (i == 1) {
		axis.x = 0.0;
  		axis.y = 0.0;
  		axis.z = 1.0 * sin(0.5 * PI * 0.5);
  		axis.w = cos(0.5 * PI * 0.5);
	}else {
		axis.x = 0.0;
  		axis.y = 1.0 * sin(0.5 * -PI * 0.5);
  		axis.z = 0.0;
  		axis.w = cos(0.5 * -PI * 0.5);
	}

	wq.x = axis.w*orientation->x+axis.x*orientation->w-axis.y*orientation->z+axis.z*orientation->y;
	wq.y = axis.w*orientation->y+axis.x*orientation->z+axis.y*orientation->w-axis.z*orientation->x;
	wq.z = axis.w*orientation->z-axis.x*orientation->y+axis.y*orientation->x+axis.z*orientation->w;
	wq.w = axis.w*orientation->w-axis.x*orientation->x-axis.y*orientation->y-axis.z*orientation->z; 
	*orientation = wq; 
}

int main( int argc, char** argv )
{
  ros::init(argc, argv, "basic_shapes");
  ros::NodeHandle n;
  ros::Rate r(200);
  ros::Publisher marker_pub = n.advertise<visualization_msgs::MarkerArray>("visualization_marker", 10);
  rpy_pub = n.advertise<geometry_msgs::Vector3>("putt_rpy", 10);
  //eular_pub = n.advertise<geometry_msgs::Vector3>("eular", 10);
  //ros::Subscriber sub = n.subscribe("qt", 3, qtCallback);
  ros::Subscriber sub = n.subscribe("imu", 100, imuCallback);
  uint32_t shape = visualization_msgs::Marker::ARROW;
  while (ros::ok())
  {
    visualization_msgs::MarkerArray axis;
    
	

    axis.markers.resize(3);
    for (int i=0; i<3; i++) {
    	axis.markers[i].header.frame_id = "/my_frame";
    	axis.markers[i].header.stamp = ros::Time::now();

    	axis.markers[i].ns = "basic_shapes";
    	axis.markers[i].id = i;

    	axis.markers[i].type = shape;


    	axis.markers[i].action = visualization_msgs::Marker::ADD;

    	axis.markers[i].pose.position.x = 0;
    	axis.markers[i].pose.position.y = 0;
    	axis.markers[i].pose.position.z = 0;
    	axis.markers[i].pose.orientation.x = data.x;
    	axis.markers[i].pose.orientation.y = data.y;
    	axis.markers[i].pose.orientation.z = data.z;
    	axis.markers[i].pose.orientation.w = data.w;
	multiQt(&axis.markers[i].pose.orientation, i);

    	axis.markers[i].scale.x = 1.2;
    	axis.markers[i].scale.y = 0.4;
    	axis.markers[i].scale.z = 0.4;

    	axis.markers[i].color.r = 0.0f;
    	axis.markers[i].color.g = 0.0f;
    	axis.markers[i].color.b = 0.0f;
    	axis.markers[i].color.a = 1.0;

	if (i == 0)
		axis.markers[i].color.r = 1.0f;
	else if (i == 1)
		axis.markers[i].color.g = 1.0f;
	else
		axis.markers[i].color.b = 1.0f;

    	axis.markers[i].lifetime = ros::Duration();
    }
    marker_pub.publish(axis);
    
    ros::spinOnce();
    r.sleep();
  }
}

