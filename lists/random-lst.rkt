#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(provide random-lst
         random-unique-lst)

;; get random numbers list using iterative process
(define (random-lst n max)
  (define (random-lst-helper n max rlst)
    (if (zero? n)
      rlst
      (random-lst-helper (sub1 n)
                         max
                         (cons (add1 (random max)) rlst))))
    (random-lst-helper n max '()))

;; get unique random numbers list without duplicates
(define (random-unique-lst n lst)
  (remove-duplicates (random-lst n lst)))
  