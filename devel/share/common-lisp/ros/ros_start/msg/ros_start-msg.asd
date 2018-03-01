
(cl:in-package :asdf)

(defsystem "ros_start-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Rt1Sensor" :depends-on ("_package_Rt1Sensor"))
    (:file "_package_Rt1Sensor" :depends-on ("_package"))
    (:file "Rt2Sensor" :depends-on ("_package_Rt2Sensor"))
    (:file "_package_Rt2Sensor" :depends-on ("_package"))
  ))