#lang sicp
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))



(f 5)
; applicative-order evaluation: evaluate the arguments and then apply
(sum-of-squares (+ 5 1) (* 5 2))

(sum-of-squares 6 10)

(+ (square 6) (square 10))

(+ (* 6 6) (* 10 10))

(+ 36 100)

136

; normal-order evaluation   