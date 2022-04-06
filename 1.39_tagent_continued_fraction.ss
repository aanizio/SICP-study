; TODO: rewrite to use cont-frac or cont-frac-iter function

(define (tan-cf x k)
	(define (calc i)
		(if (>= i k)
			1
			(- i (/ (square x) (calc (+ 2 i))))
		)
	)
	(/ x (calc 1))
)

(tan-cf 1.0472 10)
