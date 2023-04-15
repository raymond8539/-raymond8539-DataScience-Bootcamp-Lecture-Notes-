# stored routines: it is an SQL statement or a set of SQL statement that can be stored on the database server.
# Whenever a user need to run the query in question, they can call, reference or invoke the routine.
# TYPES OF STORED ROUTINES
 # stored procedures and users define function 
 #examples
  use employees;
  drop procedure if exists select_employees;
  delimiter $$
  create procedure select_employees()
  select *
  from employees
  limit 1000;
  end $$
  delimiter ;
  # to call the procedure
  call employees.select_employees();
  # or 
call select_employees();  
# assignment: create a procedure tha will provide the average salary of all employees. Then call the procedure. 
# 
DELIMITER $$
CREATE PROCEDURE SELECT_AVG_salary ()
SELECT avg(salary) 
from salaries;
end $$
delimiter ;
call select_avg_salary;
# 
#alternative way  of executing the stored procedure is to right click on the stored procedure under the employee data base and select create 
# procedure. then fill in the values .alter