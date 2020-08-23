#lang racket

;; Author: Anurag Muthyam.

(define L '(0 (1 2 3 4) -1 -2))

(cdr (car (cdr L)))
(cdadr L)

;'(2 3 4)