; Auto-generated. Do not edit!


(cl:in-package naoqi_bridge_msgs-msg)


;//! \htmlinclude SpeechWithFeedbackFeedback.msg.html

(cl:defclass <SpeechWithFeedbackFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SpeechWithFeedbackFeedback (<SpeechWithFeedbackFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechWithFeedbackFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechWithFeedbackFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name naoqi_bridge_msgs-msg:<SpeechWithFeedbackFeedback> is deprecated: use naoqi_bridge_msgs-msg:SpeechWithFeedbackFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechWithFeedbackFeedback>) ostream)
  "Serializes a message object of type '<SpeechWithFeedbackFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechWithFeedbackFeedback>) istream)
  "Deserializes a message object of type '<SpeechWithFeedbackFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechWithFeedbackFeedback>)))
  "Returns string type for a message object of type '<SpeechWithFeedbackFeedback>"
  "naoqi_bridge_msgs/SpeechWithFeedbackFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechWithFeedbackFeedback)))
  "Returns string type for a message object of type 'SpeechWithFeedbackFeedback"
  "naoqi_bridge_msgs/SpeechWithFeedbackFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechWithFeedbackFeedback>)))
  "Returns md5sum for a message object of type '<SpeechWithFeedbackFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechWithFeedbackFeedback)))
  "Returns md5sum for a message object of type 'SpeechWithFeedbackFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechWithFeedbackFeedback>)))
  "Returns full string definition for message of type '<SpeechWithFeedbackFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Empty feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechWithFeedbackFeedback)))
  "Returns full string definition for message of type 'SpeechWithFeedbackFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Empty feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechWithFeedbackFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechWithFeedbackFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechWithFeedbackFeedback
))