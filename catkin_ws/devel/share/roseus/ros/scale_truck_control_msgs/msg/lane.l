;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control_msgs::lane)
  (if (not (find-package "SCALE_TRUCK_CONTROL_MSGS"))
    (make-package "SCALE_TRUCK_CONTROL_MSGS"))
  (shadow 'lane (find-package "SCALE_TRUCK_CONTROL_MSGS")))
(unless (find-package "SCALE_TRUCK_CONTROL_MSGS::LANE")
  (make-package "SCALE_TRUCK_CONTROL_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude lane.msg.html


(defclass scale_truck_control_msgs::lane
  :super ros::object
  :slots (_c0 _c1 _c2 ))

(defmethod scale_truck_control_msgs::lane
  (:init
   (&key
    ((:c0 __c0) 0.0)
    ((:c1 __c1) 0.0)
    ((:c2 __c2) 0.0)
    )
   (send-super :init)
   (setq _c0 (float __c0))
   (setq _c1 (float __c1))
   (setq _c2 (float __c2))
   self)
  (:c0
   (&optional __c0)
   (if __c0 (setq _c0 __c0)) _c0)
  (:c1
   (&optional __c1)
   (if __c1 (setq _c1 __c1)) _c1)
  (:c2
   (&optional __c2)
   (if __c2 (setq _c2 __c2)) _c2)
  (:serialization-length
   ()
   (+
    ;; float32 _c0
    4
    ;; float32 _c1
    4
    ;; float32 _c2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _c0
       (sys::poke _c0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c1
       (sys::poke _c1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c2
       (sys::poke _c2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _c0
     (setq _c0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c1
     (setq _c1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c2
     (setq _c2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get scale_truck_control_msgs::lane :md5sum-) "fb37e2a7d1c9ea86f0485c19147d8e3a")
(setf (get scale_truck_control_msgs::lane :datatype-) "scale_truck_control_msgs/lane")
(setf (get scale_truck_control_msgs::lane :definition-)
      "float32 c0  # a
float32 c1  # b
float32 c2  # c

")



(provide :scale_truck_control_msgs/lane "fb37e2a7d1c9ea86f0485c19147d8e3a")


