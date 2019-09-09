; Auto-generated. Do not edit!


(cl:in-package add_markers-srv)


;//! \htmlinclude markerReady-request.msg.html

(cl:defclass <markerReady-request> (roslisp-msg-protocol:ros-message)
  ((ready
    :reader ready
    :initarg :ready
    :type cl:integer
    :initform 0))
)

(cl:defclass markerReady-request (<markerReady-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <markerReady-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'markerReady-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<markerReady-request> is deprecated: use add_markers-srv:markerReady-request instead.")))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <markerReady-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:ready-val is deprecated.  Use add_markers-srv:ready instead.")
  (ready m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <markerReady-request>) ostream)
  "Serializes a message object of type '<markerReady-request>"
  (cl:let* ((signed (cl:slot-value msg 'ready)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <markerReady-request>) istream)
  "Deserializes a message object of type '<markerReady-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ready) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<markerReady-request>)))
  "Returns string type for a service object of type '<markerReady-request>"
  "add_markers/markerReadyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'markerReady-request)))
  "Returns string type for a service object of type 'markerReady-request"
  "add_markers/markerReadyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<markerReady-request>)))
  "Returns md5sum for a message object of type '<markerReady-request>"
  "fdff9e8065741781036b62dff308d310")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'markerReady-request)))
  "Returns md5sum for a message object of type 'markerReady-request"
  "fdff9e8065741781036b62dff308d310")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<markerReady-request>)))
  "Returns full string definition for message of type '<markerReady-request>"
  (cl:format cl:nil "int64 ready~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'markerReady-request)))
  "Returns full string definition for message of type 'markerReady-request"
  (cl:format cl:nil "int64 ready~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <markerReady-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <markerReady-request>))
  "Converts a ROS message object to a list"
  (cl:list 'markerReady-request
    (cl:cons ':ready (ready msg))
))
;//! \htmlinclude markerReady-response.msg.html

(cl:defclass <markerReady-response> (roslisp-msg-protocol:ros-message)
  ((msg_feedback
    :reader msg_feedback
    :initarg :msg_feedback
    :type cl:string
    :initform ""))
)

(cl:defclass markerReady-response (<markerReady-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <markerReady-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'markerReady-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<markerReady-response> is deprecated: use add_markers-srv:markerReady-response instead.")))

(cl:ensure-generic-function 'msg_feedback-val :lambda-list '(m))
(cl:defmethod msg_feedback-val ((m <markerReady-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:msg_feedback-val is deprecated.  Use add_markers-srv:msg_feedback instead.")
  (msg_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <markerReady-response>) ostream)
  "Serializes a message object of type '<markerReady-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg_feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <markerReady-response>) istream)
  "Deserializes a message object of type '<markerReady-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg_feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<markerReady-response>)))
  "Returns string type for a service object of type '<markerReady-response>"
  "add_markers/markerReadyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'markerReady-response)))
  "Returns string type for a service object of type 'markerReady-response"
  "add_markers/markerReadyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<markerReady-response>)))
  "Returns md5sum for a message object of type '<markerReady-response>"
  "fdff9e8065741781036b62dff308d310")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'markerReady-response)))
  "Returns md5sum for a message object of type 'markerReady-response"
  "fdff9e8065741781036b62dff308d310")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<markerReady-response>)))
  "Returns full string definition for message of type '<markerReady-response>"
  (cl:format cl:nil "string msg_feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'markerReady-response)))
  "Returns full string definition for message of type 'markerReady-response"
  (cl:format cl:nil "string msg_feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <markerReady-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <markerReady-response>))
  "Converts a ROS message object to a list"
  (cl:list 'markerReady-response
    (cl:cons ':msg_feedback (msg_feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'markerReady)))
  'markerReady-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'markerReady)))
  'markerReady-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'markerReady)))
  "Returns string type for a service object of type '<markerReady>"
  "add_markers/markerReady")