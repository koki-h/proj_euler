(define (largest_prime n)
  (if (= 0 (mod origin (- n 1)))
    (- n 1)
    (largest_prime (- n 1))))
(define origin 14)
(display (largest_prime origin))