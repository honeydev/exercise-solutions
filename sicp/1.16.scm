#lang racket

(define (fast-expt b n)
	(fast-expt-iter 1 b n))

(define (fast-expt-iter a b n) 
	(cond ((= n 1) b)
		((even? n) (fast-expt-iter a (* a (square b)) (/ n 2)))
		(else (fast-expt-iter a (* b a) (- n 1)))))

(define (square x) (* x x))

(fast-expt 2 4)