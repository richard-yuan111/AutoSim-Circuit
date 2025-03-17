; Auto-generated. Do not edit!


(cl:in-package scale_truck_control-msg)


;//! \htmlinclude ocr2lrc.msg.html

(cl:defclass <ocr2lrc> (roslisp-msg-protocol:ros-message)
  ((cur_vel
    :reader cur_vel
    :initarg :cur_vel
    :type cl:float
    :initform 0.0)
   (u_k
    :reader u_k
    :initarg :u_k
    :type cl:float
    :initform 0.0))
)

(cl:defclass ocr2lrc (<ocr2lrc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ocr2lrc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ocr2lrc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control-msg:<ocr2lrc> is deprecated: use scale_truck_control-msg:ocr2lrc instead.")))

(cl:ensure-generic-function 'cur_vel-val :lambda-list '(m))
(cl:defmethod cur_vel-val ((m <ocr2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:cur_vel-val is deprecated.  Use scale_truck_control-msg:cur_vel instead.")
  (cur_vel m))

(cl:ensure-generic-function 'u_k-val :lambda-list '(m))
(cl:defmethod u_k-val ((m <ocr2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:u_k-val is deprecated.  Use scale_truck_control-msg:u_k instead.")
  (u_k m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ocr2lrc>) ostream)
  "Serializes a message object of type '<ocr2lrc>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cur_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u_k))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ocr2lrc>) istream)
  "Deserializes a message object of type '<ocr2lrc>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u_k) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ocr2lrc>)))
  "Returns string type for a message object of type '<ocr2lrc>"
  "scale_truck_control/ocr2lrc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ocr2lrc)))
  "Returns string type for a message object of type 'ocr2lrc"
  "scale_truck_control/ocr2lrc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ocr2lrc>)))
  "Returns md5sum for a message object of type '<ocr2lrc>"
  "5547173125610f649bee41045fabb0de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ocr2lrc)))
  "Returns md5sum for a message object of type 'ocr2lrc"
  "5547173125610f649bee41045fabb0de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ocr2lrc>)))
  "Returns full string definition for message of type '<ocr2lrc>"
  (cl:format cl:nil "float32 cur_vel~%float32 u_k~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ocr2lrc)))
  "Returns full string definition for message of type 'ocr2lrc"
  (cl:format cl:nil "float32 cur_vel~%float32 u_k~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ocr2lrc>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ocr2lrc>))
  "Converts a ROS message object to a list"
  (cl:list 'ocr2lrc
    (cl:cons ':cur_vel (cur_vel msg))
    (cl:cons ':u_k (u_k msg))
))
