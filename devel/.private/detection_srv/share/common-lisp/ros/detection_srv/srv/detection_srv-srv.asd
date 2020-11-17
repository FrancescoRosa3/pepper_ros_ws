
(cl:in-package :asdf)

(defsystem "detection_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Detector" :depends-on ("_package_Detector"))
    (:file "_package_Detector" :depends-on ("_package"))
  ))