#lang racket
(define (square n) (* n n))
(define (inc n) (+ n 1))

(define (filtered-accumulate combainer filter null-value term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (if (filter a)
         (iter (next a) (combainer (term a) acc))
         (iter (next a) (combainer null-value acc)))))
  (iter a null-value))

(define (sum-prime a b)
  (define (prime? n)
    (define (prime-iter a b)
      (cond ((> (square a) b) #t)
            ((= (remainder b a) 0) #f)
            (else (prime-iter (+ a 1) b))))
    (if (= n 2)
        #f
        (prime-iter 2 n)))
  (define (sum-combainer term-result next-val)
    (+ term-result next-val))

  (filtered-accumulate sum-combainer prime? 0 square 1 inc 13))


(define (product-relation-prime a b)
  (define (prime-relation-number? a)
    (define (prime-relation-iter a b divisor)
      (cond ((= divisor 1) #t)
            ((and (= (remainder a divisor) 0) (= (remainder b divisor) 0)) #f)
            (else (prime-relation-iter a b (- divisor 1)))))
    (prime-relation-iter a b a))
  
  (define (product-combainer term-result next-val)
    (* term-result next-val))

  (filtered-accumulate product-combainer prime-relation-number? 1 square 1 inc 5))

(sum-prime 1 13)
 ;374
(product-relation-prime 1 13)
 ;576