with payments as 

(select
    id as transaction_id,
    orderid as order_id,
    paymentmethod,
    status,
    amount,
    created date,
    _batched_at 

from {{ source('stripe','payment') }} )

select * from payments
