(in-package :cl-user)

(print ">>> Building system....")

(load (merge-pathnames "example.asd" *build-dir*))

(ql:quickload :myapp)

;;; Redefine / extend heroku-toplevel here if necessary.

(print ">>> Done building system")
