-- Find the last transaction of youngest person who withdrew money from an ATM

SELECT 
    p.first_name,
    p.last_name,
    p.date_of_birth,
    t.time AS last_withdrawal_time
FROM 
    "Person" p
JOIN 
    "Account" a ON p.person_id = a.person_id
JOIN 
    "Transaction" t ON a.account_id = t.account_id
WHERE 
    t.description = 'ATM Withdrawal'
ORDER BY 
    t.time DESC, 
    p.date_of_birth DESC
LIMIT 1;