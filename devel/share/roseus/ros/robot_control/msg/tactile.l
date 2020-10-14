;; Auto-generated. Do not edit!


(when (boundp 'robot_control::tactile)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'tactile (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::TACTILE")
  (make-package "ROBOT_CONTROL::TACTILE"))

(in-package "ROS")
;;//! \htmlinclude tactile.msg.html


(defclass robot_control::tactile
  :super ros::object
  :slots (_first _second _third _fourth _fifth ))

(defmethod robot_control::tactile
  (:init
   (&key
    ((:first __first) 0.0)
    ((:second __second) 0.0)
    ((:third __third) 0.0)
    ((:fourth __fourth) 0.0)
    ((:fifth __fifth) 0.0)
    )
   (send-super :init)
   (setq _first (float __first))
   (setq _second (float __second))
   (setq _third (float __third))
   (setq _fourth (float __fourth))
   (setq _fifth (float __fifth))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:third
   (&optional __third)
   (if __third (setq _third __third)) _third)
  (:fourth
   (&optional __fourth)
   (if __fourth (setq _fourth __fourth)) _fourth)
  (:fifth
   (&optional __fifth)
   (if __fifth (setq _fifth __fifth)) _fifth)
  (:serialization-length
   ()
   (+
    ;; float64 _first
    8
    ;; float64 _second
    8
    ;; float64 _third
    8
    ;; float64 _fourth
    8
    ;; float64 _fifth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _first
       (sys::poke _first (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _second
       (sys::poke _second (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _third
       (sys::poke _third (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fourth
       (sys::poke _fourth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fifth
       (sys::poke _fifth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _first
     (setq _first (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _second
     (setq _second (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _third
     (setq _third (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fourth
     (setq _fourth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fifth
     (setq _fifth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_control::tactile :md5sum-) "b92696e452fb86182cb1f3c9a1668690")
(setf (get robot_control::tactile :datatype-) "robot_control/tactile")
(setf (get robot_control::tactile :definition-)
      "float64 first
float64 second
float64 third
float64 fourth
float64 fifth

")



(provide :robot_control/tactile "b92696e452fb86182cb1f3c9a1668690")


