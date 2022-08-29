
;; example
;; 

(define-constant SHIPPER 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM)
(define-constant RECIPIENT 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5)

(define-map Shipment {id: uint, shipper: principal} {status: (string-ascii 12), recipient: principal})

(map-set Shipment {id: u1, shipper: SHIPPER} {status: "Pending", recipient: RECIPIENT})
(map-set Shipment {id: u2, shipper: SHIPPER} {status: "Pending", recipient: RECIPIENT})

(define-public (update-status (shipment-id uint) (status (string-ascii 10)) (caller principal)) 
    (let
        (
            (shipmentValue (unwrap! (map-get? Shipment {id: shipment-id, shipper: caller}) (err "ERR_SHIPMENT_NOT_FOUND")))
            (updatedValue (merge shipmentValue {status: status}))
        )
        (map-set Shipment {id: shipment-id, shipper: caller} updatedValue)
        (ok true)
    )
)

(define-read-only (read-status (shipment-id uint) (caller principal)) 
    (get status (map-get? Shipment {id: shipment-id, shipper: caller}))
)
