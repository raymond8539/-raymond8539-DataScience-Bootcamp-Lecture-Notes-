# IN operator allows SQL to return the names or values written in parenthesis if the exists in our table.alter
# example :
SELECT *
FROM employees 
WHERE first_name 
IN('Cathie', 'Mark', 'NAthan');
#
# Assignment:
SELECT *
FROM employees
WHERE first_name 
IN('Denis', 'ELvis');
# 
# NOT IN operator will return all the names or values in the specified field except those written in the parenthesis.
# example:
SELECT *
FROM employees
WHERE first_name 
NOT IN('Cathie', 'Mark', 'Nathan');
#Assignment:
SELECT * 
FROM employees 
WHERE first_name
NOT IN('john', 'mark', 'jacob');