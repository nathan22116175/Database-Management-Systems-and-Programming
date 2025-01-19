-- List the name of all customers who haven't opened account in New York

SELECT first_name || ' ' || last_name name
FROM "Person" p
JOIN "Customer" c 
    ON c.person_id = p.person_id
JOIN "Employee" e 
    ON e.person_id = c.created_by_id
JOIN "Branch" b 
    ON b.branch_id = e.branch_id
WHERE b.branch_city <> 'New York';