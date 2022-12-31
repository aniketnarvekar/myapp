;;;; myapp.asd

(asdf:defsystem #:myapp
  :description "Describe myapp here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot #:s-sql #:alexandria #:postmodern #:cl-ppcre #:cl-who)
  :components ((:file "package")
               (:file "myapp"))
  :in-order-to ((test-op (test-op #:myapp/test))))

(defsystem #:myapp/test
  :depends-on (#:myapp #:fiveam)
  :components ((:module "test"
		:components ((:file "package")
			     (:file "test"))))
  :perform (test-op (op c)
		    (symbol-call :fiveam :run-all-tests)))
