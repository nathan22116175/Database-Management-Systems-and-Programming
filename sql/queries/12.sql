-- Find the name, age, and address of cardholders for the three cards expiring soonest

SELECT 
    p.first_name || ' ' || p.last_name name,
    EXTRACT(YEAR FROM 
			AGE(CURRENT_DATE, p.date_of_birth)) 
			AS age,
    p.address,
    c.card_number,
    c.expiry_date
FROM 
    "Card" c
JOIN 
    "Account" a ON c.account_id = a.account_id
JOIN 
    "Person" p ON a.person_id = p.person_id
ORDER BY 
    c.expiry_date ASC
LIMIT 3;
