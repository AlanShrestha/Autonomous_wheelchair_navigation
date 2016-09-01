; Auto-generated. Do not edit!


(cl:in-package rosserial_arduino-msg)


;//! \htmlinclude wheelchair_base.msg.html

(cl:defclass <wheelchair_base> (roslisp-msg-protocol:ros-message)
  ((gyro
    :reader gyro
    :initarg :gyro
    :type cl:float
    :initform 0.0)
   (compass
    :reader compass
    :initarg :compass
    :type cl:float
    :initform 0.0)
   (lwheel
    :reader lwheel
    :initarg :lwheel
    :type cl:fixnum
    :initform 0)
   (rwheel
    :reader rwheel
    :initarg :rwheel
    :type cl:fixnum
    :initform 0)
   (usonic_1
    :reader usonic_1
    :initarg :usonic_1
    :type cl:fixnum
    :initform 0)
   (usonic_2
    :reader usonic_2
    :initarg :usonic_2
    :type cl:fixnum
    :initform 0)
   (usonic_3
    :reader usonic_3
    :initarg :usonic_3
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass wheelchair_base (<wheelchair_base>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheelchair_base>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheelchair_base)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-msg:<wheelchair_base> is deprecated: use rosserial_arduino-msg:wheelchair_base instead.")))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:gyro-val is deprecated.  Use rosserial_arduino-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'compass-val :lambda-list '(m))
(cl:defmethod compass-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:compass-val is deprecated.  Use rosserial_arduino-msg:compass instead.")
  (compass m))

(cl:ensure-generic-function 'lwheel-val :lambda-list '(m))
(cl:defmethod lwheel-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:lwheel-val is deprecated.  Use rosserial_arduino-msg:lwheel instead.")
  (lwheel m))

(cl:ensure-generic-function 'rwheel-val :lambda-list '(m))
(cl:defmethod rwheel-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:rwheel-val is deprecated.  Use rosserial_arduino-msg:rwheel instead.")
  (rwheel m))

(cl:ensure-generic-function 'usonic_1-val :lambda-list '(m))
(cl:defmethod usonic_1-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:usonic_1-val is deprecated.  Use rosserial_arduino-msg:usonic_1 instead.")
  (usonic_1 m))

(cl:ensure-generic-function 'usonic_2-val :lambda-list '(m))
(cl:defmethod usonic_2-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:usonic_2-val is deprecated.  Use rosserial_arduino-msg:usonic_2 instead.")
  (usonic_2 m))

(cl:ensure-generic-function 'usonic_3-val :lambda-list '(m))
(cl:defmethod usonic_3-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:usonic_3-val is deprecated.  Use rosserial_arduino-msg:usonic_3 instead.")
  (usonic_3 m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <wheelchair_base>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:status-val is deprecated.  Use rosserial_arduino-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheelchair_base>) ostream)
  "Serializes a message object of type '<wheelchair_base>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'compass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lwheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rwheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'usonic_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'usonic_2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'usonic_3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheelchair_base>) istream)
  "Deserializes a message object of type '<wheelchair_base>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compass) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lwheel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rwheel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usonic_1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usonic_2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usonic_3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheelchair_base>)))
  "Returns string type for a message object of type '<wheelchair_base>"
  "rosserial_arduino/wheelchair_base")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheelchair_base)))
  "Returns string type for a message object of type 'wheelchair_base"
  "rosserial_arduino/wheelchair_base")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheelchair_base>)))
  "Returns md5sum for a message object of type '<wheelchair_base>"
  "5c5eb770ca01fbe2c81d102012013b03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheelchair_base)))
  "Returns md5sum for a message object of type 'wheelchair_base"
  "5c5eb770ca01fbe2c81d102012013b03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheelchair_base>)))
  "Returns full string definition for message of type '<wheelchair_base>"
  (cl:format cl:nil "float32 gyro~%float32 compass~%int16 lwheel~%int16 rwheel~%int16 usonic_1~%int16 usonic_2~%int16 usonic_3~%int16 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheelchair_base)))
  "Returns full string definition for message of type 'wheelchair_base"
  (cl:format cl:nil "float32 gyro~%float32 compass~%int16 lwheel~%int16 rwheel~%int16 usonic_1~%int16 usonic_2~%int16 usonic_3~%int16 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheelchair_base>))
  (cl:+ 0
     4
     4
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheelchair_base>))
  "Converts a ROS message object to a list"
  (cl:list 'wheelchair_base
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':compass (compass msg))
    (cl:cons ':lwheel (lwheel msg))
    (cl:cons ':rwheel (rwheel msg))
    (cl:cons ':usonic_1 (usonic_1 msg))
    (cl:cons ':usonic_2 (usonic_2 msg))
    (cl:cons ':usonic_3 (usonic_3 msg))
    (cl:cons ':status (status msg))
))
