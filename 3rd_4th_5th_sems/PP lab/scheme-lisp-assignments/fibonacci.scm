;;;Question 2
;; Anjishnu 

;; function definition
(define (fib n)
  (cond 
    [
      (= n 1) 0
    ]

    [
      (= n 2) 1
    ]

    [else
      (+ (fib (- n 1)) (fib (- n 2)) )
    ]
  ) 
)

;; expected series -> 0, 1, 1, 2, 3, 5, 8, 13, 21, ...

;; User interface
(display "Enter a number: ")
(define val (read))
(display "Fibonacci( ")
(display val)
(display ") is : ")
(display (fib val))
(newline)
