; Auto-generated. Do not edit!


(cl:in-package rosserial_arduino-msg)


;//! \htmlinclude drive.msg.html

(cl:defclass <drive> (roslisp-msg-protocol:ros-message)
  ((velocityX
    :reader velocityX
    :initarg :velocityX
    :type cl:float
    :initform 0.0)
   (velocityY
    :reader velocityY
    :initarg :velocityY
    :type cl:float
    :initform 0.0)
   (velocityW
    :reader velocityW
    :initarg :velocityW
    :type cl:float
    :initform 0.0))
)

(cl:defclass drive (<drive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-msg:<drive> is deprecated: use rosserial_arduino-msg:drive instead.")))

(cl:ensure-generic-function 'velocityX-val :lambda-list '(m))
(cl:defmethod velocityX-val ((m <drive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:velocityX-val is deprecated.  Use rosserial_arduino-msg:velocityX instead.")
  (velocityX m))

(cl:ensure-generic-function 'velocityY-val :lambda-list '(m))
(cl:defmethod velocityY-val ((m <drive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:velocityY-val is deprecated.  Use rosserial_arduino-msg:velocityY instead.")
  (velocityY m))

(cl:ensure-generic-function 'velocityW-val :lambda-list '(m))
(cl:defmethod velocityW-val ((m <drive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:velocityW-val is deprecated.  Use rosserial_arduino-msg:velocityW instead.")
  (velocityW m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drive>) ostream)
  "Serializes a message object of type '<drive>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocityX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocityY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocityW))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drive>) istream)
  "Deserializes a message object of type '<drive>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocityX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocityY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocityW) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drive>)))
  "Returns string type for a message object of type '<drive>"
  "rosserial_arduino/drive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drive)))
  "Returns string type for a message object of type 'drive"
  "rosserial_arduino/drive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drive>)))
  "Returns md5sum for a message object of type '<drive>"
  "0adb7866b368a19e280e214c6b1567ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drive)))
  "Returns md5sum for a message object of type 'drive"
  "0adb7866b368a19e280e214c6b1567ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drive>)))
  "Returns full string definition for message of type '<drive>"
  (cl:format cl:nil "float32 velocityX~%float32 velocityY~%float32 velocityW~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drive)))
  "Returns full string definition for message of type 'drive"
  (cl:format cl:nil "float32 velocityX~%float32 velocityY~%float32 velocityW~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drive>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drive>))
  "Converts a ROS message object to a list"
  (cl:list 'drive
    (cl:cons ':velocityX (velocityX msg))
    (cl:cons ':velocityY (velocityY msg))
    (cl:cons ':velocityW (velocityW msg))
))
