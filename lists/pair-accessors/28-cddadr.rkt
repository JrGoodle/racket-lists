#lang racket

;; Author: Anurag Muthyam.

(define L '(1 (2 3 4 5 6) 7))

(cdr (cdr (car (cdr L))))
(cddadr L)

;'(4 5 6)