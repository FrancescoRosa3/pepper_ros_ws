
(cl:in-package :asdf)

(defsystem "move_head-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Head_position" :depends-on ("_package_Head_position"))
    (:file "_package_Head_position" :depends-on ("_package"))
  ))