#lang racket

(define (rabin-test n)

  (define (square n) (* n n))

  (define (rabin-test-concret-num a n)
    (if (= (expmod a (- n 1) n) 1)
        #t
        #f
        ))

  (define (check-on-trivial a n)
    (if (and (not (= a 1))
             (not (= a (- n 1)))
             (= (remainder (square a) n) 1))
        0
        (remainder (square a) n)))

  (define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
           (check-on-trivial (expmod base (/ exp 2) m) m))
          (else
           (remainder (* base (expmod base (- exp 1) m))
                      m))))

  (define (rabin-multiple a n false-counter)
    (if (< a 2)
        #t
        (cond ((> false-counter (/ n 2)) #f)
              ((rabin-test-concret-num a n) (rabin-multiple (- a 1) n false-counter))
              (else (rabin-multiple (- a 1) n (+ false-counter 1))))))
  
  (rabin-multiple n n 0))

(rabin-test 561)
;f
(rabin-test 1105)
;f
(rabin-test 1729)
;f
(rabin-test 2465)
;f
(rabin-test 2821)
;f
(rabin-test 6601)
;f