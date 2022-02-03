; check largest power of 2

(define (is_power_of_two number)
	(= (bitwise-and number (- number 1)) 0)
)


(define (multiply a b)
	; ancient Egyptian multiplication
	(define (powers base b num sum)
		(define result (- base num))
		(cond
			((<= num 0) sum)
			((is_power_of_two num) (display result) (powers result b result (+ sum (* num b))))
			(else (powers base b (- num 1) sum))
		)
	)
	(if (< a b) ; a should be greater than b for the calculation to work
			(multiply b a)
			(powers a b a 0)
	)
)

(is_power_of_two 1)
(is_power_of_two 2)
(is_power_of_two 3)
(is_power_of_two 4)
(is_power_of_two 5)
(is_power_of_two 8)



(multiply 25 7)
(multiply 7 25)
