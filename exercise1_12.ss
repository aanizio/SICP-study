(define (pascal-triangle m n)
  (cond 
    ((and (= m 0) (= n 0)) 1)
    ((or (= m -1) (= n -1)) 1)
    (else (+ (pascal-triangle (- m 1) (- n 1)) (pascal-triangle (- m 1) n)))
  )
)

(pascal-triangle 1 0)
