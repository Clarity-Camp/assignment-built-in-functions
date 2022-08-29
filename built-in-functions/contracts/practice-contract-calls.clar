
;; practice-contract-calls
;; 

(define-public (create-shipment)
    (let 
        (
            (caller tx-sender)
        )
        (as-contract (contract-call? .example create-shipment caller))
    )
)

;; (define-public (update-shipment (shipment-id uint) (status (string-ascii 10)))
;;     ;; IMPLEMENT
;; )


;; (define-read-only (read-shipment (shipment-id uint))
;;     ;; IMPLEMENT
;; )
