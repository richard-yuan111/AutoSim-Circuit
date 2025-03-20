; Auto-generated. Do not edit!


(cl:in-package scale_truck_control-msg)


;//! \htmlinclude lane_coef.msg.html

(cl:defclass <lane_coef> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type scale_truck_control-msg:lane
    :initform (cl:make-instance 'scale_truck_control-msg:lane))
   (right
    :reader right
    :initarg :right
    :type scale_truck_control-msg:lane
    :initform (cl:make-instance 'scale_truck_control-msg:lane))
   (center
    :reader center
    :initarg :center
    :type scale_truck_control-msg:lane
    :initform (cl:make-instance 'scale_truck_control-msg:lane)))
)

(cl:defclass lane_coef (<lane_coef>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lane_coef>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lane_coef)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scale_truck_control-msg:<lane_coef> is deprecated: use scale_truck_control-msg:lane_coef instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <lane_coef>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:left-val is deprecated.  Use scale_truck_control-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <lane_coef>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:right-val is deprecated.  Use scale_truck_control-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <lane_coef>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scale_truck_control-msg:center-val is deprecated.  Use scale_truck_control-msg:center instead.")
  (center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lane_coef>) ostream)
  "Serializes a message object of type '<lane_coef>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lane_coef>) istream)
  "Deserializes a message object of type '<lane_coef>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lane_coef>)))
  "Returns string type for a message object of type '<lane_coef>"
  "scale_truck_control/lane_coef")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lane_coef)))
  "Returns string type for a message object of type 'lane_coef"
  "scale_truck_control/lane_coef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lane_coef>)))
  "Returns md5sum for a message object of type '<lane_coef>"
  "ce20933ad34b813e016600c3706e1251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lane_coef)))
  "Returns md5sum for a message object of type 'lane_coef"
  "ce20933ad34b813e016600c3706e1251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lane_coef>)))
  "Returns full string definition for message of type '<lane_coef>"
  (cl:format cl:nil "lane left~%lane right~%lane center~%~%================================================================================~%MSG: scale_truck_control/lane~%float32 a~%float32 b~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lane_coef)))
  "Returns full string definition for message of type 'lane_coef"
  (cl:format cl:nil "lane left~%lane right~%lane center~%~%================================================================================~%MSG: scale_truck_control/lane~%float32 a~%float32 b~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lane_coef>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lane_coef>))
  "Converts a ROS message object to a list"
  (cl:list 'lane_coef
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':center (center msg))
))
