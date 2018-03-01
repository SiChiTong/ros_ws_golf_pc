;; Auto-generated. Do not edit!


(when (boundp 'ros_start::Rt1Sensor)
  (if (not (find-package "ROS_START"))
    (make-package "ROS_START"))
  (shadow 'Rt1Sensor (find-package "ROS_START")))
(unless (find-package "ROS_START::RT1SENSOR")
  (make-package "ROS_START::RT1SENSOR"))

(in-package "ROS")
;;//! \htmlinclude Rt1Sensor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_start::Rt1Sensor
  :super ros::object
  :slots (_accel _handle _velocity ))

(defmethod ros_start::Rt1Sensor
  (:init
   (&key
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    ((:handle __handle) (instance geometry_msgs::Wrench :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _accel __accel)
   (setq _handle __handle)
   (setq _velocity __velocity)
   self)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:handle
   (&rest __handle)
   (if (keywordp (car __handle))
       (send* _handle __handle)
     (progn
       (if __handle (setq _handle (car __handle)))
       _handle)))
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
    ;; geometry_msgs/Wrench _handle
    (send _handle :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Wrench _handle
       (send _handle :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Wrench _handle
     (send _handle :deserialize buf ptr-) (incf ptr- (send _handle :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get ros_start::Rt1Sensor :md5sum-) "c7cab7112c2414c7aa38d0d3d47179d8")
(setf (get ros_start::Rt1Sensor :datatype-) "ros_start/Rt1Sensor")
(setf (get ros_start::Rt1Sensor :definition-)
      "geometry_msgs/Accel accel
geometry_msgs/Wrench handle
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
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :ros_start/Rt1Sensor "c7cab7112c2414c7aa38d0d3d47179d8")


