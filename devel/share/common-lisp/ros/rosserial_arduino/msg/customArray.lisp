; Auto-generated. Do not edit!


(cl:in-package rosserial_arduino-msg)


;//! \htmlinclude customArray.msg.html

(cl:defclass <customArray> (roslisp-msg-protocol:ros-message)
  ((accelX
    :reader accelX
    :initarg :accelX
    :type cl:fixnum
    :initform 0)
   (accelY
    :reader accelY
    :initarg :accelY
    :type cl:fixnum
    :initform 0)
   (accelZ
    :reader accelZ
    :initarg :accelZ
    :type cl:fixnum
    :initform 0)
   (gyroX
    :reader gyroX
    :initarg :gyroX
    :type cl:fixnum
    :initform 0)
   (gyroY
    :reader gyroY
    :initarg :gyroY
    :type cl:fixnum
    :initform 0)
   (gyroZ
    :reader gyroZ
    :initarg :gyroZ
    :type cl:fixnum
    :initform 0)
   (compassX
    :reader compassX
    :initarg :compassX
    :type cl:fixnum
    :initform 0)
   (compassY
    :reader compassY
    :initarg :compassY
    :type cl:fixnum
    :initform 0)
   (compassZ
    :reader compassZ
    :initarg :compassZ
    :type cl:fixnum
    :initform 0))
)

(cl:defclass customArray (<customArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <customArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'customArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-msg:<customArray> is deprecated: use rosserial_arduino-msg:customArray instead.")))

(cl:ensure-generic-function 'accelX-val :lambda-list '(m))
(cl:defmethod accelX-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:accelX-val is deprecated.  Use rosserial_arduino-msg:accelX instead.")
  (accelX m))

(cl:ensure-generic-function 'accelY-val :lambda-list '(m))
(cl:defmethod accelY-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:accelY-val is deprecated.  Use rosserial_arduino-msg:accelY instead.")
  (accelY m))

(cl:ensure-generic-function 'accelZ-val :lambda-list '(m))
(cl:defmethod accelZ-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:accelZ-val is deprecated.  Use rosserial_arduino-msg:accelZ instead.")
  (accelZ m))

(cl:ensure-generic-function 'gyroX-val :lambda-list '(m))
(cl:defmethod gyroX-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:gyroX-val is deprecated.  Use rosserial_arduino-msg:gyroX instead.")
  (gyroX m))

(cl:ensure-generic-function 'gyroY-val :lambda-list '(m))
(cl:defmethod gyroY-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:gyroY-val is deprecated.  Use rosserial_arduino-msg:gyroY instead.")
  (gyroY m))

(cl:ensure-generic-function 'gyroZ-val :lambda-list '(m))
(cl:defmethod gyroZ-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:gyroZ-val is deprecated.  Use rosserial_arduino-msg:gyroZ instead.")
  (gyroZ m))

(cl:ensure-generic-function 'compassX-val :lambda-list '(m))
(cl:defmethod compassX-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:compassX-val is deprecated.  Use rosserial_arduino-msg:compassX instead.")
  (compassX m))

(cl:ensure-generic-function 'compassY-val :lambda-list '(m))
(cl:defmethod compassY-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:compassY-val is deprecated.  Use rosserial_arduino-msg:compassY instead.")
  (compassY m))

(cl:ensure-generic-function 'compassZ-val :lambda-list '(m))
(cl:defmethod compassZ-val ((m <customArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:compassZ-val is deprecated.  Use rosserial_arduino-msg:compassZ instead.")
  (compassZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <customArray>) ostream)
  "Serializes a message object of type '<customArray>"
  (cl:let* ((signed (cl:slot-value msg 'accelX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accelY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accelZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyroX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyroY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyroZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'compassX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'compassY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'compassZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <customArray>) istream)
  "Deserializes a message object of type '<customArray>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accelX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accelY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accelZ) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyroX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyroY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyroZ) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compassX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compassY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compassZ) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<customArray>)))
  "Returns string type for a message object of type '<customArray>"
  "rosserial_arduino/customArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'customArray)))
  "Returns string type for a message object of type 'customArray"
  "rosserial_arduino/customArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<customArray>)))
  "Returns md5sum for a message object of type '<customArray>"
  "fca8c4044d79efc956000f141ce83ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'customArray)))
  "Returns md5sum for a message object of type 'customArray"
  "fca8c4044d79efc956000f141ce83ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<customArray>)))
  "Returns full string definition for message of type '<customArray>"
  (cl:format cl:nil "int16 accelX ~%int16 accelY~%int16 accelZ~%int16 gyroX~%int16 gyroY~%int16 gyroZ~%int16 compassX~%int16 compassY~%int16 compassZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'customArray)))
  "Returns full string definition for message of type 'customArray"
  (cl:format cl:nil "int16 accelX ~%int16 accelY~%int16 accelZ~%int16 gyroX~%int16 gyroY~%int16 gyroZ~%int16 compassX~%int16 compassY~%int16 compassZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <customArray>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <customArray>))
  "Converts a ROS message object to a list"
  (cl:list 'customArray
    (cl:cons ':accelX (accelX msg))
    (cl:cons ':accelY (accelY msg))
    (cl:cons ':accelZ (accelZ msg))
    (cl:cons ':gyroX (gyroX msg))
    (cl:cons ':gyroY (gyroY msg))
    (cl:cons ':gyroZ (gyroZ msg))
    (cl:cons ':compassX (compassX msg))
    (cl:cons ':compassY (compassY msg))
    (cl:cons ':compassZ (compassZ msg))
))
