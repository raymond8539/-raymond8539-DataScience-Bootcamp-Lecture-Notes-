#Foreign key constraint in SQL is define through a foreign key constraint.
# Example
CREATE TABLE sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_0f_purchase DATE,
customer_id INT,
item_code VARCHAR(255),
PRIMARY KEY(purchase_number),
FOREIGN KEY(customer_id) REFERENCES cutomers(customer_id) ON DELETE CASCADE
);
# 
#assignment:
#Looking to the next few lectures of the course, drop all tables from the "Sales" database
# in the following order: first drop "sales", then "customers", "items", and finally "companies".

USE sales;
DROP TABLE sales;
DROP TABLE items;
DROP TABLE companies;
