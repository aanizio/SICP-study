(define (expo b n)
  (if (= n 0)
      1
      (* b (expo b (- n 1)))
  )
)

(define (expo-iter b n)
(define (expoi b n t)
  (cond ((= n 0) 1)
	((= n 1) t)
	(else 
	  (expoi b (- n 1) (* b t))
	 )
  )
)
(expoi b n b)
)

#|
(= (expo 2 3) 8)
(= (expo 3 3) 27)
(= (expo 2 2) 4)
(= (expo 1 0) 1)
(= (expo 1 5) 1)
|#

(expo 2 3)

(expo-iter 2 3)
(expo-iter 3 3)


(define (expo-even b n)
  (if (and (= (modulo n 2) 0) (not (= n 0)))
      (if (= n 2)
		  		(* b b)
					(* (expo-even b (/ n 2)) (expo-even b (/ n 2)))
      )
      (expo-iter b n)
  )
)

(= (expo-even 2 2) 4)
(= (expo-even 2 4) 16)
(= (expo-even 2 8) 256)
(= (expo-even 2 7) -1)
(= (expo-even 2 1) -1)
(= (expo-even 2 0) -1)

#|
(define (expo-even-iter b n)
	(define (expo_ b n p)
;		(display p) (newline)
		(if (= n 1)
				p
				(expo_ b (/ n 2) (* p p))
		)
	)
	(expo_ b n b)
)
|#

(define (even? n)
	(= (remainder n 2) 0)
)

(define (expo-even-iter b n)
	(define (expo_ b n p)
;		(display p) (newline)
		(if (= n 1)
				p
				(if (even? n)
						(expo_ b (/ n 2) (* p p))
						(expo_ b (- n 1) (* b p))
				)
		)
	)
	(expo_ b n b)
)

#|
expo_ 2 4 (* 2 2)
expo_ 2 4 4
expo_ 2 2 4
expo_ 2 1 4
|#

(define huge-num 131072)
(define huge-num (* huge-num 2))
(define huge-num (* huge-num 2))
(define huge-num (* huge-num 2))

(expo-even-iter 2 2)
(expo-even-iter 2 4)
(expo-even-iter 2 8)
(expo-even-iter 2 6)
(expo-even-iter 2 1)
(expo-even-iter 2 0)
;(expo-even-iter 2 huge-num)

;(expo-even 2 huge-num)
