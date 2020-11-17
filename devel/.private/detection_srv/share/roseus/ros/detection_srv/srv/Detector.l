;; Auto-generated. Do not edit!


(when (boundp 'detection_srv::Detector)
  (if (not (find-package "DETECTION_SRV"))
    (make-package "DETECTION_SRV"))
  (shadow 'Detector (find-package "DETECTION_SRV")))
(unless (find-package "DETECTION_SRV::DETECTOR")
  (make-package "DETECTION_SRV::DETECTOR"))
(unless (find-package "DETECTION_SRV::DETECTORREQUEST")
  (make-package "DETECTION_SRV::DETECTORREQUEST"))
(unless (find-package "DETECTION_SRV::DETECTORRESPONSE")
  (make-package "DETECTION_SRV::DETECTORRESPONSE"))

(in-package "ROS")





(defclass detection_srv::DetectorRequest
  :super ros::object
  :slots ())

(defmethod detection_srv::DetectorRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass detection_srv::DetectorResponse
  :super ros::object
  :slots (_objects ))

(defmethod detection_srv::DetectorResponse
  (:init
   (&key
    ((:objects __objects) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&optional __objects)
   (if __objects (setq _objects __objects)) _objects)
  (:serialization-length
   ()
   (+
    ;; string[] _objects
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _objects)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _objects i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass detection_srv::Detector
  :super ros::object
  :slots ())

(setf (get detection_srv::Detector :md5sum-) "39d6292ea712a13252ebdb5470ba0086")
(setf (get detection_srv::Detector :datatype-) "detection_srv/Detector")
(setf (get detection_srv::Detector :request) detection_srv::DetectorRequest)
(setf (get detection_srv::Detector :response) detection_srv::DetectorResponse)

(defmethod detection_srv::DetectorRequest
  (:response () (instance detection_srv::DetectorResponse :init)))

(setf (get detection_srv::DetectorRequest :md5sum-) "39d6292ea712a13252ebdb5470ba0086")
(setf (get detection_srv::DetectorRequest :datatype-) "detection_srv/DetectorRequest")
(setf (get detection_srv::DetectorRequest :definition-)
      "---
string[] objects
")

(setf (get detection_srv::DetectorResponse :md5sum-) "39d6292ea712a13252ebdb5470ba0086")
(setf (get detection_srv::DetectorResponse :datatype-) "detection_srv/DetectorResponse")
(setf (get detection_srv::DetectorResponse :definition-)
      "---
string[] objects
")



(provide :detection_srv/Detector "39d6292ea712a13252ebdb5470ba0086")


