;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control_msgs::lrc2ocr)
  (if (not (find-package "SCALE_TRUCK_CONTROL_MSGS"))
    (make-package "SCALE_TRUCK_CONTROL_MSGS"))
  (shadow 'lrc2ocr (find-package "SCALE_TRUCK_CONTROL_MSGS")))
(unless (find-package "SCALE_TRUCK_CONTROL_MSGS::LRC2OCR")
  (make-package "SCALE_TRUCK_CONTROL_MSGS::LRC2OCR"))

(in-package "ROS")
;;//! \htmlinclude lrc2ocr.msg.html


(defclass scale_truck_control_msgs::lrc2ocr
  :super ros::object
  :slots (_index _steer_angle _cur_dist _tar_dist _tar_vel _pred_vel _alpha ))

(defmethod scale_truck_control_msgs::lrc2ocr
  (:init
   (&key
    ((:index __index) 0)
    ((:steer_angle __steer_angle) 0.0)
    ((:cur_dist __cur_dist) 0.0)
    ((:tar_dist __tar_dist) 0.0)
    ((:tar_vel __tar_vel) 0.0)
    ((:pred_vel __pred_vel) 0.0)
    ((:alpha __alpha) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _steer_angle (float __steer_angle))
   (setq _cur_dist (float __cur_dist))
   (setq _tar_dist (float __tar_dist))
   (setq _tar_vel (float __tar_vel))
   (setq _pred_vel (float __pred_vel))
   (setq _alpha __alpha)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:steer_angle
   (&optional __steer_angle)
   (if __steer_angle (setq _steer_angle __steer_angle)) _steer_angle)
  (:cur_dist
   (&optional __cur_dist)
   (if __cur_dist (setq _cur_dist __cur_dist)) _cur_dist)
  (:tar_dist
   (&optional __tar_dist)
   (if __tar_dist (setq _tar_dist __tar_dist)) _tar_dist)
  (:tar_vel
   (&optional __tar_vel)
   (if __tar_vel (setq _tar_vel __tar_vel)) _tar_vel)
  (:pred_vel
   (&optional __pred_vel)
   (if __pred_vel (setq _pred_vel __pred_vel)) _pred_vel)
  (:alpha
   (&optional (__alpha :null))
   (if (not (eq __alpha :null)) (setq _alpha __alpha)) _alpha)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; float32 _steer_angle
    4
    ;; float32 _cur_dist
    4
    ;; float32 _tar_dist
    4
    ;; float32 _tar_vel
    4
    ;; float32 _pred_vel
    4
    ;; bool _alpha
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; float32 _steer_angle
       (sys::poke _steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cur_dist
       (sys::poke _cur_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_dist
       (sys::poke _tar_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_vel
       (sys::poke _tar_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pred_vel
       (sys::poke _pred_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _alpha
       (if _alpha (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cur_dist
     (setq _cur_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_dist
     (setq _tar_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_vel
     (setq _tar_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pred_vel
     (setq _pred_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _alpha
     (setq _alpha (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scale_truck_control_msgs::lrc2ocr :md5sum-) "4df4cc808fb5dda1620117e19736ec90")
(setf (get scale_truck_control_msgs::lrc2ocr :datatype-) "scale_truck_control_msgs/lrc2ocr")
(setf (get scale_truck_control_msgs::lrc2ocr :definition-)
      "int32 index
float32 steer_angle
float32 cur_dist
float32 tar_dist
float32 tar_vel
float32 pred_vel
bool alpha

")



(provide :scale_truck_control_msgs/lrc2ocr "4df4cc808fb5dda1620117e19736ec90")


