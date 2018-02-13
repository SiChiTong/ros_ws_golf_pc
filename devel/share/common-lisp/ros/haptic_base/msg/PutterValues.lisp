; Auto-generated. Do not edit!


(cl:in-package haptic_base-msg)


;//! \htmlinclude PutterValues.msg.html

(cl:defclass <PutterValues> (roslisp-msg-protocol:ros-message)
  ((duty_values
    :reader duty_values
    :initarg :duty_values
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (interval_values
    :reader interval_values
    :initarg :interval_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PutterValues (<PutterValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PutterValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PutterValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haptic_base-msg:<PutterValues> is deprecated: use haptic_base-msg:PutterValues instead.")))

(cl:ensure-generic-function 'duty_values-val :lambda-list '(m))
(cl:defmethod duty_values-val ((m <PutterValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:duty_values-val is deprecated.  Use haptic_base-msg:duty_values instead.")
  (duty_values m))

(cl:ensure-generic-function 'interval_values-val :lambda-list '(m))
(cl:defmethod interval_values-val ((m <PutterValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:interval_values-val is deprecated.  Use haptic_base-msg:interval_values instead.")
  (interval_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PutterValues>) ostream)
  "Serializes a message object of type '<PutterValues>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'duty_values))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'interval_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PutterValues>) istream)
  "Deserializes a message object of type '<PutterValues>"
  (cl:setf (cl:slot-value msg 'duty_values) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'duty_values)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'interval_values) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'interval_values)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PutterValues>)))
  "Returns string type for a message object of type '<PutterValues>"
  "haptic_base/PutterValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PutterValues)))
  "Returns string type for a message object of type 'PutterValues"
  "haptic_base/PutterValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PutterValues>)))
  "Returns md5sum for a message object of type '<PutterValues>"
  "deae48c081a898661e9df48b433768e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PutterValues)))
  "Returns md5sum for a message object of type 'PutterValues"
  "deae48c081a898661e9df48b433768e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PutterValues>)))
  "Returns full string definition for message of type '<PutterValues>"
  (cl:format cl:nil "int16[4] duty_values~%float64[4] interval_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PutterValues)))
  "Returns full string definition for message of type 'PutterValues"
  (cl:format cl:nil "int16[4] duty_values~%float64[4] interval_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PutterValues>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'duty_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'interval_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PutterValues>))
  "Converts a ROS message object to a list"
  (cl:list 'PutterValues
    (cl:cons ':duty_values (duty_values msg))
    (cl:cons ':interval_values (interval_values msg))
))
