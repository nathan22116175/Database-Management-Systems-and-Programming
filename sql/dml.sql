INSERT INTO "Branch" (branch_id, branch_name, branch_country, branch_city, branch_address, contact_number) 
VALUES
(1, 'Central Branch', 'USA', 'New York', '100 Main Street', '+1-212-555-0101'),
(2, 'West Branch', 'USA', 'Los Angeles', '200 West Sunset Blvd', '+1-310-555-0102'),
(3, 'East Branch', 'USA', 'Boston', '300 Commonwealth Ave', '+1-617-555-0103'),
(4, 'North Branch', 'Canada', 'Toronto', '400 Maple Street', '+1-416-555-0104'),
(5, 'South Branch', 'USA', 'Miami', '500 Ocean Drive', '+1-305-555-0105'),
(6, 'London Branch', 'UK', 'London', '600 High Street', '+44-20-555-0106'),
(7, 'Paris Branch', 'France', 'Paris', '700 Rue de Rivoli', '+33-1-555-0107'),
(8, 'Berlin Branch', 'Germany', 'Berlin', '800 Unter den Linden', '+49-30-555-0108'),
(9, 'Tokyo Branch', 'Japan', 'Tokyo', '900 Shibuya Crossing', '+81-3-555-0109'),
(10, 'Sydney Branch', 'Australia', 'Sydney', '1000 George Street', '+61-2-555-0110');




-- Attribute person_type change from integer to varchar.  
ALTER TABLE "Person"
ALTER COLUMN person_type
SET DATA TYPE VARCHAR(16);

-- Ensure no duplicate email in the Person table
ALTER TABLE "Person"
ADD CONSTRAINT unqiue_email UNIQUE(email);

-- Ensure no duplicate contact_number in the Person table
ALTER TABLE "Person"
ADD CONSTRAINT unqiue_contact UNIQUE(contact_number);

