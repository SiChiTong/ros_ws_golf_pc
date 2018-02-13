;; Auto-generated. Do not edit!


(when (boundp 'haptic_base::PutterValues)
  (if (not (find-package "HAPTIC_BASE"))
    (make-package "HAPTIC_BASE"))
  (shadow 'PutterValues (find-package "HAPTIC_BASE")))
(unless (find-package "HAPTIC_BASE::PUTTERVALUES")
  (make-package "HAPTIC_BASE::PUTTERVALUES"))

(in-package "ROS")
;;//! \htmlinclude PutterValues.msg.html


(defclass haptic_base::PutterValues
  :super ros::object
  :slots (_duty_values _interval_values ))

(defmethod haptic_base::PutterValues
  (:init
   (&key
    ((:duty_values __duty_values) (make-array 4 :initial-element 0 :element-type :integer))
    ((:interval_values __interval_values) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _duty_values __duty_values)
   (setq _interval_values __interval_values)
   self)
  (:duty_values
   (&optional __duty_values)
   (if __duty_values (setq _duty_values __duty_values)) _duty_values)
  (:interval_values
   (&optional __interval_values)
   (if __interval_values (setq _interval_values __interval_values)) _interval_values)
  (:serialization-length
   ()
   (+
    ;; int16[4] _duty_values
    (* 2    4)
    ;; float64[4] _interval_values
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[4] _duty_values
     (dotimes (i 4)
       (write-word (elt _duty_values i) s)
       )
     ;; float64[4] _interval_values
     (dotimes (i 4)
       (sys::poke (elt _interval_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[4] _duty_values
   (dotimes (i (length _duty_values))
     (setf (elt _duty_values i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; float64[4] _interval_values
   (dotimes (i (length _interval_values))
     (setf (elt _interval_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get haptic_base::PutterValues :md5sum-) "deae48c081a898661e9df48b433768e7")
(setf (get haptic_base::PutterValues :datatype-) "haptic_base/PutterValues")
(setf (get haptic_base::PutterValues :definition-)
      "int16[4] duty_values
float64[4] interval_values

")



(provide :haptic_base/PutterValues "deae48c081a898661e9df48b433768e7")


