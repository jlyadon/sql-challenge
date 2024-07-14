create table employees (
	emp_no int primary key,
	emp_title_id varchar(5) not null,
	birth_date varchar,
	first_name varchar,
	last_name varchar not null,
	sex varchar,
	hire_date varchar
);

create table salaries (
	emp_no int,
	foreign key (emp_no) references employees(emp_no),
	salary int,
	primary key (emp_no, salary)
);

create table titles (
	title_id varchar(5) primary key,
	title varchar not null
);

create table dept_emp (
	emp_no int,
	dept_no varchar(4),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no, dept_no)
);

create table departments (
	dept_no varchar(4) primary key,
	dept_name varchar not null
);

create table dept_manager (
	dept_no varchar(4),
	emp_no int,
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no, emp_no)
);

--Imported data from the csv files at this point

--Let's take a look

select * from employees limit 5

select * from employees 
	where hire_date like '4/30%'
	limit 5;

select * from departments;

select * from salaries limit 10;