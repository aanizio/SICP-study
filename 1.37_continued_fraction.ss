(define (cont-frac n d k)
	(define (calc i)
		(if (= i k)
			(/ (n i) (d i))
			(/ (n i) (+ (d i) (calc (+ 1 i))))
		)
	)
	(calc 1)
)

(define (cont-frac-iter n d k)
	(define (calc i result)
		(if (= i k)
			result
			(calc
				(+ 1 i)
				(/ (n i) (+ (d i) result))
			)
		)
	)
	(calc 0 0)
)

(cont-frac
	(lambda (i) 1.0)
	(lambda (i) 1.0)
	20
)

(cont-frac-iter
	(lambda (i) 1.0)
	(lambda (i) 1.0)
	20
)

