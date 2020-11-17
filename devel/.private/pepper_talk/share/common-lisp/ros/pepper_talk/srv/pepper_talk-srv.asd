
(cl:in-package :asdf)

(defsystem "pepper_talk-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Say" :depends-on ("_package_Say"))
    (:file "_package_Say" :depends-on ("_package"))
  ))