;;; Question 3
;; Anjishnu

;; function definition
(define (gcd a b)
  (cond 
    [
      (= b 0) a
    ]

    [else 
      (gcd b (mod a b))
    ]
  )
)

;; User interface
(display "Enter first number: ")
(define x (read))
(display "Enter second number: ")
(define y (read))
(display "gcd(")
(display x)
(display ",")
(display y)
(display ") is : ")
(display (gcd x y))
(newline)
