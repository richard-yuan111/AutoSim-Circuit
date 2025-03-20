
(cl:in-package :asdf)

(defsystem "scale_truck_control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "lane" :depends-on ("_package_lane"))
    (:file "_package_lane" :depends-on ("_package"))
    (:file "lane_coef" :depends-on ("_package_lane_coef"))
    (:file "_package_lane_coef" :depends-on ("_package"))
    (:file "lrc2ocr" :depends-on ("_package_lrc2ocr"))
    (:file "_package_lrc2ocr" :depends-on ("_package"))
    (:file "lrc2xav" :depends-on ("_package_lrc2xav"))
    (:file "_package_lrc2xav" :depends-on ("_package"))
    (:file "ocr2lrc" :depends-on ("_package_ocr2lrc"))
    (:file "_package_ocr2lrc" :depends-on ("_package"))
    (:file "xav2lrc" :depends-on ("_package_xav2lrc"))
    (:file "_package_xav2lrc" :depends-on ("_package"))
  ))