(define (gcd a b)
(if (= b 0)
a
(gcd b (remainder a b))))

(gcd 206 40)
(if (= 40 0) 206)
	(gcd 40 (remainder 206 40))
	
(gcd 40 (remainder 206 40)
	(if (= (remainder 206 40) 0) 40) - 6 - 1 remainder
	(gcd (remainder 206 40) (remainder 40
								(remainder 206 40)))
)

(gcd (remainder 206 40) (remainder 40 (remainder 206 40))
	(if (= 0 (remainder 40 (remainder 206 40)))) - 4 - 2 remainder
	(remainder 206 40)
	(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
)

(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
	(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) - 2 - 4 раза
		(remainder 40 (remainder 206 40))
	)
	(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40))   (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
)

(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40))   (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
	(if (= (remainder (remainder 40 (remainder 206 40))   (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0) - 0 - 7 раз
		(remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
	)
	(gcd (remainder (remainder 40 (remainder 206 40))   (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) (remainder 
	(remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
	(remainder (remainder 40 (remainder 206 40))   (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
	))
)

(remainder (remainder 206 40) (remainder 40 (remainder 206 40))) - 2 - 4 раза

Всего 18 раз.