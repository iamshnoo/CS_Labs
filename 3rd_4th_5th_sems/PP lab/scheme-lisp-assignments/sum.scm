;;; Question 4
;; Anjishnu

;; Macro definition of for loop
(define-macro (for params . body)
    `(let iter ((,(car params) ,(cadr params))) ; initialize loop counter
        (if (< ,(car params) ,(caddr params))   ; loop condition test
            (begin
                ,@body
                (iter (+ ,(car params) , 1))    ; recursive call
            )
        )
      )
)

(display "Enter number of numbers: ")
(define x (read))
(newline)

(define v (make-vector x))

(for (i 1 (+ x 1))
  (display "Enter a natural number: ")
  (define val (read))
  (vector-set! v i val)
)

(define sum 0)

(for (i 1 (+ x 1))
  (set! sum (+ sum (vector-ref v i)))
)

;; User interface
(newline)
(display "Sum of the numbers : ")
(display sum)
(newline)
