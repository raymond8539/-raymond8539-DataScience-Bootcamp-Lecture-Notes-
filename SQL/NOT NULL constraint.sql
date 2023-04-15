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
#
#assignment:
#Using ALTER TABLE, first add the NULL constraint to the headquarters_phone_number field
# in the "companies" table, and then drop that same constraint.
#
use sales;
select *
from companies;
insert into companies(head_quarter_phone_number,company_name)
values('090567845', 'ray eatry');
#
insert into companies(head_quarter_phone_number,company_name)
values('0800567845', 'ray fashion');
# 
alter table companies
change column head_quarter_phone_number head_quarter_phone_number varchar(255) not null;
#
#making it null 
alter table companies
modify head_quarter_phone_number varchar(255)null;