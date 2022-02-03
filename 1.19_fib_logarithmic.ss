(define (square n) (* n n))

(define (fib-recursive n)
(cond ((= n 0) 0)
((= n 1) 1)
(else (+ (fib (- n 1))
(fib (- n 2))))))

(define (fib n)
	(fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
	(cond 
		((= count 0) b)
		((even? count)
			(fib-iter a
				b
				(square (- 1 q (/ (* b q) a)))
				(square (/ (- b (* b p)) a))
				(/ count 2)))
		(else (fib-iter (+ (* b q) (* a q) (* a p))
										(+ (* b p) (* a q))
										p
										q
										(- count 1)))))

(fib 4)
(fib-recursive 4)
