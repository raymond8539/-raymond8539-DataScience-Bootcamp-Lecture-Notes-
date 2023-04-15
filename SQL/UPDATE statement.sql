# UPDATE statement is use to update the values of existing records in the table
# example 
UPDATE employees 
SET 
    last_name = 'parkinson',
    birth_date = '1990-12-31',
    first_name = 'stella',
    gender = 'F'
WHERE
    emp_no = 999901;
SELECT 
    *
FROM
    departments_dup;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
#example 2 
drop table departments_dup;
CREATE TABLE departments_dup (
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(40) NULL
);
insert into departments_dup( dept_no, dept_name) select * from departments;
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;
set autocommit = 0;
UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'quality control';
rollback;
#
# ASSIGNMENT
ALTER TABLE departments
CHANGE data_analysis dept_name varchar(255);
SELECT 
    *
FROM
    departments;
