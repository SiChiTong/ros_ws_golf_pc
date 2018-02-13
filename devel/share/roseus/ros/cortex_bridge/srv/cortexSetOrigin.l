;; Auto-generated. Do not edit!


(when (boundp 'cortex_bridge::cortexSetOrigin)
  (if (not (find-package "CORTEX_BRIDGE"))
    (make-package "CORTEX_BRIDGE"))
  (shadow 'cortexSetOrigin (find-package "CORTEX_BRIDGE")))
(unless (find-package "CORTEX_BRIDGE::CORTEXSETORIGIN")
  (make-package "CORTEX_BRIDGE::CORTEXSETORIGIN"))
(unless (find-package "CORTEX_BRIDGE::CORTEXSETORIGINREQUEST")
  (make-package "CORTEX_BRIDGE::CORTEXSETORIGINREQUEST"))
(unless (find-package "CORTEX_BRIDGE::CORTEXSETORIGINRESPONSE")
  (make-package "CORTEX_BRIDGE::CORTEXSETORIGINRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cortex_bridge::cortexSetOriginRequest
  :super ros::object
  :slots (_subject_name _segment_name _n_measurements _z_offset ))

(defmethod cortex_bridge::cortexSetOriginRequest
  (:init
   (&key
    ((:subject_name __subject_name) "")
    ((:segment_name __segment_name) "")
    ((:n_measurements __n_measurements) 0)
    ((:z_offset __z_offset) 0.0)
    )
   (send-super :init)
   (setq _subject_name (string __subject_name))
   (setq _segment_name (string __segment_name))
   (setq _n_measurements (round __n_measurements))
   (setq _z_offset (float __z_offset))
   self)
  (:subject_name
   (&optional __subject_name)
   (if __subject_name (setq _subject_name __subject_name)) _subject_name)
  (:segment_name
   (&optional __segment_name)
   (if __segment_name (setq _segment_name __segment_name)) _segment_name)
  (:n_measurements
   (&optional __n_measurements)
   (if __n_measurements (setq _n_measurements __n_measurements)) _n_measurements)
  (:z_offset
   (&optional __z_offset)
   (if __z_offset (setq _z_offset __z_offset)) _z_offset)
  (:serialization-length
   ()
   (+
    ;; string _subject_name
    4 (length _subject_name)
    ;; string _segment_name
    4 (length _segment_name)
    ;; int32 _n_measurements
    4
    ;; float64 _z_offset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_name
       (write-long (length _subject_name) s) (princ _subject_name s)
     ;; string _segment_name
       (write-long (length _segment_name) s) (princ _segment_name s)
     ;; int32 _n_measurements
       (write-long _n_measurements s)
     ;; float64 _z_offset
       (sys::poke _z_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _segment_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segment_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _n_measurements
     (setq _n_measurements (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _z_offset
     (setq _z_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cortex_bridge::cortexSetOriginResponse
  :super ros::object
  :slots (_success _pose ))

(defmethod cortex_bridge::cortexSetOriginResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _pose __pose)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass cortex_bridge::cortexSetOrigin
  :super ros::object
  :slots ())

(setf (get cortex_bridge::cortexSetOrigin :md5sum-) "541ae416aa7d89272790d7e1bcc39770")
(setf (get cortex_bridge::cortexSetOrigin :datatype-) "cortex_bridge/cortexSetOrigin")
(setf (get cortex_bridge::cortexSetOrigin :request) cortex_bridge::cortexSetOriginRequest)
(setf (get cortex_bridge::cortexSetOrigin :response) cortex_bridge::cortexSetOriginResponse)

(defmethod cortex_bridge::cortexSetOriginRequest
  (:response () (instance cortex_bridge::cortexSetOriginResponse :init)))

(setf (get cortex_bridge::cortexSetOriginRequest :md5sum-) "541ae416aa7d89272790d7e1bcc39770")
(setf (get cortex_bridge::cortexSetOriginRequest :datatype-) "cortex_bridge/cortexSetOriginRequest")
(setf (get cortex_bridge::cortexSetOriginRequest :definition-)
      "string subject_name
string segment_name
int32 n_measurements
float64 z_offset
---
bool success
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get cortex_bridge::cortexSetOriginResponse :md5sum-) "541ae416aa7d89272790d7e1bcc39770")
(setf (get cortex_bridge::cortexSetOriginResponse :datatype-) "cortex_bridge/cortexSetOriginResponse")
(setf (get cortex_bridge::cortexSetOriginResponse :definition-)
      "string subject_name
string segment_name
int32 n_measurements
float64 z_offset
---
bool success
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :cortex_bridge/cortexSetOrigin "541ae416aa7d89272790d7e1bcc39770")


