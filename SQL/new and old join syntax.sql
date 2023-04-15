# The new and old join syntax
#the old join uses the WHERE clause is use to shwo the linking column from the two table. 
# example
SELECT 
m.dept_no, m.emp_no, d.dept_name
FROM
dept_manager_dup m,
departments_dup d
WHERE
 m.dept_no = d.dept_no
order by m.dept_no;
# assignment
SELECT 
e.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
from
dept_manager_dup m,
employees e
where m.emp_no = e. emp_no
order by m.emp_no;