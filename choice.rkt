#lang rosette

(require rosette/lib/angelic
         "assert.rkt")

(provide choose-random)

;; choose* breaks with less than three items in the list
;; this appears to be a bug in rosette, so this is a workaround

(define (choose-random choices)
  (let ([choice (apply choose* (shuffle (cons (gensym) (cons (gensym) choices))))])
    (in! choice choices)
    choice))
