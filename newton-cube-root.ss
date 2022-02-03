(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))


(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cubert-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cubert-iter (improve guess x) x)))

(cubert-iter 1 8)
