#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-temecula-lib
         metacoders-dot-org-lib)
         
(define/provide-course weekly-class-k-2nd-winter 
  (course
      #:topic         "Awesome Animals!"
      #:sku           "sku_YJFLPIWTkS1FyRSKtkAcA"
      #:video-path     k2-animal-mp4-path
      #:description   "MetaCoders’ novel approach to computer science education is backed by the latest scientific research that shows learning how to code is more like learning a foreign language than learning math. Therefore, we leverage the entire field of language acquisition so that our students are ready for a future where they’ll need to speak the languages of computers fluently. We also keep the emphasis on FUN, so throughout the course students will earn badges and prizes as they expand their knowledge of computer science. During this session of Coding Club, students will be designing video games featuring animals - they'll learn how to customize the colors of & heal their animal game characters, and also avoid enemies!"
      #:grade-range   "K - 2nd"
      #:location      "Temecula United Methodist Church"
      #:address       "42690 Margarita Road, Temecula CA 92592"
      #:address-link  "https://goo.gl/maps/1DDqmi9r6tv8miBJ8"
      #:price         200
      #:discount      20
      #:start-time    "10:00am"
      #:end-time      "11:30am"
      #:meeting-dates (list "2/29/2020" "3/7/2020" "3/14/2020" "3/21/2020" "4/4/2020" "4/11/2020")
      #:status        'open
   ))
   
(define/provide-course weekly-class-3rd-6th-winter
  (course
      #:topic         "Survival Video Game Design"
      #:sku           "sku_QzQL6QOfSzirPwJTAnxZ6Q"
      #:video-path     survival-mp4-path
      #:description   "In our Winter Saturday class, students will design & code their very own 2D survival games. Students will learn how to build critical features that make survival games like Minecraft and Fortnite fun! Students will use a powerful, typed language to code features like health bars, day-night cycles, and crafting/recipe mechanics. At the end of this course, students will be able to share their survival games with friends and family."
      #:grade-range   "3rd-6th"
      #:location      "Temecula United Methodist Church"
      #:address       "42690 Margarita Road, Temecula CA 92592"
      #:address-link  "https://goo.gl/maps/1DDqmi9r6tv8miBJ8"
      #:price         200
      #:discount      20
      #:start-time    "12:00pm"
      #:end-time      "1:30pm"
      #:meeting-dates (list "2/29/2020" "3/7/2020" "3/14/2020" "3/21/2020" "4/4/2020" "4/11/2020")
      #:status 'open
   ))

(define/provide-course weekly-class-k-2nd-spring
  (course
      #:topic         "Point & Click Games!"
      #:sku           "sku_AnSYvUeQrO2RhLtMJUA"
      #:video-path     k2-clicker-cartoon-mp4-path
      #:description   "In our Spring Saturday class, students will learn how to code their own whack-a-mole style games that utilize the mouse. Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? Their games will feature a point system, and students will code in-game items such that they gain or lose points when the player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!"
      #:grade-range   "K - 2nd"
      #:location      "Temecula United Methodist Church"
      #:address       "42690 Margarita Road, Temecula CA 92592"
      #:address-link  "https://goo.gl/maps/1DDqmi9r6tv8miBJ8"
      #:price         220
      #:discount      22
      #:start-time    "10:00am"
      #:end-time      "11:30am"
      #:meeting-dates (list "4/18/2020" "4/25/2020" "5/2/2020" "5/9/2020" "5/16/2020" "5/23/2020" "5/30/2020")
      #:status 'open
   ))
   
(define/provide-course weekly-class-3rd-6th-spring
  (course
      #:topic         "Battle Arena Video Game Design"
      #:sku           "sku_NJ01rwfgSUO741Ev4yLeRQ"
      #:video-path     battlearena-mp4-path
      #:description   "In our Spring Saturday class, students will design & code their very own 2D battle arena video games. What's a battle arena game? Think Fortnite! Students will learn how to code their characters' weapons and armor, create enemies to battle, and program potions that will give their character special capabilities. At the end of this course, students will participate in a Game Jam where they'll work together to create their own unique games."
      #:grade-range   "3rd-6th"
      #:location      "Temecula United Methodist Church"
      #:address       "42690 Margarita Road, Temecula CA 92592"
      #:address-link  "https://goo.gl/maps/1DDqmi9r6tv8miBJ8"
      #:price         220
      #:discount      22
      #:start-time    "12:00pm"
      #:end-time      "1:30pm"
      #:meeting-dates (list "4/18/2020" "4/25/2020" "5/2/2020" "5/9/2020" "5/16/2020" "5/23/2020" "5/30/2020")
      #:status 'open
   ))

(define (index)
  (page index.html
        (city-page
         #:city-name "Temecula, CA"
         #:banner-url (prefix/pathify temecula-banner-path)
         #:school-year-courses (list weekly-class-k-2nd-winter
                                     weekly-class-3rd-6th-winter
                                     weekly-class-k-2nd-spring
                                     weekly-class-3rd-6th-spring)
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


