
(cl:in-package :asdf)

(defsystem "add_markers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "markerReady" :depends-on ("_package_markerReady"))
    (:file "_package_markerReady" :depends-on ("_package"))
  ))