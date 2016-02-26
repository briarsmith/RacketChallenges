;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname countredblue) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (majority lstofsym) consumes a list of symbols,
;;   either red or blue, and determines if there
;;   is more red or more blue symbols in the list,
;;   producing tie if there is equal blue and red.
;; majority: (listof (Anyof 'blue 'red)) -> (Anyof 'tie 'red 'blue)
;; Examples:
(check-expect (majority (cons 'red (cons 'blue empty))) 'tie)

(define (majority lstofsym)
  (cond
    [(= (countredblue lstofsym) 0) 'tie]
    [(> (countredblue lstofsym) 0) 'red]
    [else 'blue]))

;; Tests:
(check-expect (majority (cons 'red (cons 'blue (cons 'blue empty)))) 'blue)
(check-expect (majority (cons 'red (cons 'red empty))) 'red)

;; (countredblue lst) consumes a list of symbols,
;;   either red or blue, and counts the number of
;;   red and blue symbols, adding 1 for a blue and
;;   subtracting one for a red.
;; countredblue: (listof (Anyof 'red 'blue)) -> (Anyof 'red 'blue)
;; Examples:
(check-expect (countredblue (cons 'red (cons 'blue (cons 'blue empty)))) -1)

(define (countredblue lst)
  (cond
    [(empty? lst) 0]
    [(symbol=? 'red (first lst))
     (+ 1 (countredblue (rest lst)))]
    [(symbol=? 'blue (first lst)) 
     (- (countredblue (rest lst)) 1)]))

;; Tests:
(check-expect (countredblue (cons 'red (cons 'blue empty))) 0)
(check-expect (countredblue (cons 'red (cons 'red empty))) 2)
