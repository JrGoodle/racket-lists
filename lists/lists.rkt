
#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(provide add-elems
         length
         copy-list
         reverse 
         last
         list-ref
         list-tail
         alternative-elems
         make-list
         max-lst
         sum-lst
         num-occurences
         member)

;; add numbers to a list
(define (add-elems n lst) (cons n lst))

;; get the length of a list
(define (length lst)
  (define (length-iter lst result)
    (if (empty? lst)
      result
      (length-iter (cdr lst)
                   (add1 result))))
  (length-iter lst 0))

;; get the last element from a list
(define (last lst)
  (if (empty? (cdr lst))
      (car lst)
      (last (cdr lst))))

;; get the copied list
(define (copy-list lst)
  (define (copy-list-iter lst rlst)
    (if (empty? lst)
        (reverse rlst)
        (copy-list-iter (cdr lst)
                        (cons (car lst) rlst))))
  (copy-list-iter lst '()))

;; reverse a list
(define (reverse lst)
  (define (reverse-iter lst rlst)
    (if (empty? lst)
        rlst
        (reverse-iter (cdr lst)
                      (cons (car lst) rlst))))
  (reverse-iter lst '()))

;; Taken from "A Micro-Manual For Lisp - Not The Whole Truth"
;; gets alternative elements from a list
(define (alternative-elems lst)
  (cond ((or (empty? lst)
             (empty? (cdr lst))) lst)
        (#t (cons (car lst) (alternative-elems (cddr lst))))))


;; get the maximum number in a list
(define (max-lst lst)
     (cond ((empty? lst) lst)
           ((empty? (cdr lst)) (car lst)) 
           ((< (car lst) (max-lst (cdr lst))) (max-lst (cdr lst)))
           (else (car lst))))

;; add all the elements in a list
(define (sum-lst lst)
  (define (sum-lst-iter lst sum)
    (if (empty? lst)
      sum
      (sum-lst-iter (cdr lst)
                    (+ sum (car lst)))))
    (sum-lst-iter lst 0))

;; get a specific element from a list
(define (list-ref lst n)
  (if (zero? n)
      (car lst)
      (list-ref (cdr lst)
                (sub1 n))))

;; get a list of elements based on the numbering
(define (list-tail lst n)
  (if (zero? n)
      lst
      (list-tail (cdr lst)
                 (sub1 n))))

;; build a list based on n
(define (make-list n lst)
    (if (zero? n)
        '()
        (cons lst (make-list (- n 1) lst))))

;; get number of occurences
(define (num-occurences n lst)
  (if (empty? lst)
      0
      (+ (if (= n (car lst))
             1
             0)
         (num-occurences n (cdr lst)))))    

;; get a member 
(define (member n lst)
  (cond ((empty? lst) #f)
        ((eqv? (car lst) n) lst)
        (else (member n (cdr lst)))))

;; gets the shorter list between two lists
(define (shorter lst1 lst2)
  (if (shorter? lst1 lst2)
        lst1
        lst2))

(define (shorter? lst1 lst2)
    (and (not (empty? lst2))
         (or (null? lst1)
             (shorter? (cdr lst1) (cdr lst2)))))