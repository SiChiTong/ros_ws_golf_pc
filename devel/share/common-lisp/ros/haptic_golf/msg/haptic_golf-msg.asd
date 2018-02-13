
(cl:in-package :asdf)

(defsystem "haptic_golf-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LSM9DS_raw" :depends-on ("_package_LSM9DS_raw"))
    (:file "_package_LSM9DS_raw" :depends-on ("_package"))
  ))