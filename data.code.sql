show timezone

/* create table timezone */
create table timezone(
   ts timestamp without time zone,
	tz timestamp with time zone
	
)
/* insert values in timezoe */
insert into timezone values (
timestamp without time zone '2023-03-07 10:50',
timestamp without time zone '2023-03-07 10:50'	

	
) 
select * from timezone

/* selecting current timestamp */
select now()::date;
select current_date

select to_char (current_date,'dd/mm/yy')

select to_char (current_date,'dd')

select  age(date'1800-01-01')

select  age(date'1992-01-01',date'1800-01-01')

select extract (year from date'1992-11-13') as year


select date_trunc('year',date'1992-11-13')

/* how may employee where hired in feb*/

SELECT COUNT(*) AS total_hires
FROM employees
WHERE MONTH(hire_date) = 2;


###########################################33
/* get the employee above age 60*/
SELECT *
FROM employees
WHERE TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) > 60;

######################################3


/* select max salary from salaries */
select max(salary)from salaries

select *, 
max(salary) over()
from salaries



select *, 
max(salary) over()
from salaries
limit 100

/* select max salaries where salary is not greater than 70000*/
select *, 
max(salary) over()
from salaries
where salary<70000

select *,
avg(salary) over()
from salaries

select *,
   d.dept_name,
avg(salary) over()
from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)


select *,
	avg(salary) over(
	
   partition by d.dept_name
	)

from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)








