;; Auto-generated. Do not edit!


(when (boundp 'robot_control::rigid)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'rigid (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::RIGID")
  (make-package "ROBOT_CONTROL::RIGID"))

(in-package "ROS")
;;//! \htmlinclude rigid.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_control::rigid
  :super ros::object
  :slots (_header _tact_1 _tact_2 _tact_3 _tact_4 _tact_5 _load_1 _load_2 _load_3 _load_4 _load_5 ))

(defmethod robot_control::rigid
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tact_1 __tact_1) 0.0)
    ((:tact_2 __tact_2) 0.0)
    ((:tact_3 __tact_3) 0.0)
    ((:tact_4 __tact_4) 0.0)
    ((:tact_5 __tact_5) 0.0)
    ((:load_1 __load_1) 0.0)
    ((:load_2 __load_2) 0.0)
    ((:load_3 __load_3) 0.0)
    ((:load_4 __load_4) 0.0)
    ((:load_5 __load_5) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tact_1 (float __tact_1))
   (setq _tact_2 (float __tact_2))
   (setq _tact_3 (float __tact_3))
   (setq _tact_4 (float __tact_4))
   (setq _tact_5 (float __tact_5))
   (setq _load_1 (float __load_1))
   (setq _load_2 (float __load_2))
   (setq _load_3 (float __load_3))
   (setq _load_4 (float __load_4))
   (setq _load_5 (float __load_5))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tact_1
   (&optional __tact_1)
   (if __tact_1 (setq _tact_1 __tact_1)) _tact_1)
  (:tact_2
   (&optional __tact_2)
   (if __tact_2 (setq _tact_2 __tact_2)) _tact_2)
  (:tact_3
   (&optional __tact_3)
   (if __tact_3 (setq _tact_3 __tact_3)) _tact_3)
  (:tact_4
   (&optional __tact_4)
   (if __tact_4 (setq _tact_4 __tact_4)) _tact_4)
  (:tact_5
   (&optional __tact_5)
   (if __tact_5 (setq _tact_5 __tact_5)) _tact_5)
  (:load_1
   (&optional __load_1)
   (if __load_1 (setq _load_1 __load_1)) _load_1)
  (:load_2
   (&optional __load_2)
   (if __load_2 (setq _load_2 __load_2)) _load_2)
  (:load_3
   (&optional __load_3)
   (if __load_3 (setq _load_3 __load_3)) _load_3)
  (:load_4
   (&optional __load_4)
   (if __load_4 (setq _load_4 __load_4)) _load_4)
  (:load_5
   (&optional __load_5)
   (if __load_5 (setq _load_5 __load_5)) _load_5)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _tact_1
    8
    ;; float64 _tact_2
    8
    ;; float64 _tact_3
    8
    ;; float64 _tact_4
    8
    ;; float64 _tact_5
    8
    ;; float64 _load_1
    8
    ;; float64 _load_2
    8
    ;; float64 _load_3
    8
    ;; float64 _load_4
    8
    ;; float64 _load_5
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _tact_1
       (sys::poke _tact_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tact_2
       (sys::poke _tact_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tact_3
       (sys::poke _tact_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tact_4
       (sys::poke _tact_4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tact_5
       (sys::poke _tact_5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load_1
       (sys::poke _load_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load_2
       (sys::poke _load_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load_3
       (sys::poke _load_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load_4
       (sys::poke _load_4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load_5
       (sys::poke _load_5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _tact_1
     (setq _tact_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tact_2
     (setq _tact_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tact_3
     (setq _tact_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tact_4
     (setq _tact_4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tact_5
     (setq _tact_5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load_1
     (setq _load_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load_2
     (setq _load_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load_3
     (setq _load_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load_4
     (setq _load_4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load_5
     (setq _load_5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_control::rigid :md5sum-) "8bcb515782fec7970e7fb78e76cf6135")
(setf (get robot_control::rigid :datatype-) "robot_control/rigid")
(setf (get robot_control::rigid :definition-)
      "Header header
float64 tact_1
float64 tact_2
float64 tact_3
float64 tact_4
float64 tact_5
float64 load_1
float64 load_2
float64 load_3
float64 load_4
float64 load_5

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :robot_control/rigid "8bcb515782fec7970e7fb78e76cf6135")


