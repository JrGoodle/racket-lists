#lang racket

;; Author: Anurag Muthyam.

(define L '(((3 5 7 9) 9 2 4) -1 -2))

(cdr (car (car L)))
(cdaar L)

;'(5 7 9)
