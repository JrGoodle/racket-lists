#lang racket

;; Author: Anurag Muthyam.

(define L '(((1 2 3 4 5) 6) 7 8))

(cdr (cdr (car (car L))))
(cddaar L)

;'(3 4 5)