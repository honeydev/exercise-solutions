#lang racket

(define (square n) (* n n))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (expmod base exp m)
(cond ((= exp 0) 1)
((even? exp)
(remainder (square (expmod base (/ exp 2) m))
m))
(else
(remainder (* base (expmod base (- exp 1) m))
m))))

(define (timed-prime-test n)

(start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 5)
      (report-prime n (- (current-milliseconds) start-time))
      #f))


(define (report-prime n elapsed-time)
 (newline)
(display " *** ")
(newline)
(display n)
(newline)
(display elapsed-time)
  #t)

(define (report-end)
 (newline)
  (display "end"))

(define (search-for-primes start end counter)
  (cond ((or (> start end) (= counter 0)) (report-end))
        ((timed-prime-test start) (search-for-primes (+ start 1) end (- counter 1)))
        (else (search-for-primes (+ start 1) end counter))))

