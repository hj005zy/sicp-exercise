;;; make-withdraw.scm

(define (make-withdraw balance)
    (lambda (amount)
        (if (>= balance amount)
	    (begin (set! balance (- balance amount))
	           balance)
	    "Insufficient funds")))
