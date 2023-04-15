# WHERE statement allow us to set a condition upon which we will specify what part of the data we want to 
#retrieve from the database.
# example:
SELECT * FROM employees
WHERE first_name = 'Denis';
#
# Assignment:Select all people from the "employees" table whose first name is "Elvis".
SELECT * FROM employees
WHERE first_name = 'Elvis';
# 
# AND statement: is a futher condition that helps us specify or extract the fraction of data we want from a database.
# example
SELECT * FROM employees
WHERE last_name = 'Denis' AND gender = 'M';
#
# Assignment:Retrieve a list with all female employees whose first name is Kellie.
SELECT * 
FROM employees 
WHERE first_name = 'Kellie'
AND gender = 'F';
#
# OR is used to set condition on the same column
# example
SELECT * 
FROM employees
WHERE last_name = 'Denis'
AND (gender = 'M' OR gender = 'F');
#
# Assignment:Retrieve a list with all female employees whose first name is either Kellie or Aruna.
SELECT *
FROM employees
WHERE first_name = 'Kellie' 
OR first_name = 'Aruna';
#
# practice
SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Denis' OR first_name = 'kellie');



