(define (product term a next b)
	(if (> a b)
			1
			(* (term a)
				(product term (next a) next b))
	)
)

(define (product-iter term a next b)
	(define (iter a result)
		(if (> a b)
			result
			(iter (next a) (* result (term a)))
		)
	)
	(iter a 1)
)

(define (factorial n)
	(if (= n 1)
		1
		(* n (factorial (- n 1)))
	)
)

(define (identity x) x)
(define (inc x) (+ 1 x))
(define (cube x) (* x x x))

(factorial 5)

(define (factorial n)
	(product identity 1 inc n)
)
(factorial 5)

(product-iter identity 1 inc 5)

(define (pi count-aprox)
	(define (calc x)
		(/ (* x (+ 2 x)) (* (inc x) (inc x)) )
	)
	(define (jump x) (+ 2 x))
	(* 4.0
		(product-iter calc 2 jump count-aprox)
	)
)

(pi 55000)

(define (pi count-aprox)
	(define (calc x)
		(*
			(/
				(* 2 x)
				(- 1 (* 2 x))
			)	
			(/
				(* 2 x)
				(+ 1 (* 2 x))
			)
		)
	)
	(* 2.0
		(product-iter calc 1 inc count-aprox)
	)
)

(pi 55000)
