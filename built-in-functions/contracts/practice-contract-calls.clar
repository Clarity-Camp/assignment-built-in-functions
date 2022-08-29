
;; practice-contract-calls
;; 

;; Call `example` contract to update the shipment.
(define-public (update-shipment (shipment-id uint) (status (string-ascii 10)))
    (let 
        (
            (caller tx-sender)
        )
        (ok (try! (as-contract (contract-call? .example update-status shipment-id status caller))))
    )
)

;; Call `example` contract to read the status of the shipment
(define-read-only (read-shipment (shipment-id uint))
    (let 
        (
            (caller tx-sender)
        )
        (as-contract (contract-call? .example read-status shipment-id caller))
    )
)
