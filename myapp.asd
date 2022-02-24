;;;; myapp.asd

(asdf:defsystem #:myapp
  :description "Describe myapp here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot #:s-sql #:alexandria #:postmodern #:cl-ppcre)
  :components ((:file "package")
               (:file "myapp")))
