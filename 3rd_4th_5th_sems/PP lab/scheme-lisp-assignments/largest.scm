;;; Question 4
;; Anjishnu

;; Macro definition of for loop
(define-macro (for params . body)
    `(let iter ((,(car params) ,(cadr params))) ; initialize loop counter
        (if (< ,(car params) ,(caddr params))   ; loop condition test
            (begin
                ,@body
                (iter (+ ,(car params) , 1))    ; recursive call and update loop counter
            )
        )
      )
)

(display "Enter number of numbers: ")
(define x (read))
(newline)

(define v (make-vector x))

(for (i 1 (+ x 1))
  (display "Enter a number: ")
  (define val (read))
  (vector-set! v i val)
)


(define largest 0)

(for (i 1 (+ x 1))
  (cond 
    [(> (vector-ref v i) largest) (set! largest (vector-ref v i))]
  )
)

;; User interface
(newline)
(display "Largest number : ")
(display largest)
(newline)
