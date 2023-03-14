# UPDATE statement is use to update the values of existing records in the table
# example 
UPDATE employees
SET last_name = 'parkinson',
birth_date = '1990-12-31',
first_name = 'stella',
gender = 'F'
WHERE 
emp_no = 999901;
#
# to check if the change has been effected.
select*
from departments_dup;
select * from employees where
emp_no =999901;
