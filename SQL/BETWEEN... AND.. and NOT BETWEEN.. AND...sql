# The BETWEEN and NOT BETWEEN operator helps us to designste the interval to which a given value belongs.
# example
SELECT* 
FROM employees
WHERE hire_date
BETWEEN '1990-01-01' AND '2000-01-01'
ORDER BY hire_date;
# 
#Assignment list of employees whose salary ranges from 66,000 to 70,000
SELECT *
FROM salaries
WHERE salary
BETWEEN '66000' AND '70000'
ORDER BY salary;
#
# Assignment:
#Retrieve a list with all individuals whose employee number is not between "10004" and "10012".
#Select the names of all departments with numbers between "d003" and "d006".

SELECT* 
FROM employees
WHERE emp_no
NOT BETWEEN '10004' AND '10012'
ORDER BY emp_no;
#
#Assignment
SELECT* 
FROM departments
WHERE dept_no
BETWEEN 'd003' AND 'd006'
ORDER BY dept_no;