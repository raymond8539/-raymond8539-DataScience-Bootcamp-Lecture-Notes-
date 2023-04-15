# UNION VS UNION ALL:MySQL Union is an operator that allows us to combine two or more results
# from multiple SELECT queries into a single result set.
# creating an employees_dup
drop table if exists employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);
Insert into employees_dup
select
e.*
from employees e
limit 20;
SELECT 
    *
FROM
    employees_dup
ORDER BY emp_no;
insert into employees_dup
value('10001','1953-09-02', 'georgi', 'facello','M', '1986-06-26');
# OK! examples on UNION and UNION ALL
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    emp_no = '10001' 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
#
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    emp_no = '10001' 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;