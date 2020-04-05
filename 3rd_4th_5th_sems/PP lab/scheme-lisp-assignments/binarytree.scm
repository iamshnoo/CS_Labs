;;; Question 5
;;; No need to take inputs from user(specified in question)
;; Anjishnu Mukherjee

;; Tree node is represented as a list
;; node -> ( list left-child-ptr key right-child-ptr)
;; list-ref list k returns the kth element of list (zero-origin indexing)

;; All abstractions I need

;; object which represents null trees
(define null-tree '$)

;; function which tests for a null tree
(define (tree-null? tree)
  (eq? tree null-tree))

;; function which constructs tree nodes
(define (make-tree-node left key right)
  (list left key right))

(define (left tree)
  (list-ref tree 0))

(define (value tree)
  (list-ref tree 1))

(define (right tree)
  (list-ref tree 2))

;; Insert function using abstractions
(define (insert tree n)
  (cond
    [(tree-null? tree)
     (make-tree-node null-tree n null-tree)]
    [(< n (value tree))
     (make-tree-node (insert (left tree) n)
                     (value tree)
                     (right tree))]
    [(> n (value tree))
     (make-tree-node (left tree)
                     (value tree)
                     (insert (right tree) n))]
    [else tree]))

(define (insert-elements tree elts)
  (if (null? elts)
      tree
      (insert-elements (insert tree (car elts)) (cdr elts))))

;; test run-1 to demonstrate working
(insert-elements null-tree '(7 1 2 3 4 7 202 48 20 0))
;; prints ((($ 0 $) 1 ($ 2 ($ 3 ($ 4 $)))) 7 ((($ 20 $) 48 $) 202 $))
