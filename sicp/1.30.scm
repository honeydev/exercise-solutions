#lang racket

(define (identify n) n)
(define (inc n) (+ n 1))

(define (sum term a next b)
  (define (iter a result)
    (if (< (- b a) 0)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))
(sum identify 0 inc 4)
