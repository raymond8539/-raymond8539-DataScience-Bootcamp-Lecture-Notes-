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
#Assignment
SELECT * 
FROM departments
WHERE dept_name IS NOT NULL;