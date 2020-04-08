select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

--Question 1
select em.emp_no,em.last_name,em.first_name,em.gender,sal.salary
from employees as em
join salaries as sal
on em.emp_no=sal.emp_no;

--Question 2
select em.first_name, em.last_name, em.hire_date
from employees as em
where hire_date between '1/1/1986' and '1/1/1987';

--Question 3
select dep.dept_no, dep.dept_name, dep_man.emp_no, dep_man.from_date, dep_man.to_date, em.last_name, em.first_name
from departments as dep
join dept_manager as dep_man
on dep.dept_no=dep_man.dept_no
join employees as em
on dep_man.emp_no=em.emp_no;

--Question 4
select em.emp_no, em.first_name, em.last_name, dep.dept_name 
from employees as em
join dept_emp as dept_emp
on dept_emp.emp_no=em.emp_no
join departments as dep
on dept_emp.dept_no=dep.dept_no;

--Question 5
select emp.first_name, emp.last_name
from employees as emp
where emp.first_name='Hercules' and emp.last_name like 'B%';

--Question 6
select emp.emp_no, emp.first_name, emp.last_name, dep.dept_name
from employees as emp
join dept_emp as dept_emp
on dept_emp.emp_no=emp.emp_no
join departments as dep
on dep.dept_no=dept_emp.dept_no
where dep.dept_name='Sales';

--Question 7
select emp.emp_no, emp.first_name, emp.last_name, dep.dept_name
from employees as emp
join dept_emp as dept_emp
on dept_emp.emp_no=emp.emp_no
join departments as dep
on dep.dept_no=dept_emp.dept_no
where dep.dept_name='Sales' or dep.dept_name='Development';

--Question 8
select emp.last_name, count(emp.last_name) as frequency
from employees as emp
group by emp.last_name
order by frequency DESC;

