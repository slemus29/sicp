#lang sicp

(define (test2 x) (+ x x))
(define (test a b) 
      (cond ((> a b) a)
        (else (test ((test2 a) b))))
)

(test 1 3)
