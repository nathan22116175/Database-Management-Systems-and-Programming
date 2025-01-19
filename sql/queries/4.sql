-- Account number of all accounts opened by Laura Lee

SELECT account_number
FROM "Account" a
JOIN "Person" p ON a.person_id = p.person_id
JOIN "Customer" c ON c.person_id = p.person_id
WHERE c.created_by_id = 
    (SELECT person_id 
	 FROM "Person" p 
	 WHERE p.first_name = 'Laura' 
	 AND p.last_name = 'Lee');