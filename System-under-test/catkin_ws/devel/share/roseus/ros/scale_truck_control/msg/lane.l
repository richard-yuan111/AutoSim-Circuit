;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control::lane)
  (if (not (find-package "SCALE_TRUCK_CONTROL"))
    (make-package "SCALE_TRUCK_CONTROL"))
  (shadow 'lane (find-package "SCALE_TRUCK_CONTROL")))
(unless (find-package "SCALE_TRUCK_CONTROL::LANE")
  (make-package "SCALE_TRUCK_CONTROL::LANE"))

(in-package "ROS")
;;//! \htmlinclude lane.msg.html


(defclass scale_truck_control::lane
  :super ros::object
  :slots (_a _b _c ))

(defmethod scale_truck_control::lane
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
    4
    ;; float32 _c
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c
       (sys::poke _c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c
     (setq _c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get scale_truck_control::lane :md5sum-) "d20f63a7e99cd5689c2dcf93cf2f8085")
(setf (get scale_truck_control::lane :datatype-) "scale_truck_control/lane")
(setf (get scale_truck_control::lane :definition-)
      "float32 a
float32 b
float32 c

")



(provide :scale_truck_control/lane "d20f63a7e99cd5689c2dcf93cf2f8085")


