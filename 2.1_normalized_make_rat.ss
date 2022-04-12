(define (make-rat n d)
	(if (and (< n 0) (< d 0)) ; both negative
		(cons (* -1 n) (* -1 d))
		(if (< d 0) ; only denominator negative
			(cons (* -1 n) (* -1 d))
			(cons n d)
		)
	)
)

(define (numer rat) (car rat))
(define (denom rat) (cdr rat))

; both positive, return positive
(let ((one-half (make-rat 1 2)))
	(and
		(= (numer one-half) 1)
		(= (denom one-half) 2)
	)
)

; negative denominator, return negative numerator
(let ((one-half-neg (make-rat 1 -2)))
	(and
		(= (numer one-half-neg) -1)
		(= (denom one-half-neg) 2)
	)
)

; negative numerator, return negative numerator
(let ((one-half-neg (make-rat -1 2)))
	(and
		(= (numer one-half-neg) -1)
		(= (denom one-half-neg) 2)
	)
)

; negative rational number, return positive numbers
(let ((one-half (make-rat -1 -2)))
	(and
		(= (numer one-half) 1)
		(= (denom one-half) 2)
	)
)
