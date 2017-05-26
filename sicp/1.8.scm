(define (sqrt-iter guess oldguess x)
(if (good-enough? guess oldguess x)
guess
(sqrt-iter (improve guess x) guess
x)))
; Старый good-enough?
; (define (good-enough? guess x)
; (< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
(average guess (/ x guess)))
(define (average x y)
(/ (+ x y) 2))
(define (square x) (* x x))
(define (good-enough? guess oldguess x)
(< (abs (- guess oldguess)) 0.00001))