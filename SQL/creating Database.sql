#creating data base
CREATE DATABASE IF NOT EXISTS sales;
# creating a table example
use sales;
CREATE TABLE sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_puchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY(purchase_number)
);
#assignment: 
# customer_id, first_name, last_name, email_address, and number_of_complaints.
 #Let the data types of customer_id and number_of_complaints be integer,
 #while the data types of all other columns be VARCHAR of 255.
 
CREATE TABLE customers
(
customer_id INT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255),
number_of_complaints INT,
PRIMARY KEY(customer_id)
);
# selecting all the records of a table in a database 
# example
USE sales;
SELECT * FROM customers;
#second approach
SELECT * FROM sales.customers;
# Assignment_2:using the select statement to select sales table from sale database
USE sales;
SELECT * FROM sales;
#second approach
SELECT* FROM sales.sales;
#Assignment: you can delete a table by using the DROP.
DROP TABLE sales;

