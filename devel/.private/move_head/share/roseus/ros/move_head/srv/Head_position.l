;; Auto-generated. Do not edit!


(when (boundp 'move_head::Head_position)
  (if (not (find-package "MOVE_HEAD"))
    (make-package "MOVE_HEAD"))
  (shadow 'Head_position (find-package "MOVE_HEAD")))
(unless (find-package "MOVE_HEAD::HEAD_POSITION")
  (make-package "MOVE_HEAD::HEAD_POSITION"))
(unless (find-package "MOVE_HEAD::HEAD_POSITIONREQUEST")
  (make-package "MOVE_HEAD::HEAD_POSITIONREQUEST"))
(unless (find-package "MOVE_HEAD::HEAD_POSITIONRESPONSE")
  (make-package "MOVE_HEAD::HEAD_POSITIONRESPONSE"))

(in-package "ROS")





(defclass move_head::Head_positionRequest
  :super ros::object
  :slots (_HeadYaw _HeadPitch ))

(defmethod move_head::Head_positionRequest
  (:init
   (&key
    ((:HeadYaw __HeadYaw) 0.0)
    ((:HeadPitch __HeadPitch) 0.0)
    )
   (send-super :init)
   (setq _HeadYaw (float __HeadYaw))
   (setq _HeadPitch (float __HeadPitch))
   self)
  (:HeadYaw
   (&optional __HeadYaw)
   (if __HeadYaw (setq _HeadYaw __HeadYaw)) _HeadYaw)
  (:HeadPitch
   (&optional __HeadPitch)
   (if __HeadPitch (setq _HeadPitch __HeadPitch)) _HeadPitch)
  (:serialization-length
   ()
   (+
    ;; float64 _HeadYaw
    8
    ;; float64 _HeadPitch
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _HeadYaw
       (sys::poke _HeadYaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _HeadPitch
       (sys::poke _HeadPitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _HeadYaw
     (setq _HeadYaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _HeadPitch
     (setq _HeadPitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass move_head::Head_positionResponse
  :super ros::object
  :slots (_result ))

(defmethod move_head::Head_positionResponse
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

(defclass move_head::Head_position
  :super ros::object
  :slots ())

(setf (get move_head::Head_position :md5sum-) "c55b3b2c584945fab7834a7633541610")
(setf (get move_head::Head_position :datatype-) "move_head/Head_position")
(setf (get move_head::Head_position :request) move_head::Head_positionRequest)
(setf (get move_head::Head_position :response) move_head::Head_positionResponse)

(defmethod move_head::Head_positionRequest
  (:response () (instance move_head::Head_positionResponse :init)))

(setf (get move_head::Head_positionRequest :md5sum-) "c55b3b2c584945fab7834a7633541610")
(setf (get move_head::Head_positionRequest :datatype-) "move_head/Head_positionRequest")
(setf (get move_head::Head_positionRequest :definition-)
      "# yaw desired and pitch desired rotation 
float64 HeadYaw
float64 HeadPitch
---
# movement result
bool result
")

(setf (get move_head::Head_positionResponse :md5sum-) "c55b3b2c584945fab7834a7633541610")
(setf (get move_head::Head_positionResponse :datatype-) "move_head/Head_positionResponse")
(setf (get move_head::Head_positionResponse :definition-)
      "# yaw desired and pitch desired rotation 
float64 HeadYaw
float64 HeadPitch
---
# movement result
bool result
")



(provide :move_head/Head_position "c55b3b2c584945fab7834a7633541610")


