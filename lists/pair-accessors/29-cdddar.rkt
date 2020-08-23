#lang racket

;; Author: Anurag Muthyam.

(define L '((0 1 2 3 4) 7 9))

(cdr (cdr (cdr (car L))))
(cdddar L)

;'(3 4)