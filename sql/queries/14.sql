-- Group the cards by their type and finds the most common transaction type for each card type

SELECT 
    c.card_type,
    t.description,
    COUNT(t.transaction_id) AS transaction_count
FROM 
    "Card" c
JOIN 
    "Account" a ON c.account_id = a.account_id
JOIN 
    "Transaction" t ON a.account_id = t.account_id
GROUP BY 
    c.card_type, t.description
ORDER BY 
    c.card_type, transaction_count DESC;

