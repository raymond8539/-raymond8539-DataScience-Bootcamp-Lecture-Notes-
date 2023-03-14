# NOT NULL constraint, once applied, the field or column can not be empty else mySQL will signal error. 
#Example
USE sales;
DROP TABLE companies;
CREATE TABLE companies
(
company_id INT AUTO_INCREMENT,
head_quarter_phone_number VARCHAR(255),
company_name VARCHAR(255) NOT NULL,
PRIMARY KEY(company_id)
);
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;
#second approach
ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;