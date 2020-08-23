#lang racket

;; Author: Anurag Muthyam.

(define L '((0 2 4 6) 3 7 9))

(cdr (cdr (car L)))
(cddar L)

;'(4 6)