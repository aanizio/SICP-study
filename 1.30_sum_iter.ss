(define (sum term a next b)
	(if (> a b)
			0
			(+ (term a)
				(sum term (next a) next b))
	)
)

(define (sum-iter term a next b)
	(define (iter next-A result)
		(if (> next-A b)
			result
			(iter (next next-A) (+ result (term next-A)))
		)
	)
	(iter a 0)
)

(define (identity x) x)
(define (inc x) (+ 1 x))
(define (cube x) (* x x x))

(sum identity 1 inc 10)
(sum-iter identity 1 inc 10)
(sum cube 1 inc 10)
(sum-iter cube 1 inc 10)

(display "Hello world")

