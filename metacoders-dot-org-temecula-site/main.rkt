#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-temecula-lib
         metacoders-dot-org-lib)

(require website-js/components/remote)

(define (index)
  (page index.html
        (city-page-dynamic
         #:city-name "Temecula, CA"
         #:banner-url (prefix/pathify temecula-banner-path)
         #:alt-tag "City of Temecula, California on a cloudy day with view of pond"

	 "Coming Soon!" )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


