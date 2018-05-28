#lang racket

(define (next test-divisor)
    (if (remainder test-divisor 2)
        (+ 1 test-divisor)
        (+ 2 test-divisor)))

(define (prime? n)
  (num-is-prime n 2))

(define (num-is-prime n divisor)
  (cond ((> (expt divisor 2) n) #t)
      ((= (remainder n divisor) 0) #f)
      (else (num-is-prime n (next divisor)))))

(define (timed-prime-test n)

(start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
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

(search-for-primes 100000000000 110000000000 3)