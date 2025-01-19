-- Display the total loan payments made for each loan.

SELECT 
    l.loan_id,
    SUM(lp.amount) AS "Total Payment"
FROM "Loan" l
JOIN "Loan_Payment" lp 
    ON l.loan_id = lp.loan_id
GROUP BY l.loan_id;