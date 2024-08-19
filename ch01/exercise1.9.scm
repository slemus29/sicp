#lang sicp

(define (A a b)
  (if (= a 0) 
      b 
      (inc (A (dec a) b))))

(A 4 5)

;(inc (A (3) (5)))
(inc (inc (A (2) (5) )))
(inc (inc (inc (A (1) (5)))))
(inc (inc (inc ( inc ( A (0) (5) ) ))))
(inc (inc (inc ( inc ( 5 ) ))))
(inc (inc (inc ( 6 ))))
(inc (inc (7)))
(inc (8))
(9)

(define (B a b)
  (if (= a 0) 
      b 
      (B (dec a) (inc b))))

(B 4 5)

()

