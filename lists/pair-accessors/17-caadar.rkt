#lang racket

;; Author: Anurag Muthyam.

(define L '((1 ((0 2 4 6) -1 -3) -5)))

(car (car (cdr (car L))))
(caadar L)

;'(0 2 4 6)
