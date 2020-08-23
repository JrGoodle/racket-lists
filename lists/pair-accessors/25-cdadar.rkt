#lang racket

;; Author: Anurag Muthyam.

(define L '((1 (0 2 4 6 7) -2) -4))

(cdr (car (cdr (car L))))
(cdadar L)

;'(2 4 6 7)