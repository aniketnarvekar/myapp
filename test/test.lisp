(in-package #:myapp-test)

(def-suite :myapp
  :description "The main suite.")

(def-suite :myapp-basic
  :description "Basic test suite.")
(in-suite :myapp-basic)

(test factorial-tail-recursion
  (is (and
       (= 1 (factorial-tail-recursion 0))
       (= 24 (factorial-tail-recursion 4)))
      "Tail recursion factorial test case.")
  (is (null (factorial-tail-recursion -1))
      "nil for num < 0."))

(test factorial-recursion
  (is (and
       (= 1 (factorial-recursion 0))
       (= 24 (factorial-recursion 4)))
      "Tail recursion factorial test case.")
  (is (null (factorial-recursion -1))
      "nil for num < 0."))
