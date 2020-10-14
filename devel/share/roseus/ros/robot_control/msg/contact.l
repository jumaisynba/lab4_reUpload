;; Auto-generated. Do not edit!


(when (boundp 'robot_control::contact)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'contact (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::CONTACT")
  (make-package "ROBOT_CONTROL::CONTACT"))

(in-package "ROS")
;;//! \htmlinclude contact.msg.html


(defclass robot_control::contact
  :super ros::object
  :slots (_contact1 _contact2 _contact3 _contact4 _contact5 ))

(defmethod robot_control::contact
  (:init
   (&key
    ((:contact1 __contact1) 0)
    ((:contact2 __contact2) 0)
    ((:contact3 __contact3) 0)
    ((:contact4 __contact4) 0)
    ((:contact5 __contact5) 0)
    )
   (send-super :init)
   (setq _contact1 (round __contact1))
   (setq _contact2 (round __contact2))
   (setq _contact3 (round __contact3))
   (setq _contact4 (round __contact4))
   (setq _contact5 (round __contact5))
   self)
  (:contact1
   (&optional __contact1)
   (if __contact1 (setq _contact1 __contact1)) _contact1)
  (:contact2
   (&optional __contact2)
   (if __contact2 (setq _contact2 __contact2)) _contact2)
  (:contact3
   (&optional __contact3)
   (if __contact3 (setq _contact3 __contact3)) _contact3)
  (:contact4
   (&optional __contact4)
   (if __contact4 (setq _contact4 __contact4)) _contact4)
  (:contact5
   (&optional __contact5)
   (if __contact5 (setq _contact5 __contact5)) _contact5)
  (:serialization-length
   ()
   (+
    ;; int64 _contact1
    8
    ;; int64 _contact2
    8
    ;; int64 _contact3
    8
    ;; int64 _contact4
    8
    ;; int64 _contact5
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _contact1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _contact1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _contact1) (= (length (_contact1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_contact1 . bv) 0) 0) s)
              (write-long (ash (elt (_contact1 . bv) 1) -1) s))
             ((and (class _contact1) (= (length (_contact1 . bv)) 1)) ;; big1
              (write-long (elt (_contact1 . bv) 0) s)
              (write-long (if (>= _contact1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _contact1 s)(write-long (if (>= _contact1 0) 0 #xffffffff) s)))
     ;; int64 _contact2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _contact2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _contact2) (= (length (_contact2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_contact2 . bv) 0) 0) s)
              (write-long (ash (elt (_contact2 . bv) 1) -1) s))
             ((and (class _contact2) (= (length (_contact2 . bv)) 1)) ;; big1
              (write-long (elt (_contact2 . bv) 0) s)
              (write-long (if (>= _contact2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _contact2 s)(write-long (if (>= _contact2 0) 0 #xffffffff) s)))
     ;; int64 _contact3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _contact3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _contact3) (= (length (_contact3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_contact3 . bv) 0) 0) s)
              (write-long (ash (elt (_contact3 . bv) 1) -1) s))
             ((and (class _contact3) (= (length (_contact3 . bv)) 1)) ;; big1
              (write-long (elt (_contact3 . bv) 0) s)
              (write-long (if (>= _contact3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _contact3 s)(write-long (if (>= _contact3 0) 0 #xffffffff) s)))
     ;; int64 _contact4
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _contact4 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _contact4) (= (length (_contact4 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_contact4 . bv) 0) 0) s)
              (write-long (ash (elt (_contact4 . bv) 1) -1) s))
             ((and (class _contact4) (= (length (_contact4 . bv)) 1)) ;; big1
              (write-long (elt (_contact4 . bv) 0) s)
              (write-long (if (>= _contact4 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _contact4 s)(write-long (if (>= _contact4 0) 0 #xffffffff) s)))
     ;; int64 _contact5
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _contact5 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _contact5) (= (length (_contact5 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_contact5 . bv) 0) 0) s)
              (write-long (ash (elt (_contact5 . bv) 1) -1) s))
             ((and (class _contact5) (= (length (_contact5 . bv)) 1)) ;; big1
              (write-long (elt (_contact5 . bv) 0) s)
              (write-long (if (>= _contact5 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _contact5 s)(write-long (if (>= _contact5 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _contact1
#+(or :alpha :irix6 :x86_64)
      (setf _contact1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _contact1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _contact2
#+(or :alpha :irix6 :x86_64)
      (setf _contact2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _contact2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _contact3
#+(or :alpha :irix6 :x86_64)
      (setf _contact3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _contact3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _contact4
#+(or :alpha :irix6 :x86_64)
      (setf _contact4 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _contact4 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _contact5
#+(or :alpha :irix6 :x86_64)
      (setf _contact5 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _contact5 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get robot_control::contact :md5sum-) "05a794a2e3c1dcb7a9232a6e3a8e219d")
(setf (get robot_control::contact :datatype-) "robot_control/contact")
(setf (get robot_control::contact :definition-)
      "int64 contact1
int64 contact2
int64 contact3
int64 contact4
int64 contact5

")



(provide :robot_control/contact "05a794a2e3c1dcb7a9232a6e3a8e219d")


