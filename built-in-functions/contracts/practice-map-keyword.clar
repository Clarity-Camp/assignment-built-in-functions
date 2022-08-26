
;; practice-keyword
;; 

;; We have an employee maps with employee id and the key and the value being a tuple with details of name, city, employeed
(define-map Employees uint {name: (string-ascii 20), employeed: bool, city: (string-ascii 3)})

;; Initialize 5 employees
(map-set Employees u1 {name: "Bitcoiner", employeed: true, city: "NYC"})
(map-set Employees u2 {name: "Stacker", employeed: true, city: "MIA"})
(map-set Employees u3 {name: "WLer", employeed: false, city: "DEN"})
(map-set Employees u4 {name: "LateComer", employeed: false, city: "AUT"})
(map-set Employees u5 {name: "EarlyRiser", employeed: true, city: "PHI"})

;; Write the implementation to update the employee using the provided input of employee id and status
;; and returns the updated employee map value
;; Example Call: (contract-call? .practice-map-keyword update-employee-status u1 false)
;; Result: (ok {name: "Bitcoiner", employeed: false, city: "NYC"}) 
;; you might see a different order of response - that is correct why because map value is a tuple and the tuple is unordered. 
;; Another Example Call: (contract-call? .practice-map-keyword update-employee-status u10 false)
;; Result: (err "ERR_EMPLOYEE_NOT_FOUND") - This is because u10 employee id does not exist in the Employees map. 
(define-public (update-employee-status (employee-id uint) (status bool)) 
    ;; IMPLEMENT
)

;; Write a function to read the status of the employee for the time in the past.
;; Example Call: (contract-call? .practice-map-keyword read-employee-status u1 u20)
;; Result: (ok {name: "Bitcoiner", employeed: false, city: "NYC"}) 
;; you might see a different order of response - that is correct why because map value is a tuple and the tuple is unordered. 
;; Another Example Call: (contract-call? .practice-map-keyword update-employee-status u10 false)
;; Result: (err "ERR_EMPLOYEE_NOT_FOUND") - This is because u10 employee id does not exist in the Employees map. 
(define-read-only (read-employee-status (employee-id uint) (block uint)) 
    ;; IMPLEMENT
)
