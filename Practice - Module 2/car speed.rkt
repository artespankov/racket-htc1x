;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |car speed|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; DATA DEFINITION
;; CarSpeed is Number[0, 200]
;; interp. the speed of a car in km/h: 0 means stopped, 200 is the maximum speed

(define CS1 0)   ;car is stopped
(define CS2 155) ;car is moving with about half of it's max speed
(define CS3 200) ;car is moving with max speed

#;
(define (fn-for-car-speed s)
  (... s))

;; Template rules used:
;; - atomic non-distinct: Number[0, 200]


;; FUNCTION DEFINITION

;; CarSpeed -> Boolean
;; Checks if a car's speed is over the speed limit of 110 km/hr.

(check-expect (speeding? 0) false)
(check-expect (speeding? 105) false)
(check-expect (speeding? 110) false)
(check-expect (speeding? 111) true)
(check-expect (speeding? 200) true)

;;(define (speeding? s) false) ; stub
;; template from CarSpeed data definition
(define (speeding? s)
  (> s 110))