(define (fixed-point f first-guess tolerance) 
  (define (close-enough? v1 v2) 
    (< (abs (- v1 v2)) tolerance)) 
  (define (try guess) 
    (let ((next (f guess))) 
         (if (close-enough? guess next) 
             next 
             (try next)))) 
  (try first-guess))

(define golden-ratio (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0 0.000001))

 ;recursive
(define (cont-fract n d k)
  (define (cont-rec counter)
    (/ (n counter) (+ (d counter)
                      (if (> counter k)
                          0
                          (cont-rec (+ counter 1))))))

  (cont-rec 1)
 )
 
(define (cont-fract-addapter k)
   (/ 1(cont-fract (lambda (x) 1.0) (lambda (x) 1.0) k)))

(define (cont-fract-test cont-fract golden-ratio)
   (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 0.00001))
   (define (try counter)
    (let ((next (cont-fract counter)))
      (if (close-enough? next golden-ratio)
          counter
          (try (+ counter 1)))))
  (try 1))

(cont-fract-test cont-fract-addapter golden-ratio)
;12

;iterative
(define (cont-fract-iter n d k)
  (define (iteration counter acc)
    (if (> counter k)
        acc
        (iteration (+ counter 1) (/ (n counter) (+ (d counter) acc)))))
  (/ 1 (iteration 1 0))
    )
(cont-fract-iter (lambda (x) 1.0) (lambda (x) 1.0) 100)
