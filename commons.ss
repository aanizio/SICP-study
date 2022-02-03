(define (greatest-common-divisor a b)
	(if (= b 0)
		a
		(greatest-common-divisor b (remainder a b))	
	)
)


(define (even? a) (= (remainder a 2) 0))
(define (identity x) x)
(define (inc x) (+ 1 x))
