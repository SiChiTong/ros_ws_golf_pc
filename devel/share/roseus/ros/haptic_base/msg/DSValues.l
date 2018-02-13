;; Auto-generated. Do not edit!


(when (boundp 'haptic_base::DSValues)
  (if (not (find-package "HAPTIC_BASE"))
    (make-package "HAPTIC_BASE"))
  (shadow 'DSValues (find-package "HAPTIC_BASE")))
(unless (find-package "HAPTIC_BASE::DSVALUES")
  (make-package "HAPTIC_BASE::DSVALUES"))

(in-package "ROS")
;;//! \htmlinclude DSValues.msg.html


(defclass haptic_base::DSValues
  :super ros::object
  :slots (_ds_dur _ds_angle _ds_entry_angle _ds_start_time ))

(defmethod haptic_base::DSValues
  (:init
   (&key
    ((:ds_dur __ds_dur) (instance ros::time :init))
    ((:ds_angle __ds_angle) 0)
    ((:ds_entry_angle __ds_entry_angle) 0)
    ((:ds_start_time __ds_start_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _ds_dur __ds_dur)
   (setq _ds_angle (round __ds_angle))
   (setq _ds_entry_angle (round __ds_entry_angle))
   (setq _ds_start_time __ds_start_time)
   self)
  (:ds_dur
   (&optional __ds_dur)
   (if __ds_dur (setq _ds_dur __ds_dur)) _ds_dur)
  (:ds_angle
   (&optional __ds_angle)
   (if __ds_angle (setq _ds_angle __ds_angle)) _ds_angle)
  (:ds_entry_angle
   (&optional __ds_entry_angle)
   (if __ds_entry_angle (setq _ds_entry_angle __ds_entry_angle)) _ds_entry_angle)
  (:ds_start_time
   (&optional __ds_start_time)
   (if __ds_start_time (setq _ds_start_time __ds_start_time)) _ds_start_time)
  (:serialization-length
   ()
   (+
    ;; duration _ds_dur
    8
    ;; int16 _ds_angle
    2
    ;; int16 _ds_entry_angle
    2
    ;; time _ds_start_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _ds_dur
       (write-long (send _ds_dur :sec) s) (write-long (send _ds_dur :nsec) s)
     ;; int16 _ds_angle
       (write-word _ds_angle s)
     ;; int16 _ds_entry_angle
       (write-word _ds_entry_angle s)
     ;; time _ds_start_time
       (write-long (send _ds_start_time :sec) s) (write-long (send _ds_start_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _ds_dur
     (send _ds_dur :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _ds_dur :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _ds_angle
     (setq _ds_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ds_entry_angle
     (setq _ds_entry_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _ds_start_time
     (send _ds_start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _ds_start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get haptic_base::DSValues :md5sum-) "6adcc043e40096395efe95f2a02fadce")
(setf (get haptic_base::DSValues :datatype-) "haptic_base/DSValues")
(setf (get haptic_base::DSValues :definition-)
      "duration ds_dur
int16 ds_angle
int16 ds_entry_angle
time ds_start_time


")



(provide :haptic_base/DSValues "6adcc043e40096395efe95f2a02fadce")


