; Auto-generated. Do not edit!


(cl:in-package scale_truck_control-msg)


;//! \htmlinclude lrc2ocr.msg.html

(cl:defclass <lrc2ocr> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (steer_angle
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
   (pred_vel
    :reader pred_vel
    :initarg :pred_vel
    :type cl:float
    :initform 0.0)
   (alpha
    :reader alpha
    :initarg :alpha
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass lrc2ocr (<lrc2ocr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lrc2ocr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lrc2ocr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control-msg:<lrc2ocr> is deprecated: use scale_truck_control-msg:lrc2ocr instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:index-val is deprecated.  Use scale_truck_control-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:steer_angle-val is deprecated.  Use scale_truck_control-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'cur_dist-val :lambda-list '(m))
(cl:defmethod cur_dist-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:cur_dist-val is deprecated.  Use scale_truck_control-msg:cur_dist instead.")
  (cur_dist m))

(cl:ensure-generic-function 'tar_dist-val :lambda-list '(m))
(cl:defmethod tar_dist-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:tar_dist-val is deprecated.  Use scale_truck_control-msg:tar_dist instead.")
  (tar_dist m))

(cl:ensure-generic-function 'tar_vel-val :lambda-list '(m))
(cl:defmethod tar_vel-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:tar_vel-val is deprecated.  Use scale_truck_control-msg:tar_vel instead.")
  (tar_vel m))

(cl:ensure-generic-function 'pred_vel-val :lambda-list '(m))
(cl:defmethod pred_vel-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:pred_vel-val is deprecated.  Use scale_truck_control-msg:pred_vel instead.")
  (pred_vel m))

(cl:ensure-generic-function 'alpha-val :lambda-list '(m))
(cl:defmethod alpha-val ((m <lrc2ocr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:alpha-val is deprecated.  Use scale_truck_control-msg:alpha instead.")
  (alpha m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lrc2ocr>) ostream)
  "Serializes a message object of type '<lrc2ocr>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pred_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'alpha) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lrc2ocr>) istream)
  "Deserializes a message object of type '<lrc2ocr>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pred_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'alpha) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lrc2ocr>)))
  "Returns string type for a message object of type '<lrc2ocr>"
  "scale_truck_control/lrc2ocr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lrc2ocr)))
  "Returns string type for a message object of type 'lrc2ocr"
  "scale_truck_control/lrc2ocr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lrc2ocr>)))
  "Returns md5sum for a message object of type '<lrc2ocr>"
  "4df4cc808fb5dda1620117e19736ec90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lrc2ocr)))
  "Returns md5sum for a message object of type 'lrc2ocr"
  "4df4cc808fb5dda1620117e19736ec90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lrc2ocr>)))
  "Returns full string definition for message of type '<lrc2ocr>"
  (cl:format cl:nil "int32 index~%float32 steer_angle~%float32 cur_dist~%float32 tar_dist~%float32 tar_vel~%float32 pred_vel~%bool alpha~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lrc2ocr)))
  "Returns full string definition for message of type 'lrc2ocr"
  (cl:format cl:nil "int32 index~%float32 steer_angle~%float32 cur_dist~%float32 tar_dist~%float32 tar_vel~%float32 pred_vel~%bool alpha~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lrc2ocr>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lrc2ocr>))
  "Converts a ROS message object to a list"
  (cl:list 'lrc2ocr
    (cl:cons ':index (index msg))
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':cur_dist (cur_dist msg))
    (cl:cons ':tar_dist (tar_dist msg))
    (cl:cons ':tar_vel (tar_vel msg))
    (cl:cons ':pred_vel (pred_vel msg))
    (cl:cons ':alpha (alpha msg))
))
