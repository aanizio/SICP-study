(load "1.22_search_primality.ss")
(load "commons.ss")

(define (filtered-accumulate predicate? combiner null-value term a next b)
	(if (> a b)
		null-value
		(combiner 
			(if (predicate? a) (term a) null-value)
			(filtered-accumulate predicate? combiner null-value term (next a) next b)
		)
	)
)

(filtered-accumulate even? + 0 identity 1 inc 10)

; is prime loaded?
(prime? 3)

(define (sum-square-primes a b)
	(define (square x) (* x x))
	(filtered-accumulate prime? + 0 square a inc b)
)

(= (sum-square-primes 1 10) 88)

; 1 2 3 4 5 6 7 8 9 10
; 1 2 3   5   7   
; 1 4 9   25  49
; 5   34      49
; 39          49
; 88

(define (product-relative-prime n)
	(define (gcd i) (= (greatest-common-divisor i n) 1))
	(filtered-accumulate gcd * 1 identity 1 inc n)
)

(product-relative-prime 10)

; 1 2 3 4 5 6 7 8 9 10
; 1   3     	7   9 10
; 
