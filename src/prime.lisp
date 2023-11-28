(defpackage thrty-practice
  (:use :cl))
(in-package :thrty-practice/prime)

;; 問題：素数の和
;; 1000以下のすべての素数の和を計算してください。

(defun filter-primes (lst)
  (cond ((< (length lst) 2)
	 lst)
	(t
	 (let ((x (car lst))
	       (ys (cdr lst)))
	   (cons x (filter-primes (remove-if #'(lambda (y) (zerop (mod y x))) ys)))
	   )
	 )
	)
  )

(apply #'+ (filter-primes (loop for i from 2 by 1 until (< 1000 i) collect i)))

;; 76127
