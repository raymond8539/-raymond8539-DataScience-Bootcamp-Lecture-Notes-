# Aliases (AS) is use to rename a selection from your query. 
# example
SELECT first_name,
 COUNT(first_name) AS name_count
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;