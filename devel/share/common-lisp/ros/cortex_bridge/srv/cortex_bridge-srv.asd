
(cl:in-package :asdf)

(defsystem "cortex_bridge-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "cortexSetOrigin" :depends-on ("_package_cortexSetOrigin"))
    (:file "_package_cortexSetOrigin" :depends-on ("_package"))
  ))