#A subquery in MySQL is a query, which is nested into another SQL query and embedded with SELECT, INSERT, UPDATE or DELETE statement 
#along with the various operators.
#example
#select the first and last name from the employees table for the same employee numbers that can be found in the department
#manager table
select 
e.first_name, e.last_name
from 
employees e
where emp_no in (select dm.emp_no 
from 
dept_manager dm);
#
#assignment:Extract the information about all department managers who were hired
#between the 1st of January 1990 and the 1st of January 1995. 
#
SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995');
            #
            #SQL subquery EXISTS  NOT EXISTS  nested inside WHERE
            #example
            SELECT 
            e.first_name, e.last_name
            FROM 
            employees e
            WHERE 
            EXISTS(SELECT *
            FROM 
            dept_manager dm WHERE 
            dm.emp_no= e.emp_no);
            #
            # task 2:
            SELECT * 
            from employees e
            where  exists(select *
            from titles t
            where e.emp_no = t.emp_no and title = 'assistant engineer');
            # 
            # using ORDER BY in subquery 
            SELECT 
            e.first_name, e.last_name 
            FROM  
            employees e
            WHERE EXISTS(SELECT * 
            FROM 
            dept_manager dm 
            WHERE  dm.emp_no = e.emp_no
            ORDER BY  emp_no);
            #
            #task: assign employee number 110022 as a manager to all employees from 10001 to 10020 ,
            #and  employee number 110039 as a manager to all employees from 10021 to 10040. 
            SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A;
             
			SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B;