INSERT INTO "Person" (person_ID, first_name, last_name, email, contact_number, date_of_birth, address, person_type, joining_date, created_at) 
VALUES
(10001, 'John', 'Peters', 'john.peters@bankexample.com', '+1-212-555-1001', '1979-04-15', '101 Park Ave, New York, USA', 'Customer', '2008-03-15', NOW()),
(10005, 'Jane', 'Smith', 'jane.smith@bankexample.com', '+1-310-555-1002', '1982-08-21', '202 West Blvd, Los Angeles, USA', 'Employee', '2009-07-10', NOW()),
(10008, 'Robert', 'Johnson', 'robert.johnson@bankexample.com', '+1-617-555-1003', '1975-11-30', '303 Beacon St, Boston, USA', 'Employee', '2007-05-25', NOW()),
(10009, 'Emily', 'Davis', 'emily.davis@bankexample.com', '+1-416-555-1004', '1985-01-05', '404 Maple Rd, Toronto, Canada', 'Customer', '2010-02-14', NOW()),
(10011, 'Michael', 'Wilson', 'michael.wilson@bankexample.com', '+1-305-555-1005', '1978-06-11', '505 Ocean Dr, Miami, USA', 'Customer', '2006-11-01', NOW()),
(10015, 'Karen', 'Brown', 'karen.brown@bankexample.com', '+44-20-555-1006', '1980-09-12', '606 Regent St, London, UK', 'Employee', '2011-09-10', NOW()),
(10027, 'David', 'Jones', 'david.jones@bankexample.com', '+33-1-555-1007', '1977-12-02', '707 Rue Cler, Paris, France', 'Customer', '2005-04-30', NOW()),
(10028, 'Linda', 'Garcia', 'linda.garcia@bankexample.com', '+49-30-555-1008', '1983-03-19', '808 Alexanderplatz, Berlin, Germany', 'customer', '2012-12-12', NOW()),
(10036, 'Mark', 'Miller', 'mark.miller@bankexample.com', '+81-3-555-1009', '1976-10-27', '909 Shinjuku, Tokyo, Japan', 'Employee', '2008-08-08', NOW()),
(10051, 'Patricia', 'Taylor', 'patricia.taylor@bankexample.com', '+61-2-555-1010', '1981-07-16', '1010 Darling St, Sydney, Australia', 'Customer', '2009-04-04', NOW()),
(10101, 'Alice', 'Anderson', 'alice.anderson@example.com', '+1-212-555-2001', '1990-03-14', '1101 Broadway, New York, USA', 'Customer', '2020-01-10', NOW()),
(10109, 'Peter', 'Thomas', 'peter.thomas@example.com', '+1-310-555-2002', '1992-05-29', '1202 Vine St, Los Angeles, USA', 'Employee', '2020-02-15', NOW()),
(10171, 'Susan', 'Jackson', 'susan.jackson@example.com', '+1-617-555-2003', '1988-11-03', '1303 Commonwealth Ave, Boston, USA', 'Employee', '2020-03-20', NOW()),
(10189, 'Daniel', 'White', 'daniel.white@example.com', '+1-416-555-2004', '1991-09-07', '1404 King St, Toronto, Canada', 'Customer', '2020-04-25', NOW()),
(10194, 'Sarah', 'Harris', 'sarah.harris@example.com', '+1-305-555-2005', '1989-01-12', '1505 Collins Ave, Miami, USA', 'Customer', '2020-05-30', NOW()),
(10237, 'Jessica', 'Martin', 'jessica.martin@example.com', '+44-20-555-2006', '1993-07-08', '1606 Baker St, London, UK', 'Employee', '2020-06-05', NOW()),
(10251, 'Thomas', 'Thompson', 'thomas.thompson@example.com', '+33-1-555-2007', '1994-12-19', '1707 Montparnasse, Paris, France', 'Employee', '2020-07-10', NOW()),
(10266, 'Maria', 'Moore', 'maria.moore@example.com', '+49-30-555-2008', '1996-04-01', '1808 Potsdamer Platz, Berlin, Germany', 'Customer', '2020-08-15', NOW()),
(10507, 'James', 'Clark', 'james.clark@example.com', '+81-3-555-2009', '1995-02-23', '1909 Ginza, Tokyo, Japan', 'Employee', '2020-09-20', NOW()),
(10532, 'Laura', 'Lee', 'laura.lee@example.com', '+61-2-555-2010', '1993-06-14', '2010 Circular Quay, Sydney, Australia', 'Employee', '2020-10-10', NOW());




INSERT INTO "Employee" (person_id, branch_id, role) 
VALUES
(10005, 1, 01),
(10008, 2, 02),
(10015, 3, 01),
(10036, 1, 02),
(10109, 5, 01),
(10171, 6, 01),
(10237, 1, 02),
(10251, 8, 01),
(10507, 9, 02),
(10532, 10, 01);




INSERT INTO "Customer" (person_id, created_by_id) 
VALUES
(10001, 10532),
(10009, 10532),
(10011, 10532),
(10027, 10109),
(10028, 10251),
(10051, 10532),
(10101, 10532),
(10189, 10507),
(10194, 10015),
(10266, 10036);




INSERT INTO "Account" (account_number, person_id, account_type, balance, status, opened_in_branch_id, opened_by_employee_id, created_at, closed_at) 
VALUES
('ACC-1001', 10001, 1, 1000.20, 1, 1, 10005, '2018-12-31', NULL),
('ACC-1002', 10009, 2, 2500.50, 1, 9, 10507, '2020-10-07', NULL),
('ACC-1003', 10011, 1, 501.00, 1, 3, 10015, '2019-05-10', NULL),
('ACC-1004', 10027, 2, 10000.00, 1, 4, 10036, '2021-11-02', NULL),
('ACC-1005', 10028, 2, 750.75, 1, 7, 10237, '2024-06-17', NULL),
('ACC-1006', 10051, 1, 220.00, 1, 6, 10171, '2023-02-24', NULL),
('ACC-1007', 10101, 2, 3000.00, 1, 5, 10109, '2022-09-30', NULL),
('ACC-1008', 10189, 1, 400.00, 1, 8, 10251, '2020-08-28', NULL),
('ACC-1009', 10194, 2, 9900.99, 1, 2, 10008, '2023-01-13', NULL),
('ACC-1010', 10266, 1, 50.00, 1, 10, 10532, '2018-04-16', NULL);




