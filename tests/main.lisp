(defpackage thrty-practice/tests/main
  (:use :cl
        :thrty-practice
        :rove))
(in-package :thrty-practice/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :thrty-practice)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
