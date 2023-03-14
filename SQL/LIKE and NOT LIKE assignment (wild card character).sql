# Assignment: list of employees whose first_name contains jack
SELECT* 
FROM employees
WHERE first_name
LIKE('%jack%');
#
#assignment_2:
SELECT* 
FROM employees
WHERE first_name
NOT LIKE('%jack%');