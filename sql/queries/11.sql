-- Find the branch location of the account where the difference between the account balance and the total transactions is the highest   

SELECT 
    b.branch_name,
    b.branch_country,
    b.branch_city,
    b.branch_address,
    a.account_id,
    a.balance,
    COALESCE(SUM(t.amount), 0) AS total_transactions,
    a.balance - COALESCE(SUM(t.amount), 0) AS balance_difference
FROM 
    "Branch" b
JOIN 
    "Account" a ON b.branch_id = a.opened_in_branch_id
LEFT JOIN 
    "Transaction" t ON a.account_id = t.account_id
GROUP BY 
    b.branch_name, b.branch_country, b.branch_city, b.branch_address, a.account_id, a.balance
ORDER BY 
    balance_difference DESC
LIMIT 1;
