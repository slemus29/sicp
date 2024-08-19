#lang sicp

(define (abs x) 
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x)))
)

;(define (abs x)
;    (cond (< x 0) (-x))
;          (else x)
;)

(define (abs2 x)
    (if (< x 0)
        (- x)
        x
    )
)

(abs 0)
(abs2 -6)

(define x 7)
(and (> x 5) (< x 10))


(define (=> x y)
    (or (> x y) (= x y))
)

(=> 4 2)

(= 4 2)

(/ 
    (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
    (* 3 (* (- 6 2) (- 2 7)))
)

(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))


(define (sum-large-squares x y z) 
    (if (or (> x y) (> x z))
        (cond ((> y z) (sum-squares x y))
              (else (sum-squares x z)))
        (sum-squares z y)
    )
)

; sum of the squares of the two larger numbers
(sum-large-squares 1 3 2)
(sum-large-squares 3 1 2)
(sum-large-squares 2 3 1)
(sum-large-squares 5 1 5)
(sum-large-squares 5 5 5)
(sum-large-squares 6 1 1)



