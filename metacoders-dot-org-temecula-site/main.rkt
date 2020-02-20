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

	 (remote 
	    "https://mc-social-media.s3-us-west-1.amazonaws.com/static-points-of-sale/temecula.html") )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


