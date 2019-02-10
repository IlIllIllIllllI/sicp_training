#lang racket
(define (>= x y)
  (not (< x y)))
(define (abs x)
  (cond ((< x 0) (- x))
(else x)))
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (iter guess pguess x)
  (if (good? guess pguess)
      guess
      (iter (improve guess x)
            guess
            x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good? guess pguess)
  (< (abs (/ (- guess pguess) pguess)) 0.0001))
(define (sqrt x)
  (iter 1.0 0.5 x))