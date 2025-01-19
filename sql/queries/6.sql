-- Find the top 5 customers with the highest account balances

SELECT 
    first_name || ' ' || last_name name, 
    balance;
FROM "Person" p
INNER JOIN 
    "Account" a ON p.person_id = a.person_id
ORDER BY balance DESC
LIMIT 5;
