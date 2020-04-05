;;; Optional Question
;; Anjishnu

;;Defining the function
(define (sum n)
  [cond		 
     ((= n 0) 0)
     (else
      (+ n (sum (- n 1))))])

;;Taking inputs from user
(display "Enter n to find the sum till n-th natural number : ")
(define x (read))

;;Printing results
(display "The sum of n natural numbers is : ")
(display (sum x))
(newline)  
