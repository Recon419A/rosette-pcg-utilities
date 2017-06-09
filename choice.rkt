#lang rosette

(require rosette/lib/angelic
         "assert.rkt")

(provide choose-random random-instance)

(define (choose-random choices)
  (let ([choice (apply choose* (shuffle (cons (gensym) (cons (gensym) choices))))])
    (in! choice choices)
    choice))
