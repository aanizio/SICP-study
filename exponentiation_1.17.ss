(define (double c)
  (define (* a b)
    (newline) (display a) (display b)
    (if (= b 0)
      0
      (+ a (* a (- b 1)))
    )
  )
  (if (even? c)
      (* (double (/ c 2)) 2)
      (* c 2)
  )
)

(double 8)
(double 4)
(double 2)
(double 16)




(define (halve c)
  (define (/ a b)
    (newline) (display a) (display b)
    (if (= b 0)
      0
      (- a (/ a (- b 1)))
    )
  )
  (if (even? c)
      (* (halve (/ c 2)) 2)
      (/ c 2)
  )
)



(halve 8)















