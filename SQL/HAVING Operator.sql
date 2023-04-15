# HAVING refines the output from records that do not satisfy a certain condition.
# It is frequently implemented with GROUP BY.
# example 
SELECT first_name, COUNT(first_name) AS name_count
FROM employees
GROUP BY first_name
HAVING COUNT(first_name) > 255
ORDER BY first_name;
#
# assignment
SELECT *, COUNT(salary)
 FROM  salaries
 WHERE (SELECT AVG(salary) >120000)
 GROUP BY ( emp_no)
 ORDER BY emp_no;
  
  