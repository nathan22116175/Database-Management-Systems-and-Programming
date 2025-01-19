-- List all branches with the number of employees in each branch

SELECT 
    branch_name,
    COUNT(e.person_id) employee_count
FROM "Branch" b
LEFT JOIN "Employee" e 
            ON b.branch_id = e.branch_id
GROUP BY branch_name;