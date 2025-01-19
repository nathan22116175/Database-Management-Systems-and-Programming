-- List the shortened version of the account number (first 5 characters), and the formatted balance of all active accounts.

SELECT
    account_id,
    SUBSTRING(account_number FROM 1 FOR 5) 
	AS short_account_number,
    
    TO_CHAR(ROUND(balance, 2), '$99,999.00') 
	AS formatted_balance
    
FROM 
    "Account"
WHERE 
    status = 1;