; Auto-generated. Do not edit!


(cl:in-package detection_srv-srv)


;//! \htmlinclude Detector-request.msg.html

(cl:defclass <Detector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Detector-request (<Detector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection_srv-srv:<Detector-request> is deprecated: use detection_srv-srv:Detector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detector-request>) ostream)
  "Serializes a message object of type '<Detector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detector-request>) istream)
  "Deserializes a message object of type '<Detector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detector-request>)))
  "Returns string type for a service object of type '<Detector-request>"
  "detection_srv/DetectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detector-request)))
  "Returns string type for a service object of type 'Detector-request"
  "detection_srv/DetectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detector-request>)))
  "Returns md5sum for a message object of type '<Detector-request>"
  "39d6292ea712a13252ebdb5470ba0086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detector-request)))
  "Returns md5sum for a message object of type 'Detector-request"
  "39d6292ea712a13252ebdb5470ba0086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detector-request>)))
  "Returns full string definition for message of type '<Detector-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detector-request)))
  "Returns full string definition for message of type 'Detector-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Detector-request
))
;//! \htmlinclude Detector-response.msg.html

(cl:defclass <Detector-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Detector-response (<Detector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection_srv-srv:<Detector-response> is deprecated: use detection_srv-srv:Detector-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <Detector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection_srv-srv:objects-val is deprecated.  Use detection_srv-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detector-response>) ostream)
  "Serializes a message object of type '<Detector-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detector-response>) istream)
  "Deserializes a message object of type '<Detector-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detector-response>)))
  "Returns string type for a service object of type '<Detector-response>"
  "detection_srv/DetectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detector-response)))
  "Returns string type for a service object of type 'Detector-response"
  "detection_srv/DetectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detector-response>)))
  "Returns md5sum for a message object of type '<Detector-response>"
  "39d6292ea712a13252ebdb5470ba0086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detector-response)))
  "Returns md5sum for a message object of type 'Detector-response"
  "39d6292ea712a13252ebdb5470ba0086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detector-response>)))
  "Returns full string definition for message of type '<Detector-response>"
  (cl:format cl:nil "string[] objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detector-response)))
  "Returns full string definition for message of type 'Detector-response"
  (cl:format cl:nil "string[] objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detector-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Detector-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Detector)))
  'Detector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Detector)))
  'Detector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detector)))
  "Returns string type for a service object of type '<Detector>"
  "detection_srv/Detector")