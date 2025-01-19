-- Find out which country has the highest total account balance by grouping accounts by countries 

SELECT 
    b.branch_country,
    SUM(a.balance) AS total_balance
FROM 
    "Branch" b
JOIN 
    "Account" a ON b.branch_id = a.opened_in_branch_id
GROUP BY 
    b.branch_country
ORDER BY 
    total_balance DESC;
