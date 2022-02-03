(define (iter num count)
	;(display count) (newline)
	 (if (<= (abs num) 0.1)
	     count
	     (
		(iter (/ num 3.0) (+ count 1))
		)
	     )
	 )


(iter 120 1)
(iter 1200 1)
(iter 12000 1)
