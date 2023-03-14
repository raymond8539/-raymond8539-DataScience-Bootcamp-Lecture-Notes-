# GROUP BY is one of the most powerful and useful tool in SQL. H ere result can be gruoped into specific field or fields. 
#
# examples
SELECT first_name
FROM employees
GROUP BY first_name;
# 
#eample2
SELECT first_name
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;
#
# example3
SELECT COUNT(first_name)
FROM employees
GROUP BY first_name;
#
SELECT COUNT(first_name)
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;
#


