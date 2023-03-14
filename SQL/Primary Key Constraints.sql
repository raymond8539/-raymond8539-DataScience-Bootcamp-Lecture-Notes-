# Primary key constraints are specific rules or limit that we define in our table
# Assignment:creating a customers table applying the primary key constraint
DROP TABLE customers;
CREATE TABLE customers
(
customer_id INT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255),
number_0f_complaints INT,
PRIMARY KEY(customer_id)
);
#Assignment_2: creating the item table.
CREATE TABLE items
(
item_code VARCHAR(255),
item VARCHAR(255),
unit_price NUMERIC(10,2),
company_id VARCHAR(255)
);
DROP TABLE companies;
#Creating companies table
CREATE TABLE companies
(
company_id VARCHAR(255),
company_name VARCHAR(255),
head_quarters_phone_number INT(12)
);