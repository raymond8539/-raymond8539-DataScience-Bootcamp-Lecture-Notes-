# Unique constraint are used to implement the unique key(non duplicate)
# example 
ALTER TABLE customers
ADD UNIQUE KEY (email_address);
# example_2: dropping UNIQUE key constraint
ALTER TABLE customers
DROP INDEX email_address;
# Assignment: drop and recreate the customers table
DROP TABLE customers;
CREATE TABLE customers
(
customer_id INT AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255), 
number_of_complaints INT,
PRIMARY KEY(customer_id)
);
ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;
INSERT INTO customers(first_name, last_name, gender, email_address, number_of_complaints)
 VALUES ('Egedegbe', 'Raymond', 'M', 'rayfadd@gmail.com', 0)
;