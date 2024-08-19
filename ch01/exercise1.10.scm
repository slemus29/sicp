#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


;(A 0 1) = 8
(A 2 5)
(A 3 3)

; A(0) ((A (1) (2)))
; A(0) ( A(0) A(1 1) )
; A(0) ( A(0) 2 )
; A(0) ( 4 )
; 8


; A(1) ((A (2) (3)))
; A(1) ((A (1) A (2) (2)))
; A(1) ((A (1) A (1) A (2) (1)))
; A(1) ((A (1) A (1) 2))
; A(1) ((A (1) A (0) A(1) (1))
; A(1) ((A (1) A (0) 2)
; A(1) ((A (1) 4)
; A(1) ((A(0) (A (1) 3))
; A(1) ((A(0) A (0) (A (1) 2))
; A(1) ((A(0) A (0) (A(0) A (1) 1))
; A(1) ((A(0) A (0) (A(0) 2))
; A(1) ((A(0) A (0) (4))
; A(1) ((A(0) 8)
; A(1) (16)
;(A(0 A(1 15)))
;(A(0 A(0 A(1 15))))





