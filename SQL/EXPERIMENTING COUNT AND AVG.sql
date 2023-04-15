# HAVING operator is use to refine the output from records that do not satisfy a certain condition. 
# it is frequently implemented with GROUP BY. 
# Example
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
HAVING COUNT(first_name)
ORDER BY first_name DESC;
# 
#Assignment
SELECT *,AVG(salary)
FROM salaries
WHERE salary > 120000;