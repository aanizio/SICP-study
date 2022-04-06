(define (double f)
	(lambda (x) (f (f x)))
)

(define inc (lambda (x) (+ 1 x)))

(inc 0)

((double inc) 1)

(((double (double double)) inc) 5)
