;; Auto-generated. Do not edit!


(when (boundp 'erp42::input)
  (if (not (find-package "ERP42"))
    (make-package "ERP42"))
  (shadow 'input (find-package "ERP42")))
(unless (find-package "ERP42::INPUT")
  (make-package "ERP42::INPUT"))

(in-package "ROS")
;;//! \htmlinclude input.msg.html


(defclass erp42::input
  :super ros::object
  :slots (_Auto _Manual _ESTOP _Gear _Speed_mps _Speed_kph _Steer _Steer_degree _Brake _Alive ))

(defmethod erp42::input
  (:init
   (&key
    ((:Auto __Auto) nil)
    ((:Manual __Manual) nil)
    ((:ESTOP __ESTOP) nil)
    ((:Gear __Gear) 0)
    ((:Speed_mps __Speed_mps) 0.0)
    ((:Speed_kph __Speed_kph) 0.0)
    ((:Steer __Steer) 0)
    ((:Steer_degree __Steer_degree) 0.0)
    ((:Brake __Brake) 0)
    ((:Alive __Alive) 0)
    )
   (send-super :init)
   (setq _Auto __Auto)
   (setq _Manual __Manual)
   (setq _ESTOP __ESTOP)
   (setq _Gear (round __Gear))
   (setq _Speed_mps (float __Speed_mps))
   (setq _Speed_kph (float __Speed_kph))
   (setq _Steer (round __Steer))
   (setq _Steer_degree (float __Steer_degree))
   (setq _Brake (round __Brake))
   (setq _Alive (round __Alive))
   self)
  (:Auto
   (&optional __Auto)
   (if __Auto (setq _Auto __Auto)) _Auto)
  (:Manual
   (&optional __Manual)
   (if __Manual (setq _Manual __Manual)) _Manual)
  (:ESTOP
   (&optional __ESTOP)
   (if __ESTOP (setq _ESTOP __ESTOP)) _ESTOP)
  (:Gear
   (&optional __Gear)
   (if __Gear (setq _Gear __Gear)) _Gear)
  (:Speed_mps
   (&optional __Speed_mps)
   (if __Speed_mps (setq _Speed_mps __Speed_mps)) _Speed_mps)
  (:Speed_kph
   (&optional __Speed_kph)
   (if __Speed_kph (setq _Speed_kph __Speed_kph)) _Speed_kph)
  (:Steer
   (&optional __Steer)
   (if __Steer (setq _Steer __Steer)) _Steer)
  (:Steer_degree
   (&optional __Steer_degree)
   (if __Steer_degree (setq _Steer_degree __Steer_degree)) _Steer_degree)
  (:Brake
   (&optional __Brake)
   (if __Brake (setq _Brake __Brake)) _Brake)
  (:Alive
   (&optional __Alive)
   (if __Alive (setq _Alive __Alive)) _Alive)
  (:serialization-length
   ()
   (+
    ;; bool _Auto
    1
    ;; bool _Manual
    1
    ;; bool _ESTOP
    1
    ;; int32 _Gear
    4
    ;; float64 _Speed_mps
    8
    ;; float64 _Speed_kph
    8
    ;; int32 _Steer
    4
    ;; float64 _Steer_degree
    8
    ;; int32 _Brake
    4
    ;; int32 _Alive
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Auto
       (if _Auto (write-byte -1 s) (write-byte 0 s))
     ;; bool _Manual
       (if _Manual (write-byte -1 s) (write-byte 0 s))
     ;; bool _ESTOP
       (if _ESTOP (write-byte -1 s) (write-byte 0 s))
     ;; int32 _Gear
       (write-long _Gear s)
     ;; float64 _Speed_mps
       (sys::poke _Speed_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Speed_kph
       (sys::poke _Speed_kph (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Steer
       (write-long _Steer s)
     ;; float64 _Steer_degree
       (sys::poke _Steer_degree (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Brake
       (write-long _Brake s)
     ;; int32 _Alive
       (write-long _Alive s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Auto
     (setq _Auto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Manual
     (setq _Manual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ESTOP
     (setq _ESTOP (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _Gear
     (setq _Gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _Speed_mps
     (setq _Speed_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Speed_kph
     (setq _Speed_kph (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Steer
     (setq _Steer (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _Steer_degree
     (setq _Steer_degree (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Brake
     (setq _Brake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Alive
     (setq _Alive (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get erp42::input :md5sum-) "33d5d4e4e40e9f892c268f2f4f3ea626")
(setf (get erp42::input :datatype-) "erp42/input")
(setf (get erp42::input :definition-)
      "bool Auto
bool Manual
bool ESTOP
int32 Gear
float64 Speed_mps
float64 Speed_kph
int32 Steer
float64 Steer_degree
int32  Brake
int32 Alive


")



(provide :erp42/input "33d5d4e4e40e9f892c268f2f4f3ea626")


