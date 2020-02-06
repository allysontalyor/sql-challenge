--create a table to hold the csv employees, the emp_no is the primary key
--I used int as the data type for emp_no bc no values begin with 0, all other
--data types must be variable character
drop table employees;
create table employees(
	emp_no int not null primary key,
	birth_date varchar(50) not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	gender varchar(5) not null,
	hire_date varchar(25) not null
);
--import the csv and display data
select * from employees;

--create a table that will hold data from departments.csv, set dept_no as pk
--both data types must be variable character
drop table departments;
create table departments(
	dept_no varchar(50) not null primary key,
	dept_name varchar(50) not null
);

--import the csv departments
select * from departments;

drop table dept_emp;
--create a table to hold data from dept_emp.csv
--I used int as the data type for emp_no bc no values begin with 0, all other
--data types must be variable character
--define dept_no as the foreign key which links to departments.dept_no
create table dept_emp(
	emp_no int not null,
	dept_no varchar(50) not null, 
	from_date varchar(50) not null,
	to_date varchar(50) not null,
	foreign key (dept_no) references departments(dept_no)
);

--import dept_emp.csv
select * from dept_emp;

--create a table to hold data from salaries.csv, emp_no is an integer,
--salary is a float, and all other fields must be variable character
create table salaries(
	emp_no int not null,
	salary float not null,
	from_date varchar(50),
	to_date varchar(50)
);

--import data from csv
select * from salaries;

--create table to hold data from titles.csv, emp_no is an int, all other data types
--are variable character
create table titles(
	emp_no int not null,
	title varchar(50) not null,
	from_date varchar(50) not null,
	to_date varchar(50) not null
);

--import data from csv
select * from titles;

drop table dept_manager;
--create a table to hold data from dept_manger.csv, emp_no is an int, but all other
--data types are variable character
create table dept_manager(
	dept_no varchar(50) not null,
	emp_no int not null,
	from_date varchar(50) not null,
	to_date varchar(50) not null,
	foreign key (dept_no) references departments(dept_no)
);

--import data from csv
select * from dept_manager;


