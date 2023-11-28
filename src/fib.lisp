(defpackage thrty-practice
  (:use :cl))
(in-package :thrty-practice/fib)

;; 問題：フィボナッチ数列の偶数値の和
;; フィボナッチ数列は、次のように定義されます…。各数は、直前の2つの数の和となります
;; 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
;; このフィボナッチ数列において、4百万（4,000,000）以下の値であるすべての偶数値の和を計算してください

(defparameter *memo* (make-hash-table))

(defun calc (n)
  (let ((fv (fib n)))
    (cond ((< fv 4000000)
	   (+ (if (evenp fv)
		  fv
		  0)
	      (calc (1+ n))
	      )
	   )
	  (t 0))
    )
  )
(defun fib (n)
  (cond ((gethash n *memo*)
	 (gethash n *memo*))
	((< n 2)
	 n)
	(t
	 (let ((v (+ (fib (1- n)) (fib (- n 2)))))
	   (setf (gethash n *memo*) v)
	   v)
	 )
	)
  )

(calc 2)
;; 答え 4613732
