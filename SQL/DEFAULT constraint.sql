# Default constraint helps to assign a particular value to every row of a column. 
#example 
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;
#to drop default values
ALTER TABLE customers
ALTER COLUMN  number_of_complaints DROP DEFAULT;
# Assignment: Recreate companies table. make head_quater_phone_number the unique key 
DROP TABLE companies;
CREATE TABLE companies 
(
company_id VARCHAR(255),
comnay_name VARCHAR(255) DEFAULT 1,
head_quarter_phone_number VARCHAR(255),
UNIQUE KEY(head_quarter_phone_number)
);