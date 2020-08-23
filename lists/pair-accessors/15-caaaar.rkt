#lang racket

;; Author: Anurag Muthyam.

(define L '((((2 4 6) 8) 9) 1 2))

(car (car (car (car L))))
(caaaar L)

;2