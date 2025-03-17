;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control_msgs::ocr2lrc)
  (if (not (find-package "SCALE_TRUCK_CONTROL_MSGS"))
    (make-package "SCALE_TRUCK_CONTROL_MSGS"))
  (shadow 'ocr2lrc (find-package "SCALE_TRUCK_CONTROL_MSGS")))
(unless (find-package "SCALE_TRUCK_CONTROL_MSGS::OCR2LRC")
  (make-package "SCALE_TRUCK_CONTROL_MSGS::OCR2LRC"))

(in-package "ROS")
;;//! \htmlinclude ocr2lrc.msg.html


(defclass scale_truck_control_msgs::ocr2lrc
  :super ros::object
  :slots (_cur_vel _u_k ))

(defmethod scale_truck_control_msgs::ocr2lrc
  (:init
   (&key
    ((:cur_vel __cur_vel) 0.0)
    ((:u_k __u_k) 0.0)
    )
   (send-super :init)
   (setq _cur_vel (float __cur_vel))
   (setq _u_k (float __u_k))
   self)
  (:cur_vel
   (&optional __cur_vel)
   (if __cur_vel (setq _cur_vel __cur_vel)) _cur_vel)
  (:u_k
   (&optional __u_k)
   (if __u_k (setq _u_k __u_k)) _u_k)
  (:serialization-length
   ()
   (+
    ;; float32 _cur_vel
    4
    ;; float32 _u_k
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cur_vel
       (sys::poke _cur_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u_k
       (sys::poke _u_k (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cur_vel
     (setq _cur_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u_k
     (setq _u_k (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get scale_truck_control_msgs::ocr2lrc :md5sum-) "5547173125610f649bee41045fabb0de")
(setf (get scale_truck_control_msgs::ocr2lrc :datatype-) "scale_truck_control_msgs/ocr2lrc")
(setf (get scale_truck_control_msgs::ocr2lrc :definition-)
      "float32 cur_vel
float32 u_k

")



(provide :scale_truck_control_msgs/ocr2lrc "5547173125610f649bee41045fabb0de")


