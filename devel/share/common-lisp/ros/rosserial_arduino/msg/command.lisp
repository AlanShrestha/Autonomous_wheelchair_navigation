; Auto-generated. Do not edit!


(cl:in-package rosserial_arduino-msg)


;//! \htmlinclude command.msg.html

(cl:defclass <command> (roslisp-msg-protocol:ros-message)
  ((lwheel_vtarget
    :reader lwheel_vtarget
    :initarg :lwheel_vtarget
    :type cl:float
    :initform 0.0)
   (rwheel_vtarget
    :reader rwheel_vtarget
    :initarg :rwheel_vtarget
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass command (<command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-msg:<command> is deprecated: use rosserial_arduino-msg:command instead.")))

(cl:ensure-generic-function 'lwheel_vtarget-val :lambda-list '(m))
(cl:defmethod lwheel_vtarget-val ((m <command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:lwheel_vtarget-val is deprecated.  Use rosserial_arduino-msg:lwheel_vtarget instead.")
  (lwheel_vtarget m))

(cl:ensure-generic-function 'rwheel_vtarget-val :lambda-list '(m))
(cl:defmethod rwheel_vtarget-val ((m <command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:rwheel_vtarget-val is deprecated.  Use rosserial_arduino-msg:rwheel_vtarget instead.")
  (rwheel_vtarget m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:mode-val is deprecated.  Use rosserial_arduino-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command>) ostream)
  "Serializes a message object of type '<command>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lwheel_vtarget))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rwheel_vtarget))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command>) istream)
  "Deserializes a message object of type '<command>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lwheel_vtarget) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rwheel_vtarget) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command>)))
  "Returns string type for a message object of type '<command>"
  "rosserial_arduino/command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command)))
  "Returns string type for a message object of type 'command"
  "rosserial_arduino/command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command>)))
  "Returns md5sum for a message object of type '<command>"
  "e50c6157766eba7ad5bf8e5e1c37c251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command)))
  "Returns md5sum for a message object of type 'command"
  "e50c6157766eba7ad5bf8e5e1c37c251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command>)))
  "Returns full string definition for message of type '<command>"
  (cl:format cl:nil "float32 lwheel_vtarget~%float32 rwheel_vtarget~%int16 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command)))
  "Returns full string definition for message of type 'command"
  (cl:format cl:nil "float32 lwheel_vtarget~%float32 rwheel_vtarget~%int16 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command>))
  (cl:+ 0
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command>))
  "Converts a ROS message object to a list"
  (cl:list 'command
    (cl:cons ':lwheel_vtarget (lwheel_vtarget msg))
    (cl:cons ':rwheel_vtarget (rwheel_vtarget msg))
    (cl:cons ':mode (mode msg))
))
