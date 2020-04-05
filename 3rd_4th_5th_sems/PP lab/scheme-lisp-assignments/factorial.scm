;;; Question 1
;; Anjishnu Mukherjee

;; function definition
(define (factorial n)
        (
          if (= n 0)    
              1
          ;else
          (
            * n (factorial (- n 1))
          )
        )
) 

;; User interface
(display "Enter a number: ")
(define val (read))
(display "Factorial of ")
(display val)
(display " is : ")
(display (factorial val))
(newline)
