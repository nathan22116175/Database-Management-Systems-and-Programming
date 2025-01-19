CREATE TABLE `Branch` (
  `branch_id` int PRIMARY KEY AUTO_INCREMENT,
  `branch_name` varchar(128),
  `branch_country` varchar(32),
  `branch_city` varchar(32),
  `branch_address` text,
  `contact_number` varchar(16)
);

CREATE TABLE `Person` (
  `person_id` int PRIMARY KEY AUTO_INCREMENT,
  `person_type` int,
  `first_name` varchar(128),
  `last_name` varchar(128),
  `email` varchar(128),
  `contact_number` varchar(16),
  `date_of_birth` date,
  `address` text,
  `joining_date` date,
  `created_at` timestamp
);

CREATE TABLE `Employee` (
  `person_id` int PRIMARY KEY AUTO_INCREMENT,
  `branch_id` int,
  `role` int
);

CREATE TABLE `Customer` (
  `person_id` int PRIMARY KEY AUTO_INCREMENT,
  `created_by_id` int
);

CREATE TABLE `Account` (
  `account_id` int PRIMARY KEY AUTO_INCREMENT,
  `account_number` varchar(32),
  `person_id` int,
  `account_type` int,
  `balance` decimal(15,2),
  `status` int,
  `opened_in_branch_id` int,
  `opened_by_employee_id` int,
  `created_at` timestamp,
  `closed_at` timestamp
);

CREATE TABLE `Card` (
  `card_id` int PRIMARY KEY AUTO_INCREMENT,
  `account_id` int,
  `card_type` int,
  `card_number` varchar(16),
  `cvv` int,
  `expiry_date` date
);

CREATE TABLE `Transaction` (
  `transaction_id` int PRIMARY KEY AUTO_INCREMENT,
  `account_id` int,
  `transaction_type` int,
  `amount` decimal(15,2),
  `time` timestamp,
  `description` text
);

CREATE TABLE `Loan` (
  `loan_id` int PRIMARY KEY AUTO_INCREMENT,
  `account_id` int,
  `loan_type` int,
  `loan_amount` decimal(15,2),
  `interest_rate` decimal(5,2),
  `start_date` date,
  `end_date` date
);

CREATE TABLE `Loan_Payment` (
  `payment_id` int PRIMARY KEY AUTO_INCREMENT,
  `loan_id` int,
  `amount` decimal(15,2),
  `paid_at` timestamp
);

ALTER TABLE `Employee` ADD FOREIGN KEY (`person_id`) REFERENCES `Person` (`person_id`);

ALTER TABLE `Customer` ADD FOREIGN KEY (`person_id`) REFERENCES `Person` (`person_id`);

ALTER TABLE `Customer` ADD FOREIGN KEY (`created_by_id`) REFERENCES `Person` (`person_id`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`branch_id`) REFERENCES `Branch` (`branch_id`);

ALTER TABLE `Account` ADD FOREIGN KEY (`person_id`) REFERENCES `Person` (`person_id`);

ALTER TABLE `Account` ADD FOREIGN KEY (`opened_by_employee_id`) REFERENCES `Person` (`person_id`);

ALTER TABLE `Account` ADD FOREIGN KEY (`opened_in_branch_id`) REFERENCES `Branch` (`branch_id`);

ALTER TABLE `Card` ADD FOREIGN KEY (`account_id`) REFERENCES `Account` (`account_id`);

ALTER TABLE `Transaction` ADD FOREIGN KEY (`account_id`) REFERENCES `Account` (`account_id`);

ALTER TABLE `Loan` ADD FOREIGN KEY (`account_id`) REFERENCES `Account` (`account_id`);

ALTER TABLE `Loan_Payment` ADD FOREIGN KEY (`loan_id`) REFERENCES `Loan` (`loan_id`);
