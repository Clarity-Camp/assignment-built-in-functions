
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


;; (define-public (update-employee-status (employee-id uint) (status bool)) 
;;     ;; IMPLEMENT
;; )


;; (define-read-only (read-employee-status (employee-id uint) (block uint)) 
;;     ;; IMPLEMENT
;; )
