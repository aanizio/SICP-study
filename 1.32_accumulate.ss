(define (accumulate combiner null-value term a next b)
	(if (> a b)
			null-value
			(combiner 
				(term a)
				(accumulate combiner null-value term (next a) next b)
			)
	)
)

(define (accumulate-iter combiner null-value term a next b)
	(define (iter a result)
		(if (> a b)
				result
				(iter (next a) (combiner result (term a)))
		)
	)
	(iter a null-value)
)

(define (identity x) x)
(define (inc x) (+ 1 x))

(define (product a b)
	(accumulate * 1 identity a inc b)
)

(define (sum a b)
	(accumulate + 0 identity a inc b)
)

(product 1 10)
(sum 1 10)

(define (product-iter a b)
	(accumulate-iter * 1 identity a inc b)
)

(define (sum-iter a b)
	(accumulate-iter + 0 identity a inc b)
)

(product-iter 1 10)
(sum-iter 1 10)

