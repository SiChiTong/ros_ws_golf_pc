; Auto-generated. Do not edit!


(cl:in-package haptic_base-msg)


;//! \htmlinclude PWMValues.msg.html

(cl:defclass <PWMValues> (roslisp-msg-protocol:ros-message)
  ((pwm0
    :reader pwm0
    :initarg :pwm0
    :type cl:fixnum
    :initform 0)
   (pwm1
    :reader pwm1
    :initarg :pwm1
    :type cl:fixnum
    :initform 0)
   (pwm2
    :reader pwm2
    :initarg :pwm2
    :type cl:fixnum
    :initform 0)
   (pwm3
    :reader pwm3
    :initarg :pwm3
    :type cl:fixnum
    :initform 0)
   (pwm4
    :reader pwm4
    :initarg :pwm4
    :type cl:fixnum
    :initform 0)
   (pwm5
    :reader pwm5
    :initarg :pwm5
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PWMValues (<PWMValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haptic_base-msg:<PWMValues> is deprecated: use haptic_base-msg:PWMValues instead.")))

(cl:ensure-generic-function 'pwm0-val :lambda-list '(m))
(cl:defmethod pwm0-val ((m <PWMValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm0-val is deprecated.  Use haptic_base-msg:pwm0 instead.")
  (pwm0 m))

(cl:ensure-generic-function 'pwm1-val :lambda-list '(m))
(cl:defmethod pwm1-val ((m <PWMValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm1-val is deprecated.  Use haptic_base-msg:pwm1 instead.")
  (pwm1 m))

(cl:ensure-generic-function 'pwm2-val :lambda-list '(m))
(cl:defmethod pwm2-val ((m <PWMValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm2-val is deprecated.  Use haptic_base-msg:pwm2 instead.")
  (pwm2 m))

(cl:ensure-generic-function 'pwm3-val :lambda-list '(m))
(cl:defmethod pwm3-val ((m <PWMValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm3-val is deprecated.  Use haptic_base-msg:pwm3 instead.")
  (pwm3 m))

(cl:ensure-generic-function 'pwm4-val :lambda-list '(m))
(cl:defmethod pwm4-val ((m <PWMValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm4-val is deprecated.  Use haptic_base-msg:pwm4 instead.")
  (pwm4 m))

(cl:ensure-generic-function 'pwm5-val :lambda-list '(m))
(cl:defmethod pwm5-val ((m <PWMValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm5-val is deprecated.  Use haptic_base-msg:pwm5 instead.")
  (pwm5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMValues>) ostream)
  "Serializes a message object of type '<PWMValues>"
  (cl:let* ((signed (cl:slot-value msg 'pwm0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pwm1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pwm2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pwm3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pwm4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pwm5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMValues>) istream)
  "Deserializes a message object of type '<PWMValues>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwm0) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwm1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwm2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwm3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwm4) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwm5) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMValues>)))
  "Returns string type for a message object of type '<PWMValues>"
  "haptic_base/PWMValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMValues)))
  "Returns string type for a message object of type 'PWMValues"
  "haptic_base/PWMValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMValues>)))
  "Returns md5sum for a message object of type '<PWMValues>"
  "c8509d9fcec4bd7898a6f72820d65bc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMValues)))
  "Returns md5sum for a message object of type 'PWMValues"
  "c8509d9fcec4bd7898a6f72820d65bc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMValues>)))
  "Returns full string definition for message of type '<PWMValues>"
  (cl:format cl:nil "int16 pwm0~%int16 pwm1~%int16 pwm2~%int16 pwm3~%int16 pwm4~%int16 pwm5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMValues)))
  "Returns full string definition for message of type 'PWMValues"
  (cl:format cl:nil "int16 pwm0~%int16 pwm1~%int16 pwm2~%int16 pwm3~%int16 pwm4~%int16 pwm5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMValues>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMValues>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMValues
    (cl:cons ':pwm0 (pwm0 msg))
    (cl:cons ':pwm1 (pwm1 msg))
    (cl:cons ':pwm2 (pwm2 msg))
    (cl:cons ':pwm3 (pwm3 msg))
    (cl:cons ':pwm4 (pwm4 msg))
    (cl:cons ':pwm5 (pwm5 msg))
))
