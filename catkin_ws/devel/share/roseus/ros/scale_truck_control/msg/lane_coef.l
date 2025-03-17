;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control::lane_coef)
  (if (not (find-package "SCALE_TRUCK_CONTROL"))
    (make-package "SCALE_TRUCK_CONTROL"))
  (shadow 'lane_coef (find-package "SCALE_TRUCK_CONTROL")))
(unless (find-package "SCALE_TRUCK_CONTROL::LANE_COEF")
  (make-package "SCALE_TRUCK_CONTROL::LANE_COEF"))

(in-package "ROS")
;;//! \htmlinclude lane_coef.msg.html


(defclass scale_truck_control::lane_coef
  :super ros::object
  :slots (_left _right _center ))

(defmethod scale_truck_control::lane_coef
  (:init
   (&key
    ((:left __left) (instance scale_truck_control::lane :init))
    ((:right __right) (instance scale_truck_control::lane :init))
    ((:center __center) (instance scale_truck_control::lane :init))
    )
   (send-super :init)
   (setq _left __left)
   (setq _right __right)
   (setq _center __center)
   self)
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:serialization-length
   ()
   (+
    ;; scale_truck_control/lane _left
    (send _left :serialization-length)
    ;; scale_truck_control/lane _right
    (send _right :serialization-length)
    ;; scale_truck_control/lane _center
    (send _center :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; scale_truck_control/lane _left
       (send _left :serialize s)
     ;; scale_truck_control/lane _right
       (send _right :serialize s)
     ;; scale_truck_control/lane _center
       (send _center :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; scale_truck_control/lane _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; scale_truck_control/lane _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;; scale_truck_control/lane _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;;
   self)
  )

(setf (get scale_truck_control::lane_coef :md5sum-) "ce20933ad34b813e016600c3706e1251")
(setf (get scale_truck_control::lane_coef :datatype-) "scale_truck_control/lane_coef")
(setf (get scale_truck_control::lane_coef :definition-)
      "lane left
lane right
lane center

================================================================================
MSG: scale_truck_control/lane
float32 a
float32 b
float32 c

")



(provide :scale_truck_control/lane_coef "ce20933ad34b813e016600c3706e1251")


