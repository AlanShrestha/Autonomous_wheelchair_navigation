
(cl:in-package :asdf)

(defsystem "rosserial_arduino-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wheelchair_base" :depends-on ("_package_wheelchair_base"))
    (:file "_package_wheelchair_base" :depends-on ("_package"))
    (:file "Adc" :depends-on ("_package_Adc"))
    (:file "_package_Adc" :depends-on ("_package"))
    (:file "drive" :depends-on ("_package_drive"))
    (:file "_package_drive" :depends-on ("_package"))
    (:file "customArray" :depends-on ("_package_customArray"))
    (:file "_package_customArray" :depends-on ("_package"))
    (:file "Imu" :depends-on ("_package_Imu"))
    (:file "_package_Imu" :depends-on ("_package"))
    (:file "command" :depends-on ("_package_command"))
    (:file "_package_command" :depends-on ("_package"))
  ))