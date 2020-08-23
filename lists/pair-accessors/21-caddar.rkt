#lang racket

;; Author: Anurag Muthyam.

(define L '((2 4 6 8 10 (9 7))))

(car (cdr (cdr (car L))))
(caddar L)

;6