#lang racket

(require 
  website/bootstrap
  "./metacoders-dot-org-temecula-site/main.rkt")

(render (pages) #:to "out")
