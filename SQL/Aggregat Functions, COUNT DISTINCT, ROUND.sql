# Aggregate functions gathers data from many rows and aggregate it into a single value. In other wwords they summerize 
#
#
SELECT * 
FROM 
salaries
ORDER BY 
salary DESC
LIMIT 10;
#
#example 2
SELECT COUNT(salary)
FROM 
salaries;
#
# COUNT DISTINCT allows SQL to select and aggregate non repeated (duplicate) values. 
#example: how many employee start date are in the database
SELECT COUNT(DISTINCT from_date)
FROM 
salaries;
# 
SELECT COUNT(*)
 FROM 
 salaries;
 #
 #SUM is use to get the total value
  SELECT 
  SUM(salary)
  FROM 
  salaries;
  #
  # MAX is use to ge the miximum value
  SELECT 
  MAX(salary)
  FROM 
  salaries;
  #MIN returns the minimum value of that field
  SELECT MIN(salary)
  FROM  salaries;
  # 
  # Average (AVG) returns the half of the total 
  SELECT 
  AVG(salary) 
  FROM 
  salaries;
  #
  # Assignment
  # the lowest emp_no
  SELECT 
  MIN(emp_no) 
  FROM 
  employees;
  # the highest emp_no
  SELECT 
  MAX(emp_no)
  FROM
  employees;
  #
  SELECT 
  AVG(salary)
  FROM 
  salaries 
  WHERE from_date > '1997-01-01';
    #using the ROUND FUNCTION
  SELECT ROUND(
  AVG(salary),2)AS AVG_salary
  FROM 
  salaries 
  WHERE from_date > '1997-01-01';
  #
  #assignment:How many annual contracts with a value higher than or equal to $100,000 have been registered in
# the salaries table? How many managers do we have in the employees database? Use the star symbol 
#(*) in your code to solve this exercise.
select count(*) 
from 
salaries
where 
salary >= 100000;
  # 
  #task2
  select count(*)
  from 
  dept_manager;