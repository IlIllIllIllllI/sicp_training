#lang racket
(define (>= x y)
  (not (< x y)))
(define (abs x)
  (cond ((< x 0) (- x))
(else x)))
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (cubeiter guess pguess x)
  (if (good? guess pguess)
      guess
      (cubeiter (improve guess x)
            guess
            x)))
(define (good? guess pguess)
  (< (abs (/ (- guess pguess) pguess)) 0.0001))
(define (improve guess x)
  (formula x guess))
(define (formula x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))
(define (cube x)
  (cubeiter 1.0 0.5 x))