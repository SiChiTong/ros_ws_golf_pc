; Auto-generated. Do not edit!


(cl:in-package ros_start-msg)


;//! \htmlinclude Rt1Sensor.msg.html

(cl:defclass <Rt1Sensor> (roslisp-msg-protocol:ros-message)
  ((accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (handle
    :reader handle
    :initarg :handle
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Rt1Sensor (<Rt1Sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rt1Sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rt1Sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_start-msg:<Rt1Sensor> is deprecated: use ros_start-msg:Rt1Sensor instead.")))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <Rt1Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_start-msg:accel-val is deprecated.  Use ros_start-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <Rt1Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_start-msg:handle-val is deprecated.  Use ros_start-msg:handle instead.")
  (handle m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Rt1Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_start-msg:velocity-val is deprecated.  Use ros_start-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rt1Sensor>) ostream)
  "Serializes a message object of type '<Rt1Sensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'handle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rt1Sensor>) istream)
  "Deserializes a message object of type '<Rt1Sensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'handle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rt1Sensor>)))
  "Returns string type for a message object of type '<Rt1Sensor>"
  "ros_start/Rt1Sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rt1Sensor)))
  "Returns string type for a message object of type 'Rt1Sensor"
  "ros_start/Rt1Sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rt1Sensor>)))
  "Returns md5sum for a message object of type '<Rt1Sensor>"
  "c7cab7112c2414c7aa38d0d3d47179d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rt1Sensor)))
  "Returns md5sum for a message object of type 'Rt1Sensor"
  "c7cab7112c2414c7aa38d0d3d47179d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rt1Sensor>)))
  "Returns full string definition for message of type '<Rt1Sensor>"
  (cl:format cl:nil "geometry_msgs/Accel accel~%geometry_msgs/Wrench handle~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rt1Sensor)))
  "Returns full string definition for message of type 'Rt1Sensor"
  (cl:format cl:nil "geometry_msgs/Accel accel~%geometry_msgs/Wrench handle~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rt1Sensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'handle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rt1Sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'Rt1Sensor
    (cl:cons ':accel (accel msg))
    (cl:cons ':handle (handle msg))
    (cl:cons ':velocity (velocity msg))
))
