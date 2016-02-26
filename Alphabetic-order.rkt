;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Alphabetic-order) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (lst2str lst4) consumes a list of strings and converts
;;   the entire string to downcased letters.
;; lst2str: (listof Str) -> (listof Str)
;; Requires:
;;          Strings contain letters only
;; Examples:
(check-expect (lst2str (cons "BRIAR" empty))
              (cons "briar" empty))

(define (lst2str lst4)
  (cond
    [(empty? lst4) empty]
    [else (cons (list->string (first (downcaselst lst4)))
                (lst2str (rest lst4)))]))
;; Tests:
(check-expect (lst2str (cons "A" (cons "RiGhT" empty)))
              (cons "a" (cons "right" empty)))
(check-expect (lst2str empty) empty)

;; (downcaselst lst3) consumes a list of strings and creates
;;   a new list of the list of downcased characters
;; downcaselst: (listof Str) -> (listof (listof Char))
;; Examples:
(check-expect (downcaselst (cons "ABC" empty))
              (cons (cons #\a (cons #\b (cons #\c empty))) empty))

(define (downcaselst lst3)
  (cond
    [(empty? lst3) empty]
    [else (cons (convertchar (first (str2lst lst3))) 
                (downcaselst (rest lst3)))]))
;; Tests:
(check-expect (downcaselst empty) empty)
(check-expect (downcaselst (cons "bcs" empty))
              (cons (cons #\b (cons #\c (cons #\s empty))) empty))

;; (convertchar lst1) consumes a list of characters and
;;   downcases them.
;; convertchar: (listof Char) -> (listof Char)
;; Examples:
(check-expect (convertchar (cons #\A (cons #\b empty)))
              (cons #\a (cons #\b empty)))

(define (convertchar lst1)
  (cond
    [(empty? lst1) empty]
    [else (cons (char-downcase (first lst1))
                (convertchar (rest lst1)))]))
;; Tests:
(check-expect (convertchar empty) empty)
(check-expect (convertchar (cons #\z (cons #\y empty)))
              (cons #\z (cons #\y empty)))

;; (str2lst lst2) consumes a list of strings and converts
;;   them to a list of characters.
;; str2lst: (listof Str) -> (listof (listof Char))
;; Requires: Strings are produced of letters.
;; Examples:
(check-expect (str2lst (cons "ABC" empty))
              (cons (cons #\A (cons #\B (cons #\C empty))) empty))

(define (str2lst lst2)
  (cond
    [(empty? lst2) empty]
    [else (cons (string->list (first lst2))
                (str2lst (rest lst2)))]))
;; Tests:
(check-expect (str2lst empty) empty)
(check-expect (str2lst (cons "Bri" empty))
              (cons (cons #\B (cons #\r (cons #\i empty))) empty))

;; (alphabetic-order? word) consumes a list of strings
;;   and produces true if they are in alphabetic order
;;   and false otherwise, ignoring case of letters.
;; alphabetic-order?: (listof Str) -> Bool
;; Requires: Strings and composed of words
;; Examples:
(check-expect (alphabetic-order? empty) true)
(check-expect (alphabetic-order? (cons "WORD" empty)) true)

(define (alphabetic-order? word)
  (cond
    [(empty? word) true]
    [(empty? (rest word)) true]
    [(string<? (first (lst2str word))
               (first (lst2str (rest word))))
     (alphabetic-order? (rest word))]
    [else false]))
;; Tests:
(check-expect (alphabetic-order? (cons "abc" (cons "bcs" empty))) true)
(check-expect (alphabetic-order? (cons "z" (cons "y" empty))) false)




