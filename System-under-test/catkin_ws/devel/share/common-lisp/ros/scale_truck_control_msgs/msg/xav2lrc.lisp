; Auto-generated. Do not edit!


(cl:in-package scale_truck_control_msgs-msg)


;//! \htmlinclude xav2lrc.msg.html

(cl:defclass <xav2lrc> (roslisp-msg-protocol:ros-message)
  ((steer_angle
    :reader steer_angle
    :initarg :steer_angle
    :type cl:float
    :initform 0.0)
   (cur_dist
    :reader cur_dist
    :initarg :cur_dist
    :type cl:float
    :initform 0.0)
   (tar_dist
    :reader tar_dist
    :initarg :tar_dist
    :type cl:float
    :initform 0.0)
   (tar_vel
    :reader tar_vel
    :initarg :tar_vel
    :type cl:float
    :initform 0.0)
   (beta
    :reader beta
    :initarg :beta
    :type cl:boolean
    :initform cl:nil)
   (gamma
    :reader gamma
    :initarg :gamma
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass xav2lrc (<xav2lrc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xav2lrc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xav2lrc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control_msgs-msg:<xav2lrc> is deprecated: use scale_truck_control_msgs-msg:xav2lrc instead.")))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <xav2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:steer_angle-val is deprecated.  Use scale_truck_control_msgs-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'cur_dist-val :lambda-list '(m))
(cl:defmethod cur_dist-val ((m <xav2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:cur_dist-val is deprecated.  Use scale_truck_control_msgs-msg:cur_dist instead.")
  (cur_dist m))

(cl:ensure-generic-function 'tar_dist-val :lambda-list '(m))
(cl:defmethod tar_dist-val ((m <xav2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:tar_dist-val is deprecated.  Use scale_truck_control_msgs-msg:tar_dist instead.")
  (tar_dist m))

(cl:ensure-generic-function 'tar_vel-val :lambda-list '(m))
(cl:defmethod tar_vel-val ((m <xav2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:tar_vel-val is deprecated.  Use scale_truck_control_msgs-msg:tar_vel instead.")
  (tar_vel m))

(cl:ensure-generic-function 'beta-val :lambda-list '(m))
(cl:defmethod beta-val ((m <xav2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:beta-val is deprecated.  Use scale_truck_control_msgs-msg:beta instead.")
  (beta m))

(cl:ensure-generic-function 'gamma-val :lambda-list '(m))
(cl:defmethod gamma-val ((m <xav2lrc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control_msgs-msg:gamma-val is deprecated.  Use scale_truck_control_msgs-msg:gamma instead.")
  (gamma m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xav2lrc>) ostream)
  "Serializes a message object of type '<xav2lrc>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cur_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tar_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tar_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'beta) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gamma) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xav2lrc>) istream)
  "Deserializes a message object of type '<xav2lrc>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tar_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tar_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'beta) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gamma) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xav2lrc>)))
  "Returns string type for a message object of type '<xav2lrc>"
  "scale_truck_control_msgs/xav2lrc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xav2lrc)))
  "Returns string type for a message object of type 'xav2lrc"
  "scale_truck_control_msgs/xav2lrc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xav2lrc>)))
  "Returns md5sum for a message object of type '<xav2lrc>"
  "67b2d2c9b9fe241a9e49be4c7e0c1a50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xav2lrc)))
  "Returns md5sum for a message object of type 'xav2lrc"
  "67b2d2c9b9fe241a9e49be4c7e0c1a50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xav2lrc>)))
  "Returns full string definition for message of type '<xav2lrc>"
  (cl:format cl:nil "float32 steer_angle~%float32 cur_dist~%float32 tar_dist~%float32 tar_vel~%bool beta~%bool gamma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xav2lrc)))
  "Returns full string definition for message of type 'xav2lrc"
  (cl:format cl:nil "float32 steer_angle~%float32 cur_dist~%float32 tar_dist~%float32 tar_vel~%bool beta~%bool gamma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xav2lrc>))
  (cl:+ 0
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xav2lrc>))
  "Converts a ROS message object to a list"
  (cl:list 'xav2lrc
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':cur_dist (cur_dist msg))
    (cl:cons ':tar_dist (tar_dist msg))
    (cl:cons ':tar_vel (tar_vel msg))
    (cl:cons ':beta (beta msg))
    (cl:cons ':gamma (gamma msg))
))
