select max(emp_no)
 from employees;
 insert into employees
 values(999901, '1986-04-21', 'john', 'smith', 'M', '2011-01-01');
 select *
  from employees
  where emp_no = 99903;
  INSERT INTO employees 
  VALUES(999902,'1973-03-26', 'patricia', 'lawrence','F','2005-01-01');
  insert into employees 
  values(999903, '1977-09-14', 'johnathan','creek','M', '1999-01-01');
  SELECT 
    *
FROM
    employees
ORDER BY emp_no desc
LIMIT 15;
update employees
set first_name = 'stella',
last_name = 'parkison',
birth_date= '1990-12-31',
gender = 'M'
where emp_no = 999901;
select *
 from departments_dup
 order by dept_no;
 insert into departments_dup(dept_no)
 values('d010'), ('d011');
 delete from departments_dup
 where dept_no = 'd010';
  delete from departments_dup
 where dept_no = 'd011';
 select 
dept_no,dept_name,
coalesce(dept_name,'department name not provided') as dept_names
from departments_dup;