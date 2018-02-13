; Auto-generated. Do not edit!


(cl:in-package cortex_bridge-srv)


;//! \htmlinclude cortexSetOrigin-request.msg.html

(cl:defclass <cortexSetOrigin-request> (roslisp-msg-protocol:ros-message)
  ((subject_name
    :reader subject_name
    :initarg :subject_name
    :type cl:string
    :initform "")
   (segment_name
    :reader segment_name
    :initarg :segment_name
    :type cl:string
    :initform "")
   (n_measurements
    :reader n_measurements
    :initarg :n_measurements
    :type cl:integer
    :initform 0)
   (z_offset
    :reader z_offset
    :initarg :z_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass cortexSetOrigin-request (<cortexSetOrigin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cortexSetOrigin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cortexSetOrigin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cortex_bridge-srv:<cortexSetOrigin-request> is deprecated: use cortex_bridge-srv:cortexSetOrigin-request instead.")))

(cl:ensure-generic-function 'subject_name-val :lambda-list '(m))
(cl:defmethod subject_name-val ((m <cortexSetOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cortex_bridge-srv:subject_name-val is deprecated.  Use cortex_bridge-srv:subject_name instead.")
  (subject_name m))

(cl:ensure-generic-function 'segment_name-val :lambda-list '(m))
(cl:defmethod segment_name-val ((m <cortexSetOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cortex_bridge-srv:segment_name-val is deprecated.  Use cortex_bridge-srv:segment_name instead.")
  (segment_name m))

(cl:ensure-generic-function 'n_measurements-val :lambda-list '(m))
(cl:defmethod n_measurements-val ((m <cortexSetOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cortex_bridge-srv:n_measurements-val is deprecated.  Use cortex_bridge-srv:n_measurements instead.")
  (n_measurements m))

(cl:ensure-generic-function 'z_offset-val :lambda-list '(m))
(cl:defmethod z_offset-val ((m <cortexSetOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cortex_bridge-srv:z_offset-val is deprecated.  Use cortex_bridge-srv:z_offset instead.")
  (z_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cortexSetOrigin-request>) ostream)
  "Serializes a message object of type '<cortexSetOrigin-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'segment_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'segment_name))
  (cl:let* ((signed (cl:slot-value msg 'n_measurements)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cortexSetOrigin-request>) istream)
  "Deserializes a message object of type '<cortexSetOrigin-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'segment_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n_measurements) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_offset) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cortexSetOrigin-request>)))
  "Returns string type for a service object of type '<cortexSetOrigin-request>"
  "cortex_bridge/cortexSetOriginRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cortexSetOrigin-request)))
  "Returns string type for a service object of type 'cortexSetOrigin-request"
  "cortex_bridge/cortexSetOriginRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cortexSetOrigin-request>)))
  "Returns md5sum for a message object of type '<cortexSetOrigin-request>"
  "541ae416aa7d89272790d7e1bcc39770")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cortexSetOrigin-request)))
  "Returns md5sum for a message object of type 'cortexSetOrigin-request"
  "541ae416aa7d89272790d7e1bcc39770")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cortexSetOrigin-request>)))
  "Returns full string definition for message of type '<cortexSetOrigin-request>"
  (cl:format cl:nil "string subject_name~%string segment_name~%int32 n_measurements~%float64 z_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cortexSetOrigin-request)))
  "Returns full string definition for message of type 'cortexSetOrigin-request"
  (cl:format cl:nil "string subject_name~%string segment_name~%int32 n_measurements~%float64 z_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cortexSetOrigin-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_name))
     4 (cl:length (cl:slot-value msg 'segment_name))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cortexSetOrigin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cortexSetOrigin-request
    (cl:cons ':subject_name (subject_name msg))
    (cl:cons ':segment_name (segment_name msg))
    (cl:cons ':n_measurements (n_measurements msg))
    (cl:cons ':z_offset (z_offset msg))
))
;//! \htmlinclude cortexSetOrigin-response.msg.html

(cl:defclass <cortexSetOrigin-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass cortexSetOrigin-response (<cortexSetOrigin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cortexSetOrigin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cortexSetOrigin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cortex_bridge-srv:<cortexSetOrigin-response> is deprecated: use cortex_bridge-srv:cortexSetOrigin-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <cortexSetOrigin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cortex_bridge-srv:success-val is deprecated.  Use cortex_bridge-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <cortexSetOrigin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cortex_bridge-srv:pose-val is deprecated.  Use cortex_bridge-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cortexSetOrigin-response>) ostream)
  "Serializes a message object of type '<cortexSetOrigin-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cortexSetOrigin-response>) istream)
  "Deserializes a message object of type '<cortexSetOrigin-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cortexSetOrigin-response>)))
  "Returns string type for a service object of type '<cortexSetOrigin-response>"
  "cortex_bridge/cortexSetOriginResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cortexSetOrigin-response)))
  "Returns string type for a service object of type 'cortexSetOrigin-response"
  "cortex_bridge/cortexSetOriginResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cortexSetOrigin-response>)))
  "Returns md5sum for a message object of type '<cortexSetOrigin-response>"
  "541ae416aa7d89272790d7e1bcc39770")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cortexSetOrigin-response)))
  "Returns md5sum for a message object of type 'cortexSetOrigin-response"
  "541ae416aa7d89272790d7e1bcc39770")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cortexSetOrigin-response>)))
  "Returns full string definition for message of type '<cortexSetOrigin-response>"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cortexSetOrigin-response)))
  "Returns full string definition for message of type 'cortexSetOrigin-response"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cortexSetOrigin-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cortexSetOrigin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cortexSetOrigin-response
    (cl:cons ':success (success msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cortexSetOrigin)))
  'cortexSetOrigin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cortexSetOrigin)))
  'cortexSetOrigin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cortexSetOrigin)))
  "Returns string type for a service object of type '<cortexSetOrigin>"
  "cortex_bridge/cortexSetOrigin")