
(cl:in-package :asdf)

(defsystem "robot_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "accelerometr" :depends-on ("_package_accelerometr"))
    (:file "_package_accelerometr" :depends-on ("_package"))
    (:file "contact" :depends-on ("_package_contact"))
    (:file "_package_contact" :depends-on ("_package"))
    (:file "coord" :depends-on ("_package_coord"))
    (:file "_package_coord" :depends-on ("_package"))
    (:file "fsrInput" :depends-on ("_package_fsrInput"))
    (:file "_package_fsrInput" :depends-on ("_package"))
    (:file "newtactile" :depends-on ("_package_newtactile"))
    (:file "_package_newtactile" :depends-on ("_package"))
    (:file "rigid" :depends-on ("_package_rigid"))
    (:file "_package_rigid" :depends-on ("_package"))
    (:file "state" :depends-on ("_package_state"))
    (:file "_package_state" :depends-on ("_package"))
    (:file "tactile" :depends-on ("_package_tactile"))
    (:file "_package_tactile" :depends-on ("_package"))
  ))