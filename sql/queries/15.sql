-- Find the number of loans taken and the total loan amount by loan type

SELECT 
    "loan_type",
    COUNT("loan_id") AS loan_count,
    SUM("loan_amount") AS total_loan_amount
FROM 
    "Loan"
GROUP BY 
    "loan_type";
