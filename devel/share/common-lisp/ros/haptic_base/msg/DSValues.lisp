; Auto-generated. Do not edit!


(cl:in-package haptic_base-msg)


;//! \htmlinclude DSValues.msg.html

(cl:defclass <DSValues> (roslisp-msg-protocol:ros-message)
  ((ds_dur
    :reader ds_dur
    :initarg :ds_dur
    :type cl:real
    :initform 0)
   (ds_angle
    :reader ds_angle
    :initarg :ds_angle
    :type cl:fixnum
    :initform 0)
   (ds_entry_angle
    :reader ds_entry_angle
    :initarg :ds_entry_angle
    :type cl:fixnum
    :initform 0)
   (ds_start_time
    :reader ds_start_time
    :initarg :ds_start_time
    :type cl:real
    :initform 0))
)

(cl:defclass DSValues (<DSValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DSValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DSValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haptic_base-msg:<DSValues> is deprecated: use haptic_base-msg:DSValues instead.")))

(cl:ensure-generic-function 'ds_dur-val :lambda-list '(m))
(cl:defmethod ds_dur-val ((m <DSValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:ds_dur-val is deprecated.  Use haptic_base-msg:ds_dur instead.")
  (ds_dur m))

(cl:ensure-generic-function 'ds_angle-val :lambda-list '(m))
(cl:defmethod ds_angle-val ((m <DSValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:ds_angle-val is deprecated.  Use haptic_base-msg:ds_angle instead.")
  (ds_angle m))

(cl:ensure-generic-function 'ds_entry_angle-val :lambda-list '(m))
(cl:defmethod ds_entry_angle-val ((m <DSValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:ds_entry_angle-val is deprecated.  Use haptic_base-msg:ds_entry_angle instead.")
  (ds_entry_angle m))

(cl:ensure-generic-function 'ds_start_time-val :lambda-list '(m))
(cl:defmethod ds_start_time-val ((m <DSValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haptic_base-msg:ds_start_time-val is deprecated.  Use haptic_base-msg:ds_start_time instead.")
  (ds_start_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DSValues>) ostream)
  "Serializes a message object of type '<DSValues>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'ds_dur)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'ds_dur) (cl:floor (cl:slot-value msg 'ds_dur)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ds_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ds_entry_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'ds_start_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'ds_start_time) (cl:floor (cl:slot-value msg 'ds_start_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DSValues>) istream)
  "Deserializes a message object of type '<DSValues>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ds_dur) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ds_angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ds_entry_angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ds_start_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DSValues>)))
  "Returns string type for a message object of type '<DSValues>"
  "haptic_base/DSValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DSValues)))
  "Returns string type for a message object of type 'DSValues"
  "haptic_base/DSValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DSValues>)))
  "Returns md5sum for a message object of type '<DSValues>"
  "6adcc043e40096395efe95f2a02fadce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DSValues)))
  "Returns md5sum for a message object of type 'DSValues"
  "6adcc043e40096395efe95f2a02fadce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DSValues>)))
  "Returns full string definition for message of type '<DSValues>"
  (cl:format cl:nil "duration ds_dur~%int16 ds_angle~%int16 ds_entry_angle~%time ds_start_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DSValues)))
  "Returns full string definition for message of type 'DSValues"
  (cl:format cl:nil "duration ds_dur~%int16 ds_angle~%int16 ds_entry_angle~%time ds_start_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DSValues>))
  (cl:+ 0
     8
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DSValues>))
  "Converts a ROS message object to a list"
  (cl:list 'DSValues
    (cl:cons ':ds_dur (ds_dur msg))
    (cl:cons ':ds_angle (ds_angle msg))
    (cl:cons ':ds_entry_angle (ds_entry_angle msg))
    (cl:cons ':ds_start_time (ds_start_time msg))
))
