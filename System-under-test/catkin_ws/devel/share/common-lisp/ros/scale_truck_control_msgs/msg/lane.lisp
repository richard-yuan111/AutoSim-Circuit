; Auto-generated. Do not edit!


(cl:in-package scale_truck_control_msgs-msg)


;//! \htmlinclude lane.msg.html

(cl:defclass <lane> (roslisp-msg-protocol:ros-message)
  ((c0
    :reader c0
    :initarg :c0
    :type cl:float
    :initform 0.0)
   (c1
    :reader c1
    :initarg :c1
    :type cl:float
    :initform 0.0)
   (c2
    :reader c2
    :initarg :c2
    :type cl:float
    :initform 0.0))
)

(cl:defclass lane (<lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control_msgs-msg:<lane> is deprecated: use scale_truck_control_msgs-msg:lane instead.")))

(cl:ensure-generic-function 'c0-val :lambda-list '(m))
(cl:defmethod c0-val ((m <lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:c0-val is deprecated.  Use scale_truck_control_msgs-msg:c0 instead.")
  (c0 m))

(cl:ensure-generic-function 'c1-val :lambda-list '(m))
(cl:defmethod c1-val ((m <lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:c1-val is deprecated.  Use scale_truck_control_msgs-msg:c1 instead.")
  (c1 m))

(cl:ensure-generic-function 'c2-val :lambda-list '(m))
(cl:defmethod c2-val ((m <lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:c2-val is deprecated.  Use scale_truck_control_msgs-msg:c2 instead.")
  (c2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lane>) ostream)
  "Serializes a message object of type '<lane>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c2))))
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
    (cl:setf (cl:slot-value msg 'c0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lane>)))
  "Returns string type for a message object of type '<lane>"
  "scale_truck_control_msgs/lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lane)))
  "Returns string type for a message object of type 'lane"
  "scale_truck_control_msgs/lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lane>)))
  "Returns md5sum for a message object of type '<lane>"
  "fb37e2a7d1c9ea86f0485c19147d8e3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lane)))
  "Returns md5sum for a message object of type 'lane"
  "fb37e2a7d1c9ea86f0485c19147d8e3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lane>)))
  "Returns full string definition for message of type '<lane>"
  (cl:format cl:nil "float32 c0  # a~%float32 c1  # b~%float32 c2  # c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lane)))
  "Returns full string definition for message of type 'lane"
  (cl:format cl:nil "float32 c0  # a~%float32 c1  # b~%float32 c2  # c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lane>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lane>))
  "Converts a ROS message object to a list"
  (cl:list 'lane
    (cl:cons ':c0 (c0 msg))
    (cl:cons ':c1 (c1 msg))
    (cl:cons ':c2 (c2 msg))
))
