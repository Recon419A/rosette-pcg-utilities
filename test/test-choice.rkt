#lang rosette

(require rackunit
         "../source/choice.rkt")

(check-equal? (evaluate (choose-random '(0)) (solve asserts)) 0)
(check member (evaluate (choose-random '(0 1)) (solve asserts)) '(0 1))
(check member (evaluate (choose-random '(0 1 2 3)) (solve asserts)) '(0 1 2 3))

