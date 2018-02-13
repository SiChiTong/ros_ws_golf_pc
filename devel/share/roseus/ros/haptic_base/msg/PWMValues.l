;; Auto-generated. Do not edit!


(when (boundp 'haptic_base::PWMValues)
  (if (not (find-package "HAPTIC_BASE"))
    (make-package "HAPTIC_BASE"))
  (shadow 'PWMValues (find-package "HAPTIC_BASE")))
(unless (find-package "HAPTIC_BASE::PWMVALUES")
  (make-package "HAPTIC_BASE::PWMVALUES"))

(in-package "ROS")
;;//! \htmlinclude PWMValues.msg.html


(defclass haptic_base::PWMValues
  :super ros::object
  :slots (_pwm0 _pwm1 _pwm2 _pwm3 _pwm4 _pwm5 ))

(defmethod haptic_base::PWMValues
  (:init
   (&key
    ((:pwm0 __pwm0) 0)
    ((:pwm1 __pwm1) 0)
    ((:pwm2 __pwm2) 0)
    ((:pwm3 __pwm3) 0)
    ((:pwm4 __pwm4) 0)
    ((:pwm5 __pwm5) 0)
    )
   (send-super :init)
   (setq _pwm0 (round __pwm0))
   (setq _pwm1 (round __pwm1))
   (setq _pwm2 (round __pwm2))
   (setq _pwm3 (round __pwm3))
   (setq _pwm4 (round __pwm4))
   (setq _pwm5 (round __pwm5))
   self)
  (:pwm0
   (&optional __pwm0)
   (if __pwm0 (setq _pwm0 __pwm0)) _pwm0)
  (:pwm1
   (&optional __pwm1)
   (if __pwm1 (setq _pwm1 __pwm1)) _pwm1)
  (:pwm2
   (&optional __pwm2)
   (if __pwm2 (setq _pwm2 __pwm2)) _pwm2)
  (:pwm3
   (&optional __pwm3)
   (if __pwm3 (setq _pwm3 __pwm3)) _pwm3)
  (:pwm4
   (&optional __pwm4)
   (if __pwm4 (setq _pwm4 __pwm4)) _pwm4)
  (:pwm5
   (&optional __pwm5)
   (if __pwm5 (setq _pwm5 __pwm5)) _pwm5)
  (:serialization-length
   ()
   (+
    ;; int16 _pwm0
    2
    ;; int16 _pwm1
    2
    ;; int16 _pwm2
    2
    ;; int16 _pwm3
    2
    ;; int16 _pwm4
    2
    ;; int16 _pwm5
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _pwm0
       (write-word _pwm0 s)
     ;; int16 _pwm1
       (write-word _pwm1 s)
     ;; int16 _pwm2
       (write-word _pwm2 s)
     ;; int16 _pwm3
       (write-word _pwm3 s)
     ;; int16 _pwm4
       (write-word _pwm4 s)
     ;; int16 _pwm5
       (write-word _pwm5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _pwm0
     (setq _pwm0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwm1
     (setq _pwm1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwm2
     (setq _pwm2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwm3
     (setq _pwm3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwm4
     (setq _pwm4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwm5
     (setq _pwm5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get haptic_base::PWMValues :md5sum-) "c8509d9fcec4bd7898a6f72820d65bc0")
(setf (get haptic_base::PWMValues :datatype-) "haptic_base/PWMValues")
(setf (get haptic_base::PWMValues :definition-)
      "int16 pwm0
int16 pwm1
int16 pwm2
int16 pwm3
int16 pwm4
int16 pwm5

")



(provide :haptic_base/PWMValues "c8509d9fcec4bd7898a6f72820d65bc0")


