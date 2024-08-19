#lang sicp


(define (p) (p))
(define (f) 10)

(define (test x y) 
  (if (= x 0) 
      0 
      y))

(test 0 (p))
