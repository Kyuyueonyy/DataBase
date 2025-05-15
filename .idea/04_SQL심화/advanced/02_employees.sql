select e.emp_no, e.first_name, e.last_name, t.title
from employees e
join titles t
on e.emp_no = t.emp_no
where t.to_date = '9999-01-01';

select e.*, t.title, s.salary
from employees e
join titles t on e.emp_no = t.emp_no
join salaries s on e.emp_no = s.emp_no
where t.to_date = '9999-01-01' and s.to_date='9999-01-01';

select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
order by e.emp_no asc;

select d.dept_no, d.dept_name, count(de.emp_no)
from departments d
join dept_emp de on d.dept_no = de.dept_no
group by d.dept_no, d.dept_name
order by d.dept_no asc;

select e.emp_no, e.first_name, e.last_name, d.dept_name, de.from_date, de.to_date
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where e.emp_no = '10209'
order by de.from_date;