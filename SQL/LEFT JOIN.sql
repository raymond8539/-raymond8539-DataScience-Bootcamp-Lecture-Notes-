# LEFT JOIN : It allows SQL to retrieve all the matching rows from the two tables plus all the value from the left table. 
# examples
SELECT 
m.dept_no, m.emp_no, d.dept_name
FROM
 dept_manager_dup m
 LEFT JOIN
 departments_dup d ON m.dept_no= d.dept_no
 group by m.emp_no
 order by d.dept_no;
 set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');
 # 
 SELECT 
 d.dept_no, m.emp_no, d.dept_name
 FROM departments_dup d 
 LEFT JOIN
 dept_manager_dup m ON d.dept_no= m.dept_no
 order by d.dept_no;
 # 
 # assignment
 select
 e.first_name,e.last_name, de.dept_no, e.emp_no
 from 
 employees e 
 left join
 dept_manager de ON e.emp_no = de.emp_no
 where e.last_name = 'markovitch'
 order by e.emp_no, de.dept_no desc;
 # yea it contains a manager with margareta markovitch