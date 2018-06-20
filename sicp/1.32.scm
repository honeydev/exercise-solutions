#lang racket

(define (identify n) n)
(define (inc n) (+ n 1))
(define (accamulate-recursive combainer null-value term a next b)
  (if (> a b)
      null-value
      (combainer (term a) (accamulate-recursive combainer null-value term (next a) next b))))

(define (accamulate-iter combainer null-value term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (iter (next a) (combainer (term a) acc))))
  (iter a null-value))

(define (sum term a next b)
  (define (sum-combainer term-result next-val)
    (+ term-result next-val))
  (accamulate-iter sum-combainer 0 term a next b))

(define (product term a next b)
  (define (product-combainer term-result next-val)
    (* term-result next-val))
  (accamulate-recursive product-combainer 1 term a next b))


(sum identify 0 inc 5)
;15
(product identify 1 inc 6)
;720