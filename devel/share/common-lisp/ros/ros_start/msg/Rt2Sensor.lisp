; Auto-generated. Do not edit!


(cl:in-package ros_start-msg)


;//! \htmlinclude Rt2Sensor.msg.html

(cl:defclass <Rt2Sensor> (roslisp-msg-protocol:ros-message)
  ((accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Rt2Sensor (<Rt2Sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rt2Sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rt2Sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_start-msg:<Rt2Sensor> is deprecated: use ros_start-msg:Rt2Sensor instead.")))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <Rt2Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_start-msg:accel-val is deprecated.  Use ros_start-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Rt2Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_start-msg:velocity-val is deprecated.  Use ros_start-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rt2Sensor>) ostream)
  "Serializes a message object of type '<Rt2Sensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rt2Sensor>) istream)
  "Deserializes a message object of type '<Rt2Sensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rt2Sensor>)))
  "Returns string type for a message object of type '<Rt2Sensor>"
  "ros_start/Rt2Sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rt2Sensor)))
  "Returns string type for a message object of type 'Rt2Sensor"
  "ros_start/Rt2Sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rt2Sensor>)))
  "Returns md5sum for a message object of type '<Rt2Sensor>"
  "2491e1f415bd2e4546b770ef2b167077")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rt2Sensor)))
  "Returns md5sum for a message object of type 'Rt2Sensor"
  "2491e1f415bd2e4546b770ef2b167077")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rt2Sensor>)))
  "Returns full string definition for message of type '<Rt2Sensor>"
  (cl:format cl:nil "geometry_msgs/Accel accel~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rt2Sensor)))
  "Returns full string definition for message of type 'Rt2Sensor"
  (cl:format cl:nil "geometry_msgs/Accel accel~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rt2Sensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rt2Sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'Rt2Sensor
    (cl:cons ':accel (accel msg))
    (cl:cons ':velocity (velocity msg))
))
