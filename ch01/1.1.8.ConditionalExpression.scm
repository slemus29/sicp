#lang sicp

(define (square x) (* x x))

;(double 3)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(good-enough? 3 9)

(define (average x y) 
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess (/ x guess)))

(define (test x y) (+ x y))
(define p (test 2 3))

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(sqrt-iter 2 9)
