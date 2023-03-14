# COMMIT statement is to save transactions in the database , once change is commited it cannot be undone.
# example
DROP TABLE departments_dup;
select * 
from departments_dup;
create table departments_dup
(
dept_no char(4),
dept_name varchar(40)
);
insert into departments_dup
select * from departments;
select * from departments_dup
order by dept_no;
set autocommit = 0;
commit;
update departments_dup
set dept_no = 'd001', dept_name = 'quality control';
#ROLLBACK revert to the last committed state
rollback;
#
# Assignment
ALTER TABLE 
departments
CHANGE column dept_name data_analysis varchar(255) NOT NULL;