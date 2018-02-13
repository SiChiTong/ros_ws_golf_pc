
(cl:in-package :asdf)

(defsystem "haptic_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DSValues" :depends-on ("_package_DSValues"))
    (:file "_package_DSValues" :depends-on ("_package"))
    (:file "PWMValues" :depends-on ("_package_PWMValues"))
    (:file "_package_PWMValues" :depends-on ("_package"))
    (:file "PWMValues16" :depends-on ("_package_PWMValues16"))
    (:file "_package_PWMValues16" :depends-on ("_package"))
    (:file "PutterValues" :depends-on ("_package_PutterValues"))
    (:file "_package_PutterValues" :depends-on ("_package"))
  ))