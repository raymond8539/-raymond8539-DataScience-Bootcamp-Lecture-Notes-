# HAVING VS WHERE
# Example
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) > 2000
ORDER BY first_name DESC;