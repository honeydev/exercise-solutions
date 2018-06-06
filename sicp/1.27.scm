#lang racket
(define (ferma-test n)
  (define (square n) (* n n))
  (define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder (square (expmod base (/ exp 2) m))
                      m))
          (else
           (remainder (* base (expmod base (- exp 1) m))
                      m))))
  
  (define (ferma-test-all start end)
    (cond ((= start (- end 1)) #t)
          ((not (equal? (expmod start end end) start)) #f)
          (else (ferma-test-all (+ 1 start) end))))
  (ferma-test-all 2 n))

(ferma-test 561)
;t
(ferma-test 1105)
;t
(ferma-test 1729)
;t
(ferma-test 2465)
;t
(ferma-test 2821)
;t
(ferma-test 6601)
;t