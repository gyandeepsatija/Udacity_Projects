;; Auto-generated. Do not edit!


(when (boundp 'add_markers::markerReady)
  (if (not (find-package "ADD_MARKERS"))
    (make-package "ADD_MARKERS"))
  (shadow 'markerReady (find-package "ADD_MARKERS")))
(unless (find-package "ADD_MARKERS::MARKERREADY")
  (make-package "ADD_MARKERS::MARKERREADY"))
(unless (find-package "ADD_MARKERS::MARKERREADYREQUEST")
  (make-package "ADD_MARKERS::MARKERREADYREQUEST"))
(unless (find-package "ADD_MARKERS::MARKERREADYRESPONSE")
  (make-package "ADD_MARKERS::MARKERREADYRESPONSE"))

(in-package "ROS")





(defclass add_markers::markerReadyRequest
  :super ros::object
  :slots (_ready ))

(defmethod add_markers::markerReadyRequest
  (:init
   (&key
    ((:ready __ready) 0)
    )
   (send-super :init)
   (setq _ready (round __ready))
   self)
  (:ready
   (&optional __ready)
   (if __ready (setq _ready __ready)) _ready)
  (:serialization-length
   ()
   (+
    ;; int64 _ready
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ready
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ready (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ready) (= (length (_ready . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ready . bv) 0) 0) s)
              (write-long (ash (elt (_ready . bv) 1) -1) s))
             ((and (class _ready) (= (length (_ready . bv)) 1)) ;; big1
              (write-long (elt (_ready . bv) 0) s)
              (write-long (if (>= _ready 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ready s)(write-long (if (>= _ready 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ready
#+(or :alpha :irix6 :x86_64)
      (setf _ready (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ready (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass add_markers::markerReadyResponse
  :super ros::object
  :slots (_msg_feedback ))

(defmethod add_markers::markerReadyResponse
  (:init
   (&key
    ((:msg_feedback __msg_feedback) "")
    )
   (send-super :init)
   (setq _msg_feedback (string __msg_feedback))
   self)
  (:msg_feedback
   (&optional __msg_feedback)
   (if __msg_feedback (setq _msg_feedback __msg_feedback)) _msg_feedback)
  (:serialization-length
   ()
   (+
    ;; string _msg_feedback
    4 (length _msg_feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg_feedback
       (write-long (length _msg_feedback) s) (princ _msg_feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg_feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass add_markers::markerReady
  :super ros::object
  :slots ())

(setf (get add_markers::markerReady :md5sum-) "fdff9e8065741781036b62dff308d310")
(setf (get add_markers::markerReady :datatype-) "add_markers/markerReady")
(setf (get add_markers::markerReady :request) add_markers::markerReadyRequest)
(setf (get add_markers::markerReady :response) add_markers::markerReadyResponse)

(defmethod add_markers::markerReadyRequest
  (:response () (instance add_markers::markerReadyResponse :init)))

(setf (get add_markers::markerReadyRequest :md5sum-) "fdff9e8065741781036b62dff308d310")
(setf (get add_markers::markerReadyRequest :datatype-) "add_markers/markerReadyRequest")
(setf (get add_markers::markerReadyRequest :definition-)
      "int64 ready
---
string msg_feedback
")

(setf (get add_markers::markerReadyResponse :md5sum-) "fdff9e8065741781036b62dff308d310")
(setf (get add_markers::markerReadyResponse :datatype-) "add_markers/markerReadyResponse")
(setf (get add_markers::markerReadyResponse :definition-)
      "int64 ready
---
string msg_feedback
")



(provide :add_markers/markerReady "fdff9e8065741781036b62dff308d310")


