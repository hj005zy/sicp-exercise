;;; 75-message-passing-mag-ang-complex-numbers.scm

(load "types.scm")

(define (apply-generic op arg) (arg op))

(define (real-part z) (apply-generic 'real-part z))
(define (imag-part z) (apply-generic 'imag-part z))
(define (magnitude z) (apply-generic 'magnitude z))
(define (angle z) (apply-generic 'angle z))

(define (make-from-mag-ang r a)
    (define (dispatch op)
        (cond ((eq? op 'real-part) (* r (cos a)))
              ((eq? op 'imag-part) (* r (sin a)))
              ((eq? op 'magnitude) r)
              ((eq? op 'angle) a)
              (else (error "Unknown op: MAKE-FROM-MAG-ANG" op))))
    dispatch)
