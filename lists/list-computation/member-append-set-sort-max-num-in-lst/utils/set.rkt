#lang racket

(require racket/trace)

(writeln "Method 1:")
;; Method 2:
;; Taken from online 
(define (set lst)
  (define the-set '())
  (begin (for-each
          (lambda (x)
            (if (member x the-set)
                #t
                (set! the-set (cons x the-set))))
          lst)
         (reverse the-set)))

(set '(1 2 3))
(set '(1 1 2 2 3 3 3 a a b b))



(writeln "Method 2:")
;; Method 2:
;; Taken from online
(define (remove-dups lst)
  ; Walks through one element of the list to see if it exists in our
  ; new list. If found call fail, otherwise add it to the end of the
  ; the list
  (define (step cur res fail)
    (cond
      ; End of list, insert at end
      [(null? res) (cons cur res)]
      ; Failure case, return the dup value
      [(equal? cur (car res)) (fail cur)]
      ; Otherwise car and cdr
      [else (cons (car res) (step cur (cdr res) fail))]))
  
  ; Walk through lst calling step for each element
  (define (walk lst res)
    (cond
      ; End of list, we are done
      [(null? lst) res]
      ; Otherwise take a step
      [else (let [(new-res
                   (call/cc
                    (lambda (k) (step (car lst) res k))))]
              (cond
                ; Returned a list, we didn't fail so use new result
                [(list? new-res) (walk (cdr lst) new-res)]
                ; Otherise use the old result since its a dup
                [else (walk (cdr lst) res)]))]))
  
  ; Now just do it
  (walk lst '()))


(remove-dups '(1 1 2 2 a a))  ;'(1 2 a)