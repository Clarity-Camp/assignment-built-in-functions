
;; tuple
;; Work with tuples

;; Tuple Example for this exercise is fixed
(define-constant TUPLE_INPUT {
        id: u1, 
        employee: {
            name: "Stacker", 
            city: "Windy City", 
            language: "Python", 
            clubs: (list {id: u10, name: "Club 1"}
                            {id: u20, name: "Club 2"} 
                            {id: u30, name: "Club 3"}
                    )
        }
    }
)

;; Write a function named `get-employee-name-from-tuple` which takes tuple as the input
(define-public (get-employee-name-from-tuple) 
    (ok (get name (get employee TUPLE_INPUT)))
)
;; (contract-call? .tuple get-employee-name-from-tuple)

;; Write a function named `get-employee-2nd-club-name-from-tuplee` which takes tuple as the input
(define-public (get-employee-2nd-club-name-from-tuple)
    (ok (element-at (get clubs (get employee TUPLE_INPUT)) (- u2 u1)))
)
;; (contract-call? .tuple get-employee-2nd-club-name-from-tuple)

;; Write a function `set-new-language-on-tuple` to append `Buidl` to the language and return the new tuple. 
(define-public (set-new-language-for-employee-in-tuple)
    (let
        (
            (empl (get employee TUPLE_INPUT))
            (lang (get language empl))
            (newLang (concat lang "Buidl"))
        )
        (ok (merge TUPLE_INPUT {employee: (merge empl {language: newLang})}))
    )
)
;; (contract-call? .tuple set-new-language-for-employee-in-tuple)

;; Write a function `add-new-club-to-employee-in-tuple` to append {id: u40, name: "Club 4"} to the list of clubs and return the new tuple. 
(define-public (add-new-club-to-employee-in-tuple)
    (let
        (
            (empl (get employee TUPLE_INPUT))
            (clubss (get clubs empl))
            (newClubs (append clubss {id: u40, name: "Club 4"}) )
        )
        (ok (merge TUPLE_INPUT {employee: (merge empl {clubs: newClubs})}))
    )
)

;; (contract-call? .tuple add-new-club-to-employee-in-tuple)

