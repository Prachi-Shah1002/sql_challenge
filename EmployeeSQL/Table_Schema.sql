-- Create table departments

create table departments(
	dept_no varchar(10) not null primary key,
	dept_name varchar(30) not null
);

select * from departments;

-- Create table titles

create table titles(
	emp_title_id varchar (10) not null primary key,
	title varchar (30) not null
);

select * from titles

-- Create table employees;

create table employees(
	emp_no int not null primary key,
	emp_title_id varchar (20) not null,
	birth_date varchar not null,
	first_name varchar (20) not null,
	last_name varchar (20) not null,
	sex varchar (5) not null,
	hire_date varchar not null,
	foreign key (emp_title_id) references titles (emp_title_id)
);

select * from employees;

-- Create table department employees

create table dept_emp(
	emp_no int not null,
	dept_no varchar (10) not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments(dept_no)
);

select * from dept_emp;

-- Create table department manager

create table dept_manager(
	dept_no varchar(10) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager;

-- Create table Salaries

create table salaries(
	emp_no int not null primary key,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);

select * from salaries;