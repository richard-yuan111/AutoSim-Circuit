;; Auto-generated. Do not edit!


(when (boundp 'scale_truck_control_msgs::xav2lrc)
  (if (not (find-package "SCALE_TRUCK_CONTROL_MSGS"))
    (make-package "SCALE_TRUCK_CONTROL_MSGS"))
  (shadow 'xav2lrc (find-package "SCALE_TRUCK_CONTROL_MSGS")))
(unless (find-package "SCALE_TRUCK_CONTROL_MSGS::XAV2LRC")
  (make-package "SCALE_TRUCK_CONTROL_MSGS::XAV2LRC"))

(in-package "ROS")
;;//! \htmlinclude xav2lrc.msg.html


(defclass scale_truck_control_msgs::xav2lrc
  :super ros::object
  :slots (_steer_angle _cur_dist _tar_dist _tar_vel _beta _gamma ))

(defmethod scale_truck_control_msgs::xav2lrc
  (:init
   (&key
    ((:steer_angle __steer_angle) 0.0)
    ((:cur_dist __cur_dist) 0.0)
    ((:tar_dist __tar_dist) 0.0)
    ((:tar_vel __tar_vel) 0.0)
    ((:beta __beta) nil)
    ((:gamma __gamma) nil)
    )
   (send-super :init)
   (setq _steer_angle (float __steer_angle))
   (setq _cur_dist (float __cur_dist))
   (setq _tar_dist (float __tar_dist))
   (setq _tar_vel (float __tar_vel))
   (setq _beta __beta)
   (setq _gamma __gamma)
   self)
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
  (:beta
   (&optional (__beta :null))
   (if (not (eq __beta :null)) (setq _beta __beta)) _beta)
  (:gamma
   (&optional (__gamma :null))
   (if (not (eq __gamma :null)) (setq _gamma __gamma)) _gamma)
  (:serialization-length
   ()
   (+
    ;; float32 _steer_angle
    4
    ;; float32 _cur_dist
    4
    ;; float32 _tar_dist
    4
    ;; float32 _tar_vel
    4
    ;; bool _beta
    1
    ;; bool _gamma
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _steer_angle
       (sys::poke _steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cur_dist
       (sys::poke _cur_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_dist
       (sys::poke _tar_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tar_vel
       (sys::poke _tar_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _beta
       (if _beta (write-byte -1 s) (write-byte 0 s))
     ;; bool _gamma
       (if _gamma (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cur_dist
     (setq _cur_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_dist
     (setq _tar_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tar_vel
     (setq _tar_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _beta
     (setq _beta (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gamma
     (setq _gamma (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scale_truck_control_msgs::xav2lrc :md5sum-) "67b2d2c9b9fe241a9e49be4c7e0c1a50")
(setf (get scale_truck_control_msgs::xav2lrc :datatype-) "scale_truck_control_msgs/xav2lrc")
(setf (get scale_truck_control_msgs::xav2lrc :definition-)
      "float32 steer_angle
float32 cur_dist
float32 tar_dist
float32 tar_vel
bool beta
bool gamma

")



(provide :scale_truck_control_msgs/xav2lrc "67b2d2c9b9fe241a9e49be4c7e0c1a50")


