#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-temecula-lib
         metacoders-dot-org-lib)

(define (index)
  (page index.html
        (city-page
         #:city-name "Temecula, CA"
         #:banner-url (prefix/pathify temecula-banner-path)
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


