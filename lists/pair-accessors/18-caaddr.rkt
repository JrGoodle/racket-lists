#lang racket

;; Author: Anurag Muthyam.

(define L '(2 4 (3 5 7) 10))

(car (car (cdr (cdr L))))
(caaddr L)

;3