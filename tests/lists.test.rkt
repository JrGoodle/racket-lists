#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)

(require "../squares-lst-by-limit.rkt")

(my-member-m1 0 '())               ;#f
(my-member-m1 2 '(2 3 4 5))        ;'(2 3 4 5)
(my-member-m1 3 '(2 3 4 5))        ;'(3 4 5)
(my-member-m1 4 '(2 3 4 5))        ;'(4 5)
(my-member-m1 5 '(2 3 4 5))        ;'(5)
(my-member-m1 'c '(a b c d))       ;'(c d)

(make-list 6 '())
(make-list 2 '(1 2 3 4 5))

;; remove-last
(remove-last '(1 2 3))
(remove-last '(1))
(remove-last '(0))

;; nth 
(nth '(1 2 3') 0)
(nth '(1 2 3') 1)
(nth '(1 2 3') 2)

;; list-tail 
(list-tail '() 0)
(list-tail '(a b c) 0) 
(list-tail '(a b c) 2) 
(list-tail '(a b c) 3) 
(list-tail '(a b c . d) 2) 
(list-tail '(a b c . d) 3)
(let ((x (list 1 2 3)))
  (eq? (list-tail x 2)
       (cddr x))) 

;; copy-lst
(copy-list '(1 3 5))       ;'(1 3 5)
(copy-list '(a c e))       ;'(a c e)       

;; num-occurences 
(num-occurences 2 '(1 2 3 2 2 4 4))


;; member
(member 0 '())               ;#f
(member 2 '(2 3 4 5))        ;'(2 3 4 5)
(member 3 '(2 3 4 5))        ;'(3 4 5)
(member 4 '(2 3 4 5))        ;'(4 5)
(member 5 '(2 3 4 5))        ;'(5)
(member 'c '(a b c d))       ;'(c d)

;; shorter
(shorter '(a b c) '(1 32 3 3))

(check-equal? (squares-iter 0) '())
(check-equal? (squares-iter 1) '(0))
(check-equal? (squares-iter 10) '(0 1 4 9 16 25 36 49 64 81))
