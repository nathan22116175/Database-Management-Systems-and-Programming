--  Find a person who created an account very close to or on the same day as their birthday

SELECT 
    p.first_name || ' ' || p.last_name name,   
    p.date_of_birth,
    a.created_at AS account_creation_date,
    ABS(
            (EXTRACT(DOY FROM a.created_at) - 
			 EXTRACT(DOY FROM p.date_of_birth))
        )
    AS days_to_birthday
FROM 
    "Person" p
JOIN 
    "Account" a ON p.person_id = a.person_id
ORDER BY 
    days_to_birthday ASC
LIMIT 1;