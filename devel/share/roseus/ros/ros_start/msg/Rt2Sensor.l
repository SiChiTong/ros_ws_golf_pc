;; Auto-generated. Do not edit!


(when (boundp 'ros_start::Rt2Sensor)
  (if (not (find-package "ROS_START"))
    (make-package "ROS_START"))
  (shadow 'Rt2Sensor (find-package "ROS_START")))
(unless (find-package "ROS_START::RT2SENSOR")
  (make-package "ROS_START::RT2SENSOR"))

(in-package "ROS")
;;//! \htmlinclude Rt2Sensor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_start::Rt2Sensor
  :super ros::object
  :slots (_accel _velocity ))

(defmethod ros_start::Rt2Sensor
  (:init
   (&key
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _accel __accel)
   (setq _velocity __velocity)
   self)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Accel _accel
    (send _accel :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get ros_start::Rt2Sensor :md5sum-) "2491e1f415bd2e4546b770ef2b167077")
(setf (get ros_start::Rt2Sensor :datatype-) "ros_start/Rt2Sensor")
(setf (get ros_start::Rt2Sensor :definition-)
      "geometry_msgs/Accel accel
geometry_msgs/Twist velocity

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :ros_start/Rt2Sensor "2491e1f415bd2e4546b770ef2b167077")


