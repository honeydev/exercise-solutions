#lang racket

(define (identify n) n)
(define (inc n) (+ n 1))

(define (sum term a next b)
  (define (iter a result)
    (if (< (- b a) 0)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))


(define (product-recursive term a next b)
  (if (> a b)
      1
      (* (term a) (product-recursive term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (iter (next a) (* acc (term a)))))
  (iter a 1))

(define (factorial n)
  (product-recursive identify 1 inc n))

(factorial 6)

; 720