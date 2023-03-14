# SELECT DISTINCT operator allows us to get rid of duplicated value thus extracting unique values only.
# example 
SELECT DISTINCT 
gender
FROM 
employees;
#
# Assignment: All different hire_dates from employees table. 
SELECT DISTINCT 
hire_date
FROM
employees
ORDER BY hire_date;