; Auto-generated. Do not edit!


(cl:in-package move_head-srv)


;//! \htmlinclude Head_position-request.msg.html

(cl:defclass <Head_position-request> (roslisp-msg-protocol:ros-message)
  ((HeadYaw
    :reader HeadYaw
    :initarg :HeadYaw
    :type cl:float
    :initform 0.0)
   (HeadPitch
    :reader HeadPitch
    :initarg :HeadPitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass Head_position-request (<Head_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Head_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Head_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_head-srv:<Head_position-request> is deprecated: use move_head-srv:Head_position-request instead.")))

(cl:ensure-generic-function 'HeadYaw-val :lambda-list '(m))
(cl:defmethod HeadYaw-val ((m <Head_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_head-srv:HeadYaw-val is deprecated.  Use move_head-srv:HeadYaw instead.")
  (HeadYaw m))

(cl:ensure-generic-function 'HeadPitch-val :lambda-list '(m))
(cl:defmethod HeadPitch-val ((m <Head_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_head-srv:HeadPitch-val is deprecated.  Use move_head-srv:HeadPitch instead.")
  (HeadPitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Head_position-request>) ostream)
  "Serializes a message object of type '<Head_position-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'HeadYaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'HeadPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Head_position-request>) istream)
  "Deserializes a message object of type '<Head_position-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HeadYaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HeadPitch) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Head_position-request>)))
  "Returns string type for a service object of type '<Head_position-request>"
  "move_head/Head_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Head_position-request)))
  "Returns string type for a service object of type 'Head_position-request"
  "move_head/Head_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Head_position-request>)))
  "Returns md5sum for a message object of type '<Head_position-request>"
  "c55b3b2c584945fab7834a7633541610")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Head_position-request)))
  "Returns md5sum for a message object of type 'Head_position-request"
  "c55b3b2c584945fab7834a7633541610")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Head_position-request>)))
  "Returns full string definition for message of type '<Head_position-request>"
  (cl:format cl:nil "# yaw desired and pitch desired rotation ~%float64 HeadYaw~%float64 HeadPitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Head_position-request)))
  "Returns full string definition for message of type 'Head_position-request"
  (cl:format cl:nil "# yaw desired and pitch desired rotation ~%float64 HeadYaw~%float64 HeadPitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Head_position-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Head_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Head_position-request
    (cl:cons ':HeadYaw (HeadYaw msg))
    (cl:cons ':HeadPitch (HeadPitch msg))
))
;//! \htmlinclude Head_position-response.msg.html

(cl:defclass <Head_position-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Head_position-response (<Head_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Head_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Head_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_head-srv:<Head_position-response> is deprecated: use move_head-srv:Head_position-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Head_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_head-srv:result-val is deprecated.  Use move_head-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Head_position-response>) ostream)
  "Serializes a message object of type '<Head_position-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Head_position-response>) istream)
  "Deserializes a message object of type '<Head_position-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Head_position-response>)))
  "Returns string type for a service object of type '<Head_position-response>"
  "move_head/Head_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Head_position-response)))
  "Returns string type for a service object of type 'Head_position-response"
  "move_head/Head_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Head_position-response>)))
  "Returns md5sum for a message object of type '<Head_position-response>"
  "c55b3b2c584945fab7834a7633541610")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Head_position-response)))
  "Returns md5sum for a message object of type 'Head_position-response"
  "c55b3b2c584945fab7834a7633541610")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Head_position-response>)))
  "Returns full string definition for message of type '<Head_position-response>"
  (cl:format cl:nil "# movement result~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Head_position-response)))
  "Returns full string definition for message of type 'Head_position-response"
  (cl:format cl:nil "# movement result~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Head_position-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Head_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Head_position-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Head_position)))
  'Head_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Head_position)))
  'Head_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Head_position)))
  "Returns string type for a service object of type '<Head_position>"
  "move_head/Head_position")