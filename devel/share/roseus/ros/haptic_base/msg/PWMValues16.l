;; Auto-generated. Do not edit!


(when (boundp 'haptic_base::PWMValues16)
  (if (not (find-package "HAPTIC_BASE"))
    (make-package "HAPTIC_BASE"))
  (shadow 'PWMValues16 (find-package "HAPTIC_BASE")))
(unless (find-package "HAPTIC_BASE::PWMVALUES16")
  (make-package "HAPTIC_BASE::PWMVALUES16"))

(in-package "ROS")
;;//! \htmlinclude PWMValues16.msg.html


(defclass haptic_base::PWMValues16
  :super ros::object
  :slots (_pwm_values ))

(defmethod haptic_base::PWMValues16
  (:init
   (&key
    ((:pwm_values __pwm_values) (make-array 16 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _pwm_values __pwm_values)
   self)
  (:pwm_values
   (&optional __pwm_values)
   (if __pwm_values (setq _pwm_values __pwm_values)) _pwm_values)
  (:serialization-length
   ()
   (+
    ;; int16[16] _pwm_values
    (* 2    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[16] _pwm_values
     (dotimes (i 16)
       (write-word (elt _pwm_values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[16] _pwm_values
   (dotimes (i (length _pwm_values))
     (setf (elt _pwm_values i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get haptic_base::PWMValues16 :md5sum-) "21fd2457fe29da615fb66ec76d0b748c")
(setf (get haptic_base::PWMValues16 :datatype-) "haptic_base/PWMValues16")
(setf (get haptic_base::PWMValues16 :definition-)
      "int16[16] pwm_values

")



(provide :haptic_base/PWMValues16 "21fd2457fe29da615fb66ec76d0b748c")


