
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

;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------
;; TASK 1

;; Implement the function `get-employee-2nd-club-name-from-tuple` which takes tuple as the input (see above the tuple input)
;; and fetches the 2nd club name for the employee

;; Example Call: (contract-call? .practice-tuple get-employee-2nd-club-name-from-tuple)
;; Result: (ok "Club 2")
;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------

;; (define-public (get-employee-2nd-club-name-from-tuple)
;;     ;; IMPLEMENT
;; )


;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------
;; TASK 2

;; Implement the function `set-new-language-in-tuple` which takes tuple as the input (see above the tuple input)
;; and updates the language for the employee by appending `Buidl` to it and returns the updated tuple result
;; NOTE: the tuple defined above is a constant so you do not need to update the constant value

;; Example Call: (contract-call? .practice-tuple set-new-language-in-tuple)
;; Result: (ok {
;;         id: u1, 
;;         employee: {
;;             name: "Stacker", 
;;             city: "Windy City", 
;;             language: "PythonBuidl", 
;;             clubs: (list {id: u10, name: "Club 1"}
;;                          {id: u20, name: "Club 2"} 
;;                          {id: u30, name: "Club 3"}
;;                     )
;;         }
;;     }
;; )
;; NOTE: The response values will be same but your response might look different
;; and that would only be because the tuple is unordered 
;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------

;; Uncomment the below code and implement the function `set-new-language-for-employee-in-tuple` to append `Buidl` to the language and return the new tuple. 
;; (define-public (set-new-language-for-employee-in-tuple)
;;     ;; IMPLEMENT
;; )
