;; Auto-generated. Do not edit!


(when (boundp 'pepper_talk::Say)
  (if (not (find-package "PEPPER_TALK"))
    (make-package "PEPPER_TALK"))
  (shadow 'Say (find-package "PEPPER_TALK")))
(unless (find-package "PEPPER_TALK::SAY")
  (make-package "PEPPER_TALK::SAY"))
(unless (find-package "PEPPER_TALK::SAYREQUEST")
  (make-package "PEPPER_TALK::SAYREQUEST"))
(unless (find-package "PEPPER_TALK::SAYRESPONSE")
  (make-package "PEPPER_TALK::SAYRESPONSE"))

(in-package "ROS")





(defclass pepper_talk::SayRequest
  :super ros::object
  :slots (_message ))

(defmethod pepper_talk::SayRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pepper_talk::SayResponse
  :super ros::object
  :slots (_result ))

(defmethod pepper_talk::SayResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pepper_talk::Say
  :super ros::object
  :slots ())

(setf (get pepper_talk::Say :md5sum-) "744b6fa2f5c40325431e2e62fe3a175f")
(setf (get pepper_talk::Say :datatype-) "pepper_talk/Say")
(setf (get pepper_talk::Say :request) pepper_talk::SayRequest)
(setf (get pepper_talk::Say :response) pepper_talk::SayResponse)

(defmethod pepper_talk::SayRequest
  (:response () (instance pepper_talk::SayResponse :init)))

(setf (get pepper_talk::SayRequest :md5sum-) "744b6fa2f5c40325431e2e62fe3a175f")
(setf (get pepper_talk::SayRequest :datatype-) "pepper_talk/SayRequest")
(setf (get pepper_talk::SayRequest :definition-)
      "string message
---
bool result
")

(setf (get pepper_talk::SayResponse :md5sum-) "744b6fa2f5c40325431e2e62fe3a175f")
(setf (get pepper_talk::SayResponse :datatype-) "pepper_talk/SayResponse")
(setf (get pepper_talk::SayResponse :definition-)
      "string message
---
bool result
")



(provide :pepper_talk/Say "744b6fa2f5c40325431e2e62fe3a175f")


