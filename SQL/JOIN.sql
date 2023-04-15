# JOIN is an SQL tool that allows you construct a relationship between two objects.
# example 
# to check the columns in each table
SELECT 
    *
FROM
    dept_manager_dup;
SELECT 
    *
FROM
    departments_dup;
DELETE FROM dept_manager_dup 
WHERE
    dept_no = 'd001';
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;
# example on join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup 
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
# 
SELECT 
    m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
# example 3
select
m.dept_no,
m.emp_no,
d.dept_no,
d.dept_name
from 
dept_manager_dup m
join departments_dup d on m.dept_no = d.dept_no;
  # assignment
  SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    dept_manager_dup m
        JOIN
    employees e ON e.emp_no = m.emp_no
ORDER BY m.emp_no;

