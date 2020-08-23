#lang racket

;; Author: Anurag Muthyam.

(define L '(3 5 7 9 11))

(car (cdr (cdr (cdr L))))
(cadddr L)

;9