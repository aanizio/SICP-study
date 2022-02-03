(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
				((divides? test-divisor n) test-divisor)
				(else (find-divisor n (+ 1 test-divisor)))))
(define (divides? a b) (= (remainder b a) 0))

(define (prime? n)
    (= n (smallest-divisor n)))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))

(define (search-for-primes n)
	(define (loop n count)
		(cond ((< count 3)
			(cond 
				( (prime? n)
					(newline)
					(display n)
					(loop (+ n 1) (+ count 1))
				)
				(else (loop (+ n 1) count))
			)
		))

	#|
inicia loop
checa se já atngiu contagem
checa se é primo
se for mostra e incrementa contagem
chama loop
	|#
	)
	(loop n 0)
)

(define (next input)
	(if (= input 2) 3 (+ input 2))
)

;(display (runtime))
(timed-prime-test 1000000007)
;(display (runtime))

(define start (runtime))
(search-for-primes 100000000)
(report-prime (- (runtime) start))
