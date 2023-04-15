# the use of comparison operators e.g <,>, =, <=,>=, != and so on. 
# Example 
SELECT * 
FROM employees
WHERE first_name != 'mark';
#
#example_2
SELECT * 
FROM employees
WHERE first_name <> 'mark';
#
SELECT * 
FROM employees
WHERE hire_date > '2000-01-01';
#
SELECT * 
FROM employees
WHERE hire_date <= '2000-01-01';
# 
#Assignment:Retrieve a list with data about all female employees who were hired in the year 2000 or after.
#Hint: If you solve the task correctly, SQL should return 7 rows.
#Extract a list with all employees' salaries higher than $150,000 per annum.

SELECT * 
FROM employees
WHERE hire_date  LIKE('2000%') AND gender= 'F';
#second approach
select *
from 
employees
where hire_date >= '2000-01-01' and gender = 'F';
#
#Assignment 2
SELECT * 
FROM salaries
WHERE salary > 150000;