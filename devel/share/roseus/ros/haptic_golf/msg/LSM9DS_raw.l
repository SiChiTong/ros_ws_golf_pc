;; Auto-generated. Do not edit!


(when (boundp 'haptic_golf::LSM9DS_raw)
  (if (not (find-package "HAPTIC_GOLF"))
    (make-package "HAPTIC_GOLF"))
  (shadow 'LSM9DS_raw (find-package "HAPTIC_GOLF")))
(unless (find-package "HAPTIC_GOLF::LSM9DS_RAW")
  (make-package "HAPTIC_GOLF::LSM9DS_RAW"))

(in-package "ROS")
;;//! \htmlinclude LSM9DS_raw.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass haptic_golf::LSM9DS_raw
  :super ros::object
  :slots (_header _accelData _magData _gyroData _orientation ))

(defmethod haptic_golf::LSM9DS_raw
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accelData __accelData) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:magData __magData) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gyroData __gyroData) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _accelData __accelData)
   (setq _magData __magData)
   (setq _gyroData __gyroData)
   (setq _orientation __orientation)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accelData
   (&optional __accelData)
   (if __accelData (setq _accelData __accelData)) _accelData)
  (:magData
   (&optional __magData)
   (if __magData (setq _magData __magData)) _magData)
  (:gyroData
   (&optional __gyroData)
   (if __gyroData (setq _gyroData __gyroData)) _gyroData)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[3] _accelData
    (* 4    3)
    ;; float32[3] _magData
    (* 4    3)
    ;; float32[3] _gyroData
    (* 4    3)
    ;; float32[4] _orientation
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[3] _accelData
     (dotimes (i 3)
       (sys::poke (elt _accelData i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _magData
     (dotimes (i 3)
       (sys::poke (elt _magData i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _gyroData
     (dotimes (i 3)
       (sys::poke (elt _gyroData i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[3] _accelData
   (dotimes (i (length _accelData))
     (setf (elt _accelData i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _magData
   (dotimes (i (length _magData))
     (setf (elt _magData i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _gyroData
   (dotimes (i (length _gyroData))
     (setf (elt _gyroData i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get haptic_golf::LSM9DS_raw :md5sum-) "e8bdef954b5990975e7acefa1ca27db1")
(setf (get haptic_golf::LSM9DS_raw :datatype-) "haptic_golf/LSM9DS_raw")
(setf (get haptic_golf::LSM9DS_raw :definition-)
      "Header header
float32[3] accelData
float32[3] magData
float32[3] gyroData
float32[4] orientation

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

")



(provide :haptic_golf/LSM9DS_raw "e8bdef954b5990975e7acefa1ca27db1")


