--#1display the following: employee number,last name, first name,gender,salary
select employees.emp_no,
		employees.last_name,
		employees.first_name,
		employees.gender,
		salaries.salary
from employees
inner join salaries on
employees.emp_no=salaries.emp_no;

--#2display employees who were hired in 1986
select emp_no,
		last_name,
		first_name,
		hire_date
from
	employees
where 
	hire_date like '1986%';

--#3display department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
select d.emp_no,
		e.last_name,
		e.first_name,
		d.from_date,
		d.to_date,
		d.dept_no,
		dep.dept_name
from dept_manager d
inner join employees e on e.emp_no=d.emp_no
inner join departments dep on d.dept_no=dep.dept_no;

--#4 List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select e.emp_no,
		e.last_name,
		e.first_name,
		dep.dept_name
from employees e
inner join dept_emp d on e.emp_no=d.emp_no
inner join departments dep on d.dept_no=dep.dept_no;

--#5 List all employees whose first name is "Hercules" 
--and last names begin with "B."
select *
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--#6 List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select d.emp_no,dep.dept_name,e.last_name,e.first_name
from dept_emp d
inner join departments dep on d.dept_no=dep.dept_no
inner join employees e on d.emp_no=e.emp_no
where dep.dept_name='Sales';

--#7 List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select d.emp_no,dep.dept_name,e.last_name,e.first_name
from dept_emp d
inner join departments dep on d.dept_no=dep.dept_no
inner join employees e on d.emp_no=e.emp_no
where dep.dept_name='Sales'
or dep.dept_name='Development';

--#8 In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select last_name,
		count(last_name) as last_name_count
from employees
group by last_name
order by last_name_count desc;

select * from employees
where emp_no=499942;
--Ha!  April Foolsday!
