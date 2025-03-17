;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control::lrc2xav)
  (if (not (find-package "SCALE_TRUCK_CONTROL"))
    (make-package "SCALE_TRUCK_CONTROL"))
  (shadow 'lrc2xav (find-package "SCALE_TRUCK_CONTROL")))
(unless (find-package "SCALE_TRUCK_CONTROL::LRC2XAV")
  (make-package "SCALE_TRUCK_CONTROL::LRC2XAV"))

(in-package "ROS")
;;//! \htmlinclude lrc2xav.msg.html


(defclass scale_truck_control::lrc2xav
  :super ros::object
  :slots (_cur_vel ))

(defmethod scale_truck_control::lrc2xav
  (:init
   (&key
    ((:cur_vel __cur_vel) 0.0)
    )
   (send-super :init)
   (setq _cur_vel (float __cur_vel))
   self)
  (:cur_vel
   (&optional __cur_vel)
   (if __cur_vel (setq _cur_vel __cur_vel)) _cur_vel)
  (:serialization-length
   ()
   (+
    ;; float32 _cur_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cur_vel
       (sys::poke _cur_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cur_vel
     (setq _cur_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get scale_truck_control::lrc2xav :md5sum-) "647f32150b8255f1e2582744b0be8476")
(setf (get scale_truck_control::lrc2xav :datatype-) "scale_truck_control/lrc2xav")
(setf (get scale_truck_control::lrc2xav :definition-)
      "float32 cur_vel

")



(provide :scale_truck_control/lrc2xav "647f32150b8255f1e2582744b0be8476")


