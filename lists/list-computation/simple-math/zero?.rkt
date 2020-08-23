#lang racket

(require racket/trace)

(define x (list 1 1 1 0 0 1))
(define y (list 1 1 0 1 1 0))
(define z (list 0 0 0 0 0 0))

(define (zero?? f n)
  (if (= n 0) #t #f))

(define (zero? n)
  (cond
     ((empty? n) #t)
     ((= (car n) 1) #f)
     (else (zero? (cdr n)))))

(trace zero?)

(zero? x)
(zero? y)
(zero? z)

#|
(zero? z):
>(zero? '(0 0 0 0 0 0))
>(zero? '(0 0 0 0 0))
>(zero? '(0 0 0 0))
>(zero? '(0 0 0))
>(zero? '(0 0))
>(zero? '(0))
>(zero? '())
|#

(define (big-zero? n)
    (cond ((empty? n) #t)
          ((and (number? (car n)) (zero? (car n)))
           (big-zero? (cdr n)))
          (else #f)))


