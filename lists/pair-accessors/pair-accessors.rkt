#lang racket

;; Author: Anurag Muthyam.

(provide head)

;; Author: Anurag Muthyam
;; Find the first element in the list
(cons '(a b c) '(d e f) )
(cons '() '(d e f))
(cons '(a b c) '())

;; construct list
(define (my-cons x y)
  (if (empty? x)
      y
      (cons (car x)
            (my-cons (cdr x) y))))

(trace my-cons)
(my-cons '(a b c) '(d e f))
;(my-cons '() '(d e f))
;(my-cons '(a b c) '())

;; car 
(define (head lst)
    (if (empty? lst)
        '()
        (car lst)))

(define cadr
  (λ (lst)
    (car (cdr lst))))

(cadr '(a b c)) ;b

(define cddr
  (λ (lst)
      (cdr (cdr lst))))

(cddr '(a b c))  ;'(c)
;(define lst '(((2 4 6) 0) 3 5 7))              
;(writeln 'CAAAR:)
;(car (car (car lst)))
;(caaar lst)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define lst2 '(2 (3 5 7) 0))

; (writeln 'CAADR:)
; (car (car (cdr lst2)))
; (caadr lst2)
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define lst3 '((2 4 6) 3 5))

; (writeln 'CADAR:)
; (car (cdr (car lst3)))
; (cadar lst3)

; (writeln 'CADDR:)
; (car (cdr (cdr lst3)))
; (caddr lst3)
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define lst4 '(((1 3 5 7) -9) 2 4))

; (writeln 'CDAAR:)
; (cdr (car (car lst4)))
; (cdaar lst4)
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define lst5 '(0 (-1 -2 -3 -4) 100))

; (writeln 'CDADR:)
; (cdr (car (cdr lst5)))
; (cdadr lst5)
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define lst6 '((-1 -2 -3 -4) 0 99))

; (writeln 'CDDAR:)
; (cdr (cdr (car lst6)))
; (cddar lst6)

; (writeln 'CDDDR:)
; (cdr (cdr (cdr lst6)))
; (cdddr lst6)
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (define lst7 '((((9 8 7 6) 1) 2) 3 4))

; (writeln 'CAAAAR:)
; (car (car (car (car lst7))))
; (caaaar lst7)