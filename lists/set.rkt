#lang racket

(provide set)

;; set: get unique elements from a list using for-each and set!
(define (set lst)
  (define the-set '())
  (begin (for-each
          (λ (x)
            (if (member x the-set)
                #t
                (set! the-set (cons x the-set))))
          lst)
         (reverse the-set)))

