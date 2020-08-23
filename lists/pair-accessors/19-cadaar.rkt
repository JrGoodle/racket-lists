#lang racket

;; Author: Anurag Muthyam.

(define L '(((1 2 4 3 5 7) 100) 99 98))

(car (cdr (car (car L))))
(cadaar L)

;2