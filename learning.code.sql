/* create a table account*/
create table account(
	user_id serial primary key,
	username varchar(50) unique not null,
	password varchar(50) not null,
	email varchar(250) unique not null,
	created_on timestamp not null,
	last_login timestamp 
	)


select * from account


/* assign data type for table_account*/

create table job(
job_id serial primary key,
job_name varchar(200) unique not null	
)

/* create a table account_id */
create table account_id(
user_id integer references account(user_id)	
)

/* create a table account_job */
create table account_job(
	user_id integer references account(user_id),
	job_id integer references job(job_id),
	hire_date timestamp
	)

select * from account

/* insert values in table account */

insert into account (username,password,email,created_on)
values
('mustafa','mustafa@123','mustafa@gmail.com',current_timestamp)


select * from account

/* insert values in table job */
insert into job(job_name)
values
('cricketer')


select * from job



insert into job(job_name)
values
('teacher')

/* insert values in account_job */
insert into account_job(user_id ,job_id,hire_date)
values
(1,1,current_timestamp)

select * FROM JOB

INSERT INTO JOB (JOB_NAME)
VALUES 
('COWBOY')

SELECT * FROM JOB

/* delet values from job */
DELETE from job 
where job_name='COWBOY'
returning job_id,job_name

select * from job

/* create table information */
CREATE TABLE information(
info_id serial primary key,
	title varchar(500) not null,
	person varchar(50) not null unique
	
)
select * from information

alter table information
rename to new_info

select * from information

select * from new_info

alter table new_info
rename column person to people

select * from new_info

/* insert values in new_info table */
insert into new_info(title)
values
('some new title')

alter table new_info
alter column people drop not Null

select * from new_info

insert into new_info(title)
values
('some new title')


select * from new_info

alter table new_info
drop column people


select * from new_info

alter table new_info
drop column people


alter table new_info
drop column if exists people

select * from new_info

/*crete a table employees */
CREATE TABLE employees(
emp_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	birthdate date check (birthdate >'2003-01-01'),
	hire_date date check (hire_date > birthdate),
	salary integer check (salary >0)	
);

/* insert values in employees table */
insert employees(
first_name,
	last_name,
	birthdate,
	hire_date,
	salary
	
)
values
('jose',
	'portilla',
	'01-01-2003',
	'09-08-2003',
	10000
	
)

insert employees(
first_name,
	last_name,
	birthdate,
	hire_date,
	salary
	
)
values
('jose',
	'portilla',
	'01-01-2003',
	'09-08-2003',
	-1000
	
)

insert employees(
first_name,
	last_name,
	birthdate,
	hire_date,
	salary
	
)
values
('ms',
	'portilla',
	'01-01-2003',
	'09-08-2003',
	-1000
	
)

select * from employees








