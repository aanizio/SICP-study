(define (make-segment start-point end-point)
	; return line
	(cons start-point end-point)
)

(define (start-segment line)
	; return point
	(car line)
)

(define (end-segment line)
	; return point
	(cdr line)
)

(define (make-point x y)
	(cons x y)
)

(define (x-point point)
	(car point)
)

(define (y-point point)
	(cdr point)
)

(define (midpoint-segment line)
	; return point
	(define (average a b)
		(/ (+ a b)  2)
	)
	(define start (start-segment line))
	(define end (end-segment line))
	(let (
		(start-x (x-point start))
		(start-y (y-point start))
		(end-x (x-point end))
		(end-y (y-point end)) 
		)
		(make-point 
			(average start-x end-x)
			(average start-y end-y)
		)
	)
)

(define (print-point point)
	(newline)
	(display "(")
	(display (x-point point))
	(display ",")
	(display (y-point point))
	(display ")")
)

(print-point (make-point 1 2))

(define (print-segment line)
	(print-point (start-segment line))
	(print-point (end-segment line))
)

(let (
		(line (make-segment (make-point 3 5) (make-point -1 0)))
	)
	(print-segment line)
	(print-point (midpoint-segment line))
)
