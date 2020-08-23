#lang racket

;; Author: Anurag Muthyam.

(define L '(1 (( 2 4 6 7) -2) -4))

(cdr (car (car (cdr L))))
(cdaadr L)

;'(4 6 7)