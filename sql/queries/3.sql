-- Calculate the average account balance by account type

SELECT 
    account_type,
    AVG(balance) average_balance
FROM "Account" a
GROUP BY account_type;
