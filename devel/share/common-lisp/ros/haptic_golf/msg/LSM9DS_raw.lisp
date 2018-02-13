; Auto-generated. Do not edit!


(cl:in-package haptic_golf-msg)


;//! \htmlinclude LSM9DS_raw.msg.html

(cl:defclass <LSM9DS_raw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (accelData
    :reader accelData
    :initarg :accelData
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (magData
    :reader magData
    :initarg :magData
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (gyroData
    :reader gyroData
    :initarg :gyroData
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (orientation
    :reader orientation
    :initarg :orientation
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass LSM9DS_raw (<LSM9DS_raw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LSM9DS_raw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LSM9DS_raw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haptic_golf-msg:<LSM9DS_raw> is deprecated: use haptic_golf-msg:LSM9DS_raw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LSM9DS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_golf-msg:header-val is deprecated.  Use haptic_golf-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'accelData-val :lambda-list '(m))
(cl:defmethod accelData-val ((m <LSM9DS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_golf-msg:accelData-val is deprecated.  Use haptic_golf-msg:accelData instead.")
  (accelData m))

(cl:ensure-generic-function 'magData-val :lambda-list '(m))
(cl:defmethod magData-val ((m <LSM9DS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_golf-msg:magData-val is deprecated.  Use haptic_golf-msg:magData instead.")
  (magData m))

(cl:ensure-generic-function 'gyroData-val :lambda-list '(m))
(cl:defmethod gyroData-val ((m <LSM9DS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_golf-msg:gyroData-val is deprecated.  Use haptic_golf-msg:gyroData instead.")
  (gyroData m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <LSM9DS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_golf-msg:orientation-val is deprecated.  Use haptic_golf-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LSM9DS_raw>) ostream)
  "Serializes a message object of type '<LSM9DS_raw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'accelData))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'magData))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'gyroData))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'orientation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LSM9DS_raw>) istream)
  "Deserializes a message object of type '<LSM9DS_raw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'accelData) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'accelData)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'magData) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'magData)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'gyroData) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'gyroData)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'orientation) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'orientation)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LSM9DS_raw>)))
  "Returns string type for a message object of type '<LSM9DS_raw>"
  "haptic_golf/LSM9DS_raw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LSM9DS_raw)))
  "Returns string type for a message object of type 'LSM9DS_raw"
  "haptic_golf/LSM9DS_raw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LSM9DS_raw>)))
  "Returns md5sum for a message object of type '<LSM9DS_raw>"
  "e8bdef954b5990975e7acefa1ca27db1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LSM9DS_raw)))
  "Returns md5sum for a message object of type 'LSM9DS_raw"
  "e8bdef954b5990975e7acefa1ca27db1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LSM9DS_raw>)))
  "Returns full string definition for message of type '<LSM9DS_raw>"
  (cl:format cl:nil "Header header~%float32[3] accelData~%float32[3] magData~%float32[3] gyroData~%float32[4] orientation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LSM9DS_raw)))
  "Returns full string definition for message of type 'LSM9DS_raw"
  (cl:format cl:nil "Header header~%float32[3] accelData~%float32[3] magData~%float32[3] gyroData~%float32[4] orientation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LSM9DS_raw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'accelData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'magData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gyroData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LSM9DS_raw>))
  "Converts a ROS message object to a list"
  (cl:list 'LSM9DS_raw
    (cl:cons ':header (header msg))
    (cl:cons ':accelData (accelData msg))
    (cl:cons ':magData (magData msg))
    (cl:cons ':gyroData (gyroData msg))
    (cl:cons ':orientation (orientation msg))
))
