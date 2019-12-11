#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-temecula-lib
         metacoders-dot-org-lib)

(define (index)
  (page index.html
        (city-page
         #:city-name "Temecula, CA"
         #:banner-url "https://images.pexels.com/photos/582938/pexels-photo-582938.jpeg"
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


