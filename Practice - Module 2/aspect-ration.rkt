;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aspect-ration) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; cond-starter.rkt

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 20 "solid" "red"))
(define I3 (rectangle 20 10 "solid" "red"))

;; Takes an image as input, returns the solution on one of the aspects - is image "wide", "tall" or "square"
;; Image -> String

(check-expect (aspect-ratio I1) "tall")
(check-expect (aspect-ratio I2) "square")
(check-expect (aspect-ratio I3) "wide")


;;(define (aspect-ratio img) "")

;;(define (aspect-ratio img) (... img))


(define (aspect-ratio img)
  (cond [(> (image-width img) (image-height img)) "wide"]
        [(< (image-width img) (image-height img)) "tall"]
        [(= (image-width img) (image-height img)) "square"]))

