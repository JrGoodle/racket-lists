#lang racket

;; Author: Anurag Muthyam.

(define L '((((1 2 3 4 5) 6) 7) 8 9))

(cdr (car (car (car L))))
(cdaaar L)

;'(2 3 4 5)