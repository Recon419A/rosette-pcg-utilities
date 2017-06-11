#lang rosette

(require rosette/lib/angelic
         "assert.rkt")

(provide choose-random)

(define (choose-random choices)
  (let* ([padded-choices (cons (gensym) (cons (gensym) choices))]
         [choice (apply choose* (shuffle padded-choices))])
    (in! choice choices)
    choice))
