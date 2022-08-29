
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

;; Call function `example` contract to update the shipment.
(define-public (update-shipment (shipment-id uint) (status (string-ascii 10)))
    (let 
        (
            (caller tx-sender)
        )
        (ok (try! (as-contract (contract-call? .example update-status shipment-id status caller))))
    )
)

;; Call function `example` contract to read the shipment details of the shipment
(define-read-only (read-shipment (shipment-id uint))
    (let 
        (
            (caller tx-sender)
        )
        (as-contract (contract-call? .example read-shipment shipment-id caller))
    )
)
