#|
(define (f n)
  (if (< n 3)
      n
      (+ 
	(f (- n 1)) 
	(* 2 (f (- n 2)) )
	(* 3 (f (- n 3)) )
      )
  )
)
|#

; (define (f n)
;   (define (do-f n sum_1 sum_2 sum_3)
;     (cond 
;       ((< n 3) n)
;       ((and (< sum_1 3) (< sum_2 3) (< sum_3 3)) (+ sum_1 (* 2 sum_2) (* 3 sum_3)))
;       (else
;         (define n_sum_1 (if (< sum_1 3) sum_1 (- sum_1 1)))
;         (define n_sum_2 (if (< sum_2 3) sum_2 (- sum_2 2)))
;         (define n_sum_3 (if (< sum_3 3) sum_3 (- sum_3 3)))
;         (do-f n n_sum_1 n_sum_2 n_sum_3)
;       )
;     )
;   )
;   (do-f n n n n)
; )

(define (f n)
  (define (do-f n total sum_1 sum_2 sum_3)
    (cond 
      ((< n 3) n)
      ((and (< sum_1 3) (< sum_2 3) (< sum_3 3)) total)
      (else
        (do-f n (+ sum_1 (* 2 sum_2) (* 3 sum_3)) (if (< sum_1 3) sum_1 (- sum_1 1)) (if (< sum_2 3) sum_2 (- sum_2 2)) (if (< sum_3 3) sum_3 (- sum_3 3)))
      )
    )
  )
  (do-f n 0 n n n)
)

(= (f -1) -1)
(= (f 0) 0)
(= (f 1) 1)
(= (f 2) 2)
(= (f 3) 4)
#| 2 + 2*1 + 3*0 = 4 |#
(= (f 4) 11)
(f 4)
#| 4 + 2*2 + 3*1 = 11 |#
(= (f 6) 59)
(f 6)

#|
n = 4
(do-f 4 3 2 1)
(do-f 4 2

(+ (f 3) (f 2) (f 1))
|#
