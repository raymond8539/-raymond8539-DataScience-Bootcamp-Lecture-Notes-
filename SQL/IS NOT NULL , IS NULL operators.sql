#IS NOT NULL / IS NULL are used to extract values that are not null or null.
# example 
SELECT * 
FROM employees
WHERE first_name IS NOT NULL;
#
#example_2
SELECT * 
FROM employees
WHERE first_name IS NULL;
#
#Assignment:Select the names of all departments whose department number value is not null.
SELECT dept_name
FROM departments
WHERE dept_no IS NOT NULL;
use employees;