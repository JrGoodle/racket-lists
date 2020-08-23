#lang racket

;; Author: Anurag Muthyam.

(define L '(0 1 (2 3 4 5 6) 7))

(cdr (car (cdr (cdr L))))
(cdaddr L)

;'(3 4 5 6)