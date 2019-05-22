
(cl:in-package :asdf)

(defsystem "erp42-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "feedback" :depends-on ("_package_feedback"))
    (:file "_package_feedback" :depends-on ("_package"))
    (:file "input" :depends-on ("_package_input"))
    (:file "_package_input" :depends-on ("_package"))
  ))