#lang racket


((lambda (x y z) (+ x y (expt 2 z))) 1 2 3)

(define (f g)
  (g 2))
(f f)
(f 2)
(2 2)
;not procedure given 2