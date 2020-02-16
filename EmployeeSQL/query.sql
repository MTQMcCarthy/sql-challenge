--item 1
select Employee.emp_number, Employee.l_name, Employee.f_name, Employee.gender, Salary.salary
from Employee, Salary
where Employee.emp_number = Salary.emp_number;

--item 2
SELECT hire_dt, emp_number, l_name, f_name
from Employee
where hire_dt between '1/1/1986' and '12/31/1986';

--item 3
select department.dept_name, department_manager.*, employee.l_name, employee.f_name
from department, department_manager, employee
where department_manager.emp_number = employee.emp_number
and department.dept_number = department_manager.dept_number;

--item 4
select distinct department_employee.dept_emp_number, employee.l_name, employee.f_name, department.dept_name
from department_employee 
join employee
on employee.emp_number = department_employee.dept_emp_number  
join department
on department_employee.dept_number = department.dept_number;

--item 5 all employees whose first name is "Hercules" and last names begin with "B."
select * 
from employee
where f_name = 'Hercules' and l_name like 'B%';

--item 6
select department_employee.dept_emp_number, employee.l_name, employee.f_name, department.dept_name
from department_employee
join employee
on department_employee.dept_emp_number = employee.emp_number
join department
on department_employee.dept_number = department.dept_number
where department.dept_name = 'Sales';

--item 7 
select department_employee.dept_emp_number, employee.l_name, employee.f_name, department.dept_name
from department_employee
join employee
on department_employee.dept_emp_number = employee.emp_number
join department
on department_employee.dept_number = department.dept_number
where department.dept_name = 'Sales' 
or department.dept_name = 'Development';

--item 8 
select l_name,
count(l_name) as "frequency"
from employee
group by l_name
order by
count(l_name) DESC;
