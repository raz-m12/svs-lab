;; Auto-generated. Do not edit!


(when (boundp 'f1tenth_simulator::AddTwoInts)
  (if (not (find-package "F1TENTH_SIMULATOR"))
    (make-package "F1TENTH_SIMULATOR"))
  (shadow 'AddTwoInts (find-package "F1TENTH_SIMULATOR")))
(unless (find-package "F1TENTH_SIMULATOR::ADDTWOINTS")
  (make-package "F1TENTH_SIMULATOR::ADDTWOINTS"))
(unless (find-package "F1TENTH_SIMULATOR::ADDTWOINTSREQUEST")
  (make-package "F1TENTH_SIMULATOR::ADDTWOINTSREQUEST"))
(unless (find-package "F1TENTH_SIMULATOR::ADDTWOINTSRESPONSE")
  (make-package "F1TENTH_SIMULATOR::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass f1tenth_simulator::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod f1tenth_simulator::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass f1tenth_simulator::AddTwoIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod f1tenth_simulator::AddTwoIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass f1tenth_simulator::AddTwoInts
  :super ros::object
  :slots ())

(setf (get f1tenth_simulator::AddTwoInts :md5sum-) "6a2e34150c00229791cc89ff309fff21")
(setf (get f1tenth_simulator::AddTwoInts :datatype-) "f1tenth_simulator/AddTwoInts")
(setf (get f1tenth_simulator::AddTwoInts :request) f1tenth_simulator::AddTwoIntsRequest)
(setf (get f1tenth_simulator::AddTwoInts :response) f1tenth_simulator::AddTwoIntsResponse)

(defmethod f1tenth_simulator::AddTwoIntsRequest
  (:response () (instance f1tenth_simulator::AddTwoIntsResponse :init)))

(setf (get f1tenth_simulator::AddTwoIntsRequest :md5sum-) "6a2e34150c00229791cc89ff309fff21")
(setf (get f1tenth_simulator::AddTwoIntsRequest :datatype-) "f1tenth_simulator/AddTwoIntsRequest")
(setf (get f1tenth_simulator::AddTwoIntsRequest :definition-)
      "int64 a
int64 b
---
int64 sum

")

(setf (get f1tenth_simulator::AddTwoIntsResponse :md5sum-) "6a2e34150c00229791cc89ff309fff21")
(setf (get f1tenth_simulator::AddTwoIntsResponse :datatype-) "f1tenth_simulator/AddTwoIntsResponse")
(setf (get f1tenth_simulator::AddTwoIntsResponse :definition-)
      "int64 a
int64 b
---
int64 sum

")



(provide :f1tenth_simulator/AddTwoInts "6a2e34150c00229791cc89ff309fff21")


