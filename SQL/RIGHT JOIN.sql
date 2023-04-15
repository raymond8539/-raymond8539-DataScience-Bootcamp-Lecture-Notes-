# RIGHT JOIN : It allows SQL to retrieve all the matching rows from the two tables plus all the value from the right table. 
# examples
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY d.dept_no;
  # 
 SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        RIGHT JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
ORDER BY d.dept_no;
 