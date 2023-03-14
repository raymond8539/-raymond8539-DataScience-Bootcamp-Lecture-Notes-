# the use of comparison operators e.g <,>,+,-, =, != and so on. 
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
#Assignment
SELECT * 
FROM employees
WHERE hire_date  LIKE('2000%') AND gender= 'F';
#
#Assignment 2
SELECT * 
FROM salaries
WHERE salary > 150000;