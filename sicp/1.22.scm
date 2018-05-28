#lang racket

; Для удобства код данный в учебнике был немного переписан
; Из-за высокой вычислительной мощности современных компьютеров замеры проводились на более высоких числах

(define (prime? n)
  (num-is-prime n 2))

(define (num-is-prime n divisor)
  (cond ((> (expt divisor 2) n) #t)
      ((= (remainder n divisor) 0) #f)
      (else (num-is-prime n (+ divisor 1)))))

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

; *** 
;100000000003
;78
; *** 
;100000000019
;68
; *** 
;100000000057
;90
;end

(search-for-primes 1000000000000 1100000000000 3)
; *** 
;1000000000039
;221
; *** 
;1000000000061
; 211
; *** 
;1000000000063
;270
;end

(search-for-primes 10000000000000 11000000000000 3)

; *** 
;10000000000037
;830
; *** 
;10000000000051
;754
; *** 
;10000000000099
;831
;end