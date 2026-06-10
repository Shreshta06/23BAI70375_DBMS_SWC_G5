select count(*) as payment_count from transactions a join transactions b on a.merchant_id=b.merchant_id
and a.credit_card_id=b.credit_card_id and a.amount=b.amount
where b.transaction_timestamp<=a.transaction_timestamp + interval '10 minutes' and a.transaction_timestamp < b.transaction_timestamp
