
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

;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------
;; TASK 1

;; Implement the function `update-employee-status` to update the employee using the provided input of employee id and status
;; which returns the updated employee map value

;; Example Call: (contract-call? .practice-map-keyword update-employee-status u1 false)
;; Result: (ok {name: "Bitcoiner", employeed: false, city: "NYC"}) 

;; you might see a different order of response - that is correct why because map value is a tuple and the tuple is unordered. 

;; Another Example Call: (contract-call? .practice-map-keyword update-employee-status u10 false)
;; Result: (err "ERR_EMPLOYEE_NOT_FOUND") - This is because u10 employee id does not exist in the Employees map. 
;; So DO NOT FORGET to handle error scenarios and response handling. 
;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------

;; (define-public (update-employee-status (employee-id uint) (status bool)) 
;;     ;; IMPLEMENT
;; )


;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------
;; TASK 2

;; Implement the function `read-employee-status` which returns the status of the employee for the time (block) in the past.

;; Initial status of employee u1 is true and initial block height is 1. 
;; So advance the chain tip to a new block to 20
;; Make the below call to update the employee data at block height of 20 now. 
;; (contract-call? .practice-map-keyword update-employee-status u1 false)
;; Result: (ok {name: "Bitcoiner", employeed: false, city: "NYC"})

;; Now the going forward the status of the empoyee u1 is false. 

;; So advance the chain tip to a new block to 40

;; So make a Read Call at block height u19: (contract-call? .practice-map-keyword read-employee-status u1 u19)
;; Result: true

;; So make another Read Call at block height u25: (contract-call? .practice-map-keyword read-employee-status u1 u25)
;; Result: false
;;-------------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------------

;; (define-read-only (read-employee-status (employee-id uint) (block uint)) 
;;     ;; IMPLEMENT
;; )
