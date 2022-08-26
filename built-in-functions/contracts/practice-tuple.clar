
;; ;; tuple
;; ;; Work with tuples

;; ;; Tuple Example for this exercise is fixed
;; ;; {
;; ;;     id: u1, 
;; ;;     employee: {
;; ;;         name: "Stacker", 
;; ;;         city: "Windy City", 
;; ;;         language: "Python", 
;; ;;         clubs: (list {id: u10, name: "Club 1"}
;; ;;                      {id: u20, name: "Club 2"} 
;; ;;                      {id: u30, name: "Club 3"}
;; ;;                )
;; ;;     }
;; ;; }

;; ;; Write a function named `get-employee-2nd-club-name-from-tuplee` which takes tuple as the input
;; (define-public (get-employee-2nd-club-name-from-tuple (input {
;;             id: uint, 
;;             employee: {
;;                 name: (string-ascii 10), 
;;                 city: (string-ascii 15), 
;;                 language: (string-ascii 12) ,
;;                 clubs: (list 5 { id: uint, name: (string-ascii 10)})
;;             }
;;         }
;;     ))
;;     ;; IMPLEMENT
;; )

;; ;; Write a function `set-new-language-on-tuple` to append `Buidl` to the language and return the new tuple. 
;; (define-public (set-new-language-for-employee-in-tuple (input {
;;             id: uint, 
;;             employee: {
;;                 name: (string-ascii 10), 
;;                 city: (string-ascii 15), 
;;                 language: (string-ascii 12) ,
;;                 clubs: (list 5 { id: uint, name: (string-ascii 10)})
;;             }
;;         }
;;     ))
;;     ;; IMPLEMENT
;; )