INSERT INTO "Card" (account_id, card_type, card_number, cvv, expiry_date) 
VALUES
('1', 1, '4111111111111111', 123, '2025-12-31'),
('2', 1, '5500000000000004', 456, '2025-11-30'),
('3', 2, '4111111111111112', 234, '2026-10-31'),
('4', 2, '5500000000000005', 567, '2025-09-30'),
('5', 1, '4111111111111113', 345, '2026-08-31'),
('6', 1, '4111111111111114', 678, '2025-07-31'),
('7', 2, '5500000000000006', 789, '2026-06-30'),
('8', 1, '4111111111111115', 890, '2025-05-31'),
('9', 2, '5500000000000007', 901, '2026-04-30'),
('10', 1, '4111111111111116', 321, '2026-03-31');




INSERT INTO "Transaction" (account_id, transaction_type, amount, time, description) 
VALUES
('8', 1, 100.00, ('2024-02-21 09:10:05'), 'Initial Deposit'),
('7', 2, 50.00, ('2022-07-18 12:22:41'), 'ATM Withdrawal'),
('1', 1, 500.00, ('2024-12-31 11:56:26'), 'ACH Deposit'),
('9', 1, 200.00, ('2023-10-27 08:15:03'), 'Check Deposit'),
('3', 2, 100.00, ('2024-05-10 07:27:15'), 'Online Purchase'),
('2', 1, 300.00, ('2021-12-12 10:48:00'), 'Cash Deposit'),
('4', 2, 150.00, ('2022-08-14 11:07:52'), 'Bill Payment'),
('5', 3, 1000.00, ('2024-09-09 00:12:38'), 'Wire Transfer In'),
('10', 2, 200.00, ('2020-11-01 12:55:11'), 'Debit Card Purchase'),
('6',1, 400.00, ('2023-12-07 10:31:22'), 'Mobile Deposit');




INSERT INTO "Loan" (account_id, loan_id, loan_type, loan_amount, interest_rate, start_date, end_date) 
VALUES
('2', 0290, 1, 5000.00, 5.00, '2024-01-30', '2026-01-29'),
('7', 1059, 1, 10000.00, 4.50, '2024-02-19', '2027-02-18'),
('4', 0001, 2, 250000.00, 3.25, '2024-03-09', '2030-03-08'),
('6', 2832, 1, 2000.00, 6.00, '2024-04-15', '2025-04-14'),
('1', 2010, 2, 150000.00, 3.50, '2024-05-08', '2028-05-07'),
('3', 4372, 1, 7500.00, 5.25, '2024-06-20', '2027-06-19'),
('10', 3904, 2, 300000.00, 3.00, '2024-07-16', '2029-07-15'),
('5', 8392, 1, 4000.00, 5.75, '2024-08-31', '2026-08-01'),
('8', 2013, 1, 12000.00, 4.75, '2024-09-18', '2026-09-17'),
('9', 2387, 2, 200000.00, 3.20, '2024-10-11', '2031-10-10');




INSERT INTO "Loan_Payment" (loan_payment_id, amount, paid_at) 
VALUES
(0290, 500.00, '2024-04-29'),
(2832, 600.00, '2024-06-14'),
(2387, 2000.00, '2024-11-10'),
(1059, 250.00, '2025-12-18'),
(2010, 1500.00, '2027-12-07'),
(8392, 750.00, '2026-10-01'),
(0001, 30000.00, '2028-05-08'),
(3904, 400.00, '2029-02-15'),
(2013, 1200.00, '2025-03-17'),
(4372,2000.00, '2025-01-19');
