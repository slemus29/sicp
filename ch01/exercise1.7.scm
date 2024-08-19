#lang sicp

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough-rate? prev-guess guess)
  (< (abs (- 1 (/ prev-guess guess))) 0.001)
)

(define (good-enough-hardened? prev-guess guess x)
  (and (good-enough-rate? prev-guess guess) (good-enough? guess x))
)


(define (average x y) 
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess (/ x guess)))


(define (sqrt-iter prev-guess guess x)
  (if (good-enough-hardened? prev-guess guess x)
          guess
          (sqrt-iter guess (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 1.0 x))

(square (sqrt 9))
(square (sqrt 0.000004))
(square (sqrt 100000000))
(square (sqrt 1000000000))


