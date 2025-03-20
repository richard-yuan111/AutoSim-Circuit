; Auto-generated. Do not edit!


(cl:in-package scale_truck_control-msg)


;//! \htmlinclude lane.msg.html

(cl:defclass <lane> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (c
    :reader c
    :initarg :c
    :type cl:float
    :initform 0.0))
)

(cl:defclass lane (<lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control-msg:<lane> is deprecated: use scale_truck_control-msg:lane instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:a-val is deprecated.  Use scale_truck_control-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:b-val is deprecated.  Use scale_truck_control-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:c-val is deprecated.  Use scale_truck_control-msg:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lane>) ostream)
  "Serializes a message object of type '<lane>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lane>) istream)
  "Deserializes a message object of type '<lane>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lane>)))
  "Returns string type for a message object of type '<lane>"
  "scale_truck_control/lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lane)))
  "Returns string type for a message object of type 'lane"
  "scale_truck_control/lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lane>)))
  "Returns md5sum for a message object of type '<lane>"
  "d20f63a7e99cd5689c2dcf93cf2f8085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lane)))
  "Returns md5sum for a message object of type 'lane"
  "d20f63a7e99cd5689c2dcf93cf2f8085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lane>)))
  "Returns full string definition for message of type '<lane>"
  (cl:format cl:nil "float32 a~%float32 b~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lane)))
  "Returns full string definition for message of type 'lane"
  (cl:format cl:nil "float32 a~%float32 b~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lane>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lane>))
  "Converts a ROS message object to a list"
  (cl:list 'lane
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
))
