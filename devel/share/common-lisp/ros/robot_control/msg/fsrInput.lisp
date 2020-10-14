; Auto-generated. Do not edit!


(cl:in-package robot_control-msg)


;//! \htmlinclude fsrInput.msg.html

(cl:defclass <fsrInput> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (i0
    :reader i0
    :initarg :i0
    :type cl:float
    :initform 0.0))
)

(cl:defclass fsrInput (<fsrInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fsrInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fsrInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control-msg:<fsrInput> is deprecated: use robot_control-msg:fsrInput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <fsrInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:header-val is deprecated.  Use robot_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'i0-val :lambda-list '(m))
(cl:defmethod i0-val ((m <fsrInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:i0-val is deprecated.  Use robot_control-msg:i0 instead.")
  (i0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fsrInput>) ostream)
  "Serializes a message object of type '<fsrInput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fsrInput>) istream)
  "Deserializes a message object of type '<fsrInput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i0) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fsrInput>)))
  "Returns string type for a message object of type '<fsrInput>"
  "robot_control/fsrInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fsrInput)))
  "Returns string type for a message object of type 'fsrInput"
  "robot_control/fsrInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fsrInput>)))
  "Returns md5sum for a message object of type '<fsrInput>"
  "1db789e6c32ded981786123f2972369c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fsrInput)))
  "Returns md5sum for a message object of type 'fsrInput"
  "1db789e6c32ded981786123f2972369c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fsrInput>)))
  "Returns full string definition for message of type '<fsrInput>"
  (cl:format cl:nil "Header header~%float32 i0~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fsrInput)))
  "Returns full string definition for message of type 'fsrInput"
  (cl:format cl:nil "Header header~%float32 i0~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fsrInput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fsrInput>))
  "Converts a ROS message object to a list"
  (cl:list 'fsrInput
    (cl:cons ':header (header msg))
    (cl:cons ':i0 (i0 msg))
))
