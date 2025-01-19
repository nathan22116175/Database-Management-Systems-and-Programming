-- Combine Customers and Employees' Emails

SELECT email 
FROM "Employee" 
WHERE person_id IN (SELECT person_id FROM "Customer")
UNION
SELECT email 
FROM "Person" 
WHERE person_id IN (SELECT person_id FROM "Employee");