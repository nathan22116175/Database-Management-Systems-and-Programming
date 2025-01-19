-- List card information of all customers with an outstanding loan above 10000

SELECT c.*
FROM "Card" c
LEFT JOIN "Account" a ON a.account_id = c.account_id
WHERE a.account_id IN (
    SELECT account_id 
    FROM "Loan" 
    WHERE loan_amount > 10000);

