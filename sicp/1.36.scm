(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess counter)
    (let ((next (f guess)))
      (display next)
      (newline)
      (display "counter ")
      (display counter)
      (newline)
      (if (close-enough? guess next)
          next
          (try next (+ counter 1)))))
  (try first-guess 1))
  
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)
(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)

9.965784284662087
counter 1
3.004472209841214
counter 2
6.279195757507157
counter 3
3.759850702401539
counter 4
5.215843784925895
counter 5
4.182207192401397
counter 6
4.8277650983445906
counter 7
4.387593384662677
counter 8
4.671250085763899
counter 9
4.481403616895052
counter 10
4.6053657460929
counter 11
4.5230849678718865
counter 12
4.577114682047341
counter 13
4.541382480151454
counter 14
4.564903245230833
counter 15
4.549372679303342
counter 16
4.559606491913287
counter 17
4.552853875788271
counter 18
4.557305529748263
counter 19
4.554369064436181
counter 20
4.556305311532999
counter 21
4.555028263573554
counter 22
4.555870396702851
counter 23
4.555315001192079
counter 24
4.5556812635433275
counter 25
4.555439715736846
counter 26
4.555599009998291
counter 27
4.555493957531389
counter 28
4.555563237292884
counter 29
4.555563237292884
with average
5.9828921423310435
counter 1
4.922168721308343
counter 2
4.628224318195455
counter 3
4.568346513136242
counter 4
4.5577305909237005
counter 5
4.555909809045131
counter 6
4.555599411610624
counter 7
4.5555465521473675
counter 8
