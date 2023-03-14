# INSERT statement is use to insert datas into created table.
# examples
SELECT * FROM employees 
order by  emp_no desc
limit 10;
VALUES(99903, '1977-03-26', 'JOHNATHAN','CREEK', 'M', '1999-01-01');
INSERT INTO employees
(emp_no, birth_date, first_name, last_name, gender, hire_date) 
values(9999011, '1986-04-21', 'john', 'smith', 'M', '2011-01-01');
# example 2
INSERT INTO employees(birth_date, first_name, emp_no,last_name, gender, hire_date)
VALUES('1974-03-26', 'patricia', 999902, 'lawrence', 'M', '2005-01-01');
# example 2
INSERT INTO employees
VALUES( 9999903,'1977-09-14', 'johnathan', 'creek', 'm', '199-01-01');
# Assignment
SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;
INSERT INTO titles(emp_no, title, from_date)
VALUES(9999903, 'senior Engineer', '1997-10-01');
#
#INSERT INTO a new table
CREATE TABLE 
departments_dup
(
dept_no CHAR(4),
dept_name VARCHAR(40));
INSERT INTO departments_dup(dept_no, dept_name)
SELECT *
FROM departments;
select*
from departments_dup;
select * from employees where
emp_no =999901;
