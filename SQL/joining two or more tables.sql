# joining more than tow tables in SQL examples
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON d.dept_no = m.dept_no;
# assignment:Select all managers' first and last name, hire date, job title, start date, and department name.
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    titles t ON m.emp_no = t.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no;
    # assignment  on tips and tricks for joining
    #How many male and how many female managers do we have in the "employees" database?
    select
count(e.gender) as manager,e.gender
    from 
    dept_manager dm
    join employees e on dm.emp_no = e.emp_no
    group by gender
    order by gender;
    