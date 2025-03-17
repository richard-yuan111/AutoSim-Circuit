; Auto-generated. Do not edit!


(cl:in-package scale_truck_control-msg)


;//! \htmlinclude lrc2xav.msg.html

(cl:defclass <lrc2xav> (roslisp-msg-protocol:ros-message)
  ((cur_vel
    :reader cur_vel
    :initarg :cur_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass lrc2xav (<lrc2xav>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lrc2xav>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lrc2xav)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control-msg:<lrc2xav> is deprecated: use scale_truck_control-msg:lrc2xav instead.")))

(cl:ensure-generic-function 'cur_vel-val :lambda-list '(m))
(cl:defmethod cur_vel-val ((m <lrc2xav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:cur_vel-val is deprecated.  Use scale_truck_control-msg:cur_vel instead.")
  (cur_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lrc2xav>) ostream)
  "Serializes a message object of type '<lrc2xav>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cur_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lrc2xav>) istream)
  "Deserializes a message object of type '<lrc2xav>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lrc2xav>)))
  "Returns string type for a message object of type '<lrc2xav>"
  "scale_truck_control/lrc2xav")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lrc2xav)))
  "Returns string type for a message object of type 'lrc2xav"
  "scale_truck_control/lrc2xav")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lrc2xav>)))
  "Returns md5sum for a message object of type '<lrc2xav>"
  "647f32150b8255f1e2582744b0be8476")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lrc2xav)))
  "Returns md5sum for a message object of type 'lrc2xav"
  "647f32150b8255f1e2582744b0be8476")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lrc2xav>)))
  "Returns full string definition for message of type '<lrc2xav>"
  (cl:format cl:nil "float32 cur_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lrc2xav)))
  "Returns full string definition for message of type 'lrc2xav"
  (cl:format cl:nil "float32 cur_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lrc2xav>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lrc2xav>))
  "Converts a ROS message object to a list"
  (cl:list 'lrc2xav
    (cl:cons ':cur_vel (cur_vel msg))
))
