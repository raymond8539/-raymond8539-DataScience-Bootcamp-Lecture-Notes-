# 'LIKE' and 'NOT LIKE' statement allows SQL to look for parttern which will be use to identify what you want.
#example of LIKE operator:
SELECT* 
FROM employees
WHERE first_name
LIKE('Mar%');
#
#example_2:
SELECT* 
FROM employees
WHERE first_name
LIKE('%Mar');
# example3:
SELECT* 
FROM employees
WHERE first_name
LIKE('Mar_');
#
# example_4:
SELECT* 
FROM employees
WHERE first_name
LIKE('%ar%');
#
# Assignment: All individual whose name start with "mark"
SELECT* 
FROM employees
WHERE first_name
LIKE('Mark%');
#
#Assignment2:list of all employees hired in the year 2000.
SELECT* 
FROM employees
WHERE hire_date
LIKE('2000%')
ORDER BY hire_date;
#
#Assignment3:Retrieve a list with all employees whose employee number is written with 5 characters, and starts with "1000".

SELECT* 
FROM employees
WHERE emp_no
LIKE('1000_');

