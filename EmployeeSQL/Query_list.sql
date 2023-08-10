-- 1. List the employee number, last name, first name, sex and salary of each employee

select e.emp_no,e.first_name,e.last_name,e.sex,s.salary
from employees e left join salaries s on e.emp_no =s.emp_no;

-- 2. List the first_name,last_name, and hire date for the employees who were hired in 1986

select first_name,last_name,hire_date
from employees
where hire_date like '%1996';

-- 3.List the department number for each employee along with that employee's employee number, lastname,
-- first name & department name

create view dept_man as
	select d.dept_no,d.dept_name,e.emp_no,e.first_name,e.last_name
	from dept_manager m
		inner join departments d on d.dept_no = m.dept_no
		inner join employees e on m.emp_no = e.emp_no;
select * from dept_man

-- 4.List the department number for each employee along with that employee's employee number, lastname,
-- first name & department name.

create view dep_no as
select d.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name
from employees e
	inner join dept_emp p on p.emp_no=e.emp_no
	inner join departments d on d.dept_no=p.dept_no;
	
select * from dep_no;

-- 5.List first name, last name and sex of each employee whose first name is Hercules and
--whose last name begins with the letter B

select first_name,last_name,sex from employees
where first_name like '%Hercules' and last_name like '%B';

-- 6.List each employee in the Sales department, including their employee number, last name & first name

select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e 
inner join dept_emp p on p.emp_no=e.emp_no
inner join departments d on d.dept_no=p.dept_no
where d.dept_name in ('Sales','Development');

-- 7.List each employee in the Sales and Development departments, including their employee number, last name
-- first name & department name.

select e.emp_no,e.first_name,e.last_name
from employees e
inner join dept_emp p on p.emp_no=e.emp_no
inner join departments d on d.dept_no=p.dept_no
where d.dept_name in ('Sale','Development');
									
-- 8.List the frequency counts, in descending order, of all the 
-- employee last names(that is, how many employees share each last name)

select last_name, count(last_name) as count_last_names
from employees
group by last_name
order by count_last_names desc;























































