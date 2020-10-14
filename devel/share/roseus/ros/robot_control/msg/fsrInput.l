;; Auto-generated. Do not edit!


(when (boundp 'robot_control::fsrInput)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'fsrInput (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::FSRINPUT")
  (make-package "ROBOT_CONTROL::FSRINPUT"))

(in-package "ROS")
;;//! \htmlinclude fsrInput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_control::fsrInput
  :super ros::object
  :slots (_header _i0 ))

(defmethod robot_control::fsrInput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:i0 __i0) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _i0 (float __i0))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:i0
   (&optional __i0)
   (if __i0 (setq _i0 __i0)) _i0)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _i0
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _i0
       (sys::poke _i0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _i0
     (setq _i0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_control::fsrInput :md5sum-) "1db789e6c32ded981786123f2972369c")
(setf (get robot_control::fsrInput :datatype-) "robot_control/fsrInput")
(setf (get robot_control::fsrInput :definition-)
      "Header header
float32 i0

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



(provide :robot_control/fsrInput "1db789e6c32ded981786123f2972369c")


