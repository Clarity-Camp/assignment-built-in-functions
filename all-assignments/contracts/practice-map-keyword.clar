
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

;; Write a function update the employeed status of the employee
(define-public (update-employee-status (employee-id uint) (status bool)) 
    (let 
        (
            (empl (unwrap! (map-get? Employees employee-id) (err "ERR_EMPLOYEE_NOT_FOUND")))
            (update-empl (merge empl {employeed: status}))
        )
        (map-set Employees employee-id update-empl)
        (ok update-empl)
    )
)

;; Write a function to read the status of the employee for the time in the past. 
(define-read-only (read-employee-status (employee-id uint) (block uint)) 
    (at-block
        (unwrap! (get-block-info? id-header-hash block) (err "INVALID_BLOCK_HEADER"))
        (ok (map-get? Employees employee-id))
    )
)
