# CROSS JOIN will take a value from a certain table and connect them with
# all the values from the table we want to join it with.
# examples
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
# 
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
#
SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.dept_no , d.dept_no;
#
select
e.*, d.*
from
departments d 
cross join
dept_manager dm
join
employees e on dm.dept_no = e.emp_no
where d.dept_no <> dm.dept_no
order by dm.emp_no, d.dept_no;
# assignment
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    dm.dept_no = 'd009'
ORDER BY dm.dept_no , d.dept_no;
# assignment 2
select
e.*, d.*
from employees e 
cross join
departments d 
where e.hire_date is not null
order by hire_date asc
limit 10;

