# Aggregate function: they are applied on multiple rows of a single column of a table and return an output
#of a single value, they include COUNT(), SUM(), MIN(), MAX(), AVG(). 
#Example
SELECT  COUNT(emp_no)
FROM employees;
#
# example2
SELECT  COUNT(first_name)
FROM employees;
# 
# example3
SELECT  COUNT(DISTINCT first_name)
FROM employees;
#
#Note that aggregate functions ignore NULL values unless told not to.
#
# Assignment
SELECT *
FROM dept_manager;