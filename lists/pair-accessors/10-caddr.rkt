#lang racket

;; Author: Anurag Muthyam.
;; caddr returns the third element of the list 

(define L '((3 5 7) 9 2 4))

(car (cdr (cdr L)))
(caddr L)

;2
