;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname opish) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (makeop wordz) consumes a list of characters and adds "op"
;;   to each character that is a consonant.
;; makeop: (listof Char) -> (listof Char)
;; Requires:
;; letters are consonants
;; Examples:
(check-expect (makeop (cons #\A empty)) (cons #\A empty))

(define (makeop wordz)
  (cond
    [(empty? wordz) empty]
    [(char=? #\B (first wordz))
     (cons #\B (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\C (first wordz))
     (cons #\C (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\D (first wordz))
     (cons #\D (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\F (first wordz))
     (cons #\F (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\G (first wordz))
     (cons #\G (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\H (first wordz))
     (cons #\H (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\J (first wordz))
     (cons #\J (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\K (first wordz))
     (cons #\K (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\L (first wordz))
     (cons #\L (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\M (first wordz))
     (cons #\M (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\N (first wordz))
     (cons #\N (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\P (first wordz))
     (cons #\P (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\Q (first wordz))
     (cons #\Q (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\R (first wordz))
     (cons #\R (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\S (first wordz))
     (cons #\S (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\T (first wordz))
     (cons #\T (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\V (first wordz))
     (cons #\V (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\X (first wordz))
     (cons #\X (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\Z (first wordz))
     (cons #\Z (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\Y (first wordz))
     (cons #\Y (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\b (first wordz))
     (cons #\b (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\c (first wordz))
     (cons #\c (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\d (first wordz))
     (cons #\d (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\f (first wordz))
     (cons #\f (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\g (first wordz))
     (cons #\g (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\h (first wordz))
     (cons #\h (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\j (first wordz))
     (cons #\j (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\k (first wordz))
     (cons #\k (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\l (first wordz))
     (cons #\l (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\m (first wordz))
     (cons #\m (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\n (first wordz))
     (cons #\n (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\p (first wordz))
     (cons #\p (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\q (first wordz))
     (cons #\q (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\r (first wordz))
     (cons #\r (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\s (first wordz))
     (cons #\s (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\t (first wordz))
     (cons #\t (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\v (first wordz))
     (cons #\v (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\x (first wordz))
     (cons #\x (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\z (first wordz))
     (cons #\z (cons #\o (cons #\p (makeop (rest wordz)))))]
    [(char=? #\y (first wordz))
     (cons #\y (cons #\o (cons #\p (makeop (rest wordz)))))]
    [else (cons (first wordz) (makeop (rest wordz)))]))

;; Examples:
(check-expect (makeop (cons #\B empty)) (cons #\B (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\C empty)) (cons #\C (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\D empty)) (cons #\D (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\F empty)) (cons #\F (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\G empty)) (cons #\G (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\H empty)) (cons #\H (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\J empty)) (cons #\J (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\K empty)) (cons #\K (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\L empty)) (cons #\L (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\M empty)) (cons #\M (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\N empty)) (cons #\N (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\P empty)) (cons #\P (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\Q empty)) (cons #\Q (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\R empty)) (cons #\R (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\S empty)) (cons #\S (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\T empty)) (cons #\T (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\V empty)) (cons #\V (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\X empty)) (cons #\X (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\Z empty)) (cons #\Z (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\Y empty)) (cons #\Y (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\b empty)) (cons #\b (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\c empty)) (cons #\c (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\d empty)) (cons #\d (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\f empty)) (cons #\f (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\g empty)) (cons #\g (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\h empty)) (cons #\h (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\j empty)) (cons #\j (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\k empty)) (cons #\k (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\l empty)) (cons #\l (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\m empty)) (cons #\m (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\n empty)) (cons #\n (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\p empty)) (cons #\p (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\q empty)) (cons #\q (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\r empty)) (cons #\r (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\s empty)) (cons #\s (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\t empty)) (cons #\t (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\v empty)) (cons #\v (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\x empty)) (cons #\x (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\z empty)) (cons #\z (cons #\o (cons #\p empty))))
(check-expect (makeop (cons #\y empty)) (cons #\y (cons #\o (cons #\p empty))))

;; (opish word) consumes a word and produces "op" to
;;   the end of each character that is a consonants.
;; opish: Str -> Str
;; Requires:
;; consonants are one of 
;; B, C, D, F, G, H, J, K , L, M, N, P, Q, R, S, T, V, X, Z AND Y.
;; Examples:
(check-expect (opish "BCDFGHJKLMNPQRSTVXZY")
              "BopCopDopFopGopHopJopKopLopMopNopPopQopRopSopTopVopXopZopYop")

(define (opish word)
  (list->string (makeop (string->list word))))

;; Tests:
(check-expect (opish "Computer") "Copomoppoputoperop")
(check-expect (opish "Co") "Copo")
(check-expect (opish "") "")
(check-expect (opish "b") "bop")
(check-expect (opish "cb") "copbop")