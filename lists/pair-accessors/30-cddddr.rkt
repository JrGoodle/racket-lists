#lang racket

;; Author: Anurag Muthyam.

(define L '(1 2 3 4 5 6))

(cdr (cdr (cdr (cdr L))))
(cddddr L)

;'(5 6)