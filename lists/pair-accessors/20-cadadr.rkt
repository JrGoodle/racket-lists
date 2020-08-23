#lang racket

;; Author: Anurag Muthyam.

(define L '(1 (2 3 5 7) 0))

(car (cdr (car (cdr L))))
(cadadr L)

;3