; Auto-generated. Do not edit!


(cl:in-package erp42-msg)


;//! \htmlinclude feedback.msg.html

(cl:defclass <feedback> (roslisp-msg-protocol:ros-message)
  ((Auto
    :reader Auto
    :initarg :Auto
    :type cl:boolean
    :initform cl:nil)
   (Manual
    :reader Manual
    :initarg :Manual
    :type cl:boolean
    :initform cl:nil)
   (ESTOP
    :reader ESTOP
    :initarg :ESTOP
    :type cl:boolean
    :initform cl:nil)
   (Gear
    :reader Gear
    :initarg :Gear
    :type cl:integer
    :initform 0)
   (Speed_mps
    :reader Speed_mps
    :initarg :Speed_mps
    :type cl:float
    :initform 0.0)
   (Speed_kph
    :reader Speed_kph
    :initarg :Speed_kph
    :type cl:float
    :initform 0.0)
   (Steer
    :reader Steer
    :initarg :Steer
    :type cl:integer
    :initform 0)
   (Steer_degree
    :reader Steer_degree
    :initarg :Steer_degree
    :type cl:float
    :initform 0.0)
   (Brake
    :reader Brake
    :initarg :Brake
    :type cl:integer
    :initform 0)
   (Alive
    :reader Alive
    :initarg :Alive
    :type cl:integer
    :initform 0)
   (Encoder
    :reader Encoder
    :initarg :Encoder
    :type cl:integer
    :initform 0))
)

(cl:defclass feedback (<feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name erp42-msg:<feedback> is deprecated: use erp42-msg:feedback instead.")))

(cl:ensure-generic-function 'Auto-val :lambda-list '(m))
(cl:defmethod Auto-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Auto-val is deprecated.  Use erp42-msg:Auto instead.")
  (Auto m))

(cl:ensure-generic-function 'Manual-val :lambda-list '(m))
(cl:defmethod Manual-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Manual-val is deprecated.  Use erp42-msg:Manual instead.")
  (Manual m))

(cl:ensure-generic-function 'ESTOP-val :lambda-list '(m))
(cl:defmethod ESTOP-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:ESTOP-val is deprecated.  Use erp42-msg:ESTOP instead.")
  (ESTOP m))

(cl:ensure-generic-function 'Gear-val :lambda-list '(m))
(cl:defmethod Gear-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Gear-val is deprecated.  Use erp42-msg:Gear instead.")
  (Gear m))

(cl:ensure-generic-function 'Speed_mps-val :lambda-list '(m))
(cl:defmethod Speed_mps-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Speed_mps-val is deprecated.  Use erp42-msg:Speed_mps instead.")
  (Speed_mps m))

(cl:ensure-generic-function 'Speed_kph-val :lambda-list '(m))
(cl:defmethod Speed_kph-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Speed_kph-val is deprecated.  Use erp42-msg:Speed_kph instead.")
  (Speed_kph m))

(cl:ensure-generic-function 'Steer-val :lambda-list '(m))
(cl:defmethod Steer-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Steer-val is deprecated.  Use erp42-msg:Steer instead.")
  (Steer m))

(cl:ensure-generic-function 'Steer_degree-val :lambda-list '(m))
(cl:defmethod Steer_degree-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Steer_degree-val is deprecated.  Use erp42-msg:Steer_degree instead.")
  (Steer_degree m))

(cl:ensure-generic-function 'Brake-val :lambda-list '(m))
(cl:defmethod Brake-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Brake-val is deprecated.  Use erp42-msg:Brake instead.")
  (Brake m))

(cl:ensure-generic-function 'Alive-val :lambda-list '(m))
(cl:defmethod Alive-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Alive-val is deprecated.  Use erp42-msg:Alive instead.")
  (Alive m))

(cl:ensure-generic-function 'Encoder-val :lambda-list '(m))
(cl:defmethod Encoder-val ((m <feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erp42-msg:Encoder-val is deprecated.  Use erp42-msg:Encoder instead.")
  (Encoder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedback>) ostream)
  "Serializes a message object of type '<feedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Auto) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Manual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ESTOP) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Speed_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Speed_kph))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Steer)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Steer_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Brake)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Alive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedback>) istream)
  "Deserializes a message object of type '<feedback>"
    (cl:setf (cl:slot-value msg 'Auto) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Manual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ESTOP) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Speed_mps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Speed_kph) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Steer) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Steer_degree) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Brake) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Alive) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedback>)))
  "Returns string type for a message object of type '<feedback>"
  "erp42/feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedback)))
  "Returns string type for a message object of type 'feedback"
  "erp42/feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedback>)))
  "Returns md5sum for a message object of type '<feedback>"
  "1f6f296be65b155dbb9eb4c8c2a16fdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedback)))
  "Returns md5sum for a message object of type 'feedback"
  "1f6f296be65b155dbb9eb4c8c2a16fdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedback>)))
  "Returns full string definition for message of type '<feedback>"
  (cl:format cl:nil "bool Auto~%bool Manual~%bool ESTOP~%int32 Gear~%float64 Speed_mps~%float64 Speed_kph~%int32 Steer~%float64 Steer_degree~%int32  Brake~%int32 Alive~%int32 Encoder~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedback)))
  "Returns full string definition for message of type 'feedback"
  (cl:format cl:nil "bool Auto~%bool Manual~%bool ESTOP~%int32 Gear~%float64 Speed_mps~%float64 Speed_kph~%int32 Steer~%float64 Steer_degree~%int32  Brake~%int32 Alive~%int32 Encoder~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feedback>))
  (cl:+ 0
     1
     1
     1
     4
     8
     8
     4
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'feedback
    (cl:cons ':Auto (Auto msg))
    (cl:cons ':Manual (Manual msg))
    (cl:cons ':ESTOP (ESTOP msg))
    (cl:cons ':Gear (Gear msg))
    (cl:cons ':Speed_mps (Speed_mps msg))
    (cl:cons ':Speed_kph (Speed_kph msg))
    (cl:cons ':Steer (Steer msg))
    (cl:cons ':Steer_degree (Steer_degree msg))
    (cl:cons ':Brake (Brake msg))
    (cl:cons ':Alive (Alive msg))
    (cl:cons ':Encoder (Encoder msg))
))
