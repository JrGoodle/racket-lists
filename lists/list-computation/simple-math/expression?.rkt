#lang racket


(define (expression? x)
  (or (number? x) (symbol? x) (pair? x)))


