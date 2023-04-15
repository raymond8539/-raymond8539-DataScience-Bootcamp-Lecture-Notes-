# COALESCE returns the first NON NULL  value. it parenthesis can contain one, two, or more argument. 
# This is thesame as  the IF NULL, only that the IFNULL contains two argument.
#example
CREATE TABLE IF NOT EXISTS departments_dup
(
dept_no CHAR(4)NULL,
dept_name VARCHAR(40)NULL );
INSERT INTO departments_dup
SELECT
*
FROM
departments;
SELECT 
*
FROM 
departments_dup
ORDER BY dept_no;
INSERT INTO departments_dup(dept_no)
VALUES('d010'),
('d011');
ALTER TABLE departments_dup
ADD COLUMN dept_manager VARCHAR(225) NULL
 AFTER dept_name;
SET AUTOCOMMIT = 0;
COMMIT;
# EXAMPLE: IF NULL
SELECT 
    dept_no,
    IFNULL('dept_name',
            'department name not provided') AS dept_name
FROM
    departments_dup;
# to check 
SELECT * 
FROM 
departments_dup;
# example of COALESCE
SELECT 
dept_no,
dept_name,
COALESCE ('dept_manager','dept_name','N/A') AS dept_manager
FROM
 Departments_dup
 ORDER BY dept_no ASC;
 #
 SELECT dept_no, 
 dept_name,
 COALESCE('departments manager name') AS fake_column
 FROM 
 departments_dup;
 # 
 # more example of COALESCE
  insert into departments_dup(dept_manager)
 values('raymond');
 SELECT 
    *
FROM
    departments_dup;
    # example of COALESCE
SELECT 
*,
COALESCE (dept_name,dept_manager,'N/A') AS result
FROM
 Departments_dup
 ORDER BY dept_no desc;
 