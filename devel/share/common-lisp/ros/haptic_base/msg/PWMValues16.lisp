; Auto-generated. Do not edit!


(cl:in-package haptic_base-msg)


;//! \htmlinclude PWMValues16.msg.html

(cl:defclass <PWMValues16> (roslisp-msg-protocol:ros-message)
  ((pwm_values
    :reader pwm_values
    :initarg :pwm_values
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PWMValues16 (<PWMValues16>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMValues16>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMValues16)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haptic_base-msg:<PWMValues16> is deprecated: use haptic_base-msg:PWMValues16 instead.")))

(cl:ensure-generic-function 'pwm_values-val :lambda-list '(m))
(cl:defmethod pwm_values-val ((m <PWMValues16>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:pwm_values-val is deprecated.  Use haptic_base-msg:pwm_values instead.")
  (pwm_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMValues16>) ostream)
  "Serializes a message object of type '<PWMValues16>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'pwm_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMValues16>) istream)
  "Deserializes a message object of type '<PWMValues16>"
  (cl:setf (cl:slot-value msg 'pwm_values) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'pwm_values)))
    (cl:dotimes (i 16)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMValues16>)))
  "Returns string type for a message object of type '<PWMValues16>"
  "haptic_base/PWMValues16")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMValues16)))
  "Returns string type for a message object of type 'PWMValues16"
  "haptic_base/PWMValues16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMValues16>)))
  "Returns md5sum for a message object of type '<PWMValues16>"
  "21fd2457fe29da615fb66ec76d0b748c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMValues16)))
  "Returns md5sum for a message object of type 'PWMValues16"
  "21fd2457fe29da615fb66ec76d0b748c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMValues16>)))
  "Returns full string definition for message of type '<PWMValues16>"
  (cl:format cl:nil "int16[16] pwm_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMValues16)))
  "Returns full string definition for message of type 'PWMValues16"
  (cl:format cl:nil "int16[16] pwm_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMValues16>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pwm_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMValues16>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMValues16
    (cl:cons ':pwm_values (pwm_values msg))
))
