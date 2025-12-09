/*creating new database */
CREATE DATABASE COMPANY;

/*creating table in Company database */
CREATE TABLE EMPLOYEE (
	EMPLOYEE_ID INT PRIMARY KEY,
	EMPLOYEE_NAME VARCHAR(100) NOT NULL,
	POSSITION VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	HIRE_DATE DATE,
	SALARY NUMERIC(10, 2)
)
/* Selecting Table for Operation on it */
SELECT
	*
FROM
	EMPLOYEE;

/* insertion data into created table */
INSERT INTO
	EMPLOYEE (
		EMPLOYEE_ID,
		EMPLOYEE_NAME,
		POSITION,
		DEPARTMENT,
		HIRE_DATE,
		SALARY
	)
VALUES
	(
		'1',
		'Mustakim Sayyed',
		'data Analyst',
		'data science',
		'2025-01-12',
		50000.00
	),
	(
		'2',
		'Pratik shinde',
		'data engineer',
		'Data Visuals',
		'2025-12-12',
		30000.00
	),
	(
		'3',
		'Sarode Abhishek',
		'data Analisis',
		'Bcom',
		'2025-06-15',
		25000.00
	);

/* select All data from table */
SELECT
	*
FROM
	EMPLOYEE;

/* change colum name for spell mistake */
ALTER TABLE EMPLOYEE
RENAME COLUMN POSSITION TO POSITION;

/* for erase data command */
TRUNCATE TABLE EMPLOYEE;

/*Creating New Table into Databse */
CREATE TABLE EMPLOYEE2 (
	EMPLOYEE_ID INT PRIMARY KEY,
	EMPLOYEE_NAME VARCHAR(100) NOT NULL,
	POSSITION VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	HIRE_DATE DATE,
	SALARY NUMERIC(10, 2)
);

/* select all from table */
SELECT
	*
FROM
	EMPLOYEE2
	/* add Values into tables */
INSERT INTO
	EMPLOYEE2 (
		EMPLOYEE_ID,
		EMPLOYEE_NAME,
		POSSITION,
		DEPARTMENT,
		HIRE_DATE,
		SALARY
	)
VALUES
	(
		101,
		'Mustakim Sayyed',
		'data Analyst',
		'data science',
		'2025-01-12',
		50000.00
	),
	(
		102,
		'Pratik shinde',
		'data engineer',
		'Data Visuals',
		'2025-12-12',
		30000.00
	),
	(
		103,
		'Sarode Abhishek',
		'data Analisis',
		'Bcom',
		'2025-06-15',
		25000.00
	);

/* select all from database */
SELECT
	*
FROM
	EMPLOYEE2
	/* delet refece column from table */
DELETE FROM EMPLOYEE2
WHERE
	EMPLOYEE_ID = 103
	/* check the now delete values */
SELECT
	*
FROM
	EMPL0YEE2
	/* drop colomn from table later */
ALTER TABLE EMPLOYEE2
DROP COLUMN SALARY;

/* check column are deleted */
SELECT
	*
FROM
	EMPLOYEE2
	/* drop table from databese */
DROP TABLE EMPLOYEE2;

/* or */
DROP TABLE IF EXISTS EMPLOYEE2;

/* check deleted column are deleted */
SELECT
	*
FROM
	EMPLOYEE2;

/* delete database */
DROP DATABASE IF EXISTS COMPANY;

--creating new table
CREATE TABLE USERS (
	USER_ID INT PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	AGE INT CHECK (AGE >= 18),
	REG_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
--add values in table
INSERT INTO
	USERS (USER_ID, NAME, EMAIL, AGE)
VALUES
	(1, 'mustafa', 'sayyedmustakim@gmail.com', 21)
	--check added data 
SELECT
	*
FROM
	USERS
	--check the constraints are working
INSERT INTO
	USERS (USER_ID, NAME, EMAIL, AGE)
VALUES
	(3, 'mustafa', 'sayyeedmustakim@gmail.com', 18)
	--delet repeated coloumn 
DELETE FROM USERS
WHERE
	USER_ID = 2
	--delete column email
ALTER TABLE USERS
DROP COLUMN EMAIL
/* Update data in table  */
CREATE TABLE STUDENTS (
	STUDENT_ID SERIAL PRIMARY KEY,
	NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	CITY VARCHAR(50) NOT NULL,
	AGE INT CHECK (AGE >= 18)
)
--check created table
SELECT
	*
FROM
	STUDENTS
	--drop extra table which is created
DROP TABLE STUDENTS2;

--add values in table
INSERT INTO
	STUDENTS (NAME, EMAIL, CITY, AGE)
VALUES
	(
		'mustafa',
		'sayyedmustakim29@gmail.com',
		'newasa',
		'22'
	),
	(
		'pratik',
		'pratikshinde@gmail.com',
		'shrirampur',
		'22'
	),
	(
		'aryan',
		'aryansasane@gmail.com',
		'kopargaon',
		'23'
	),
	(
		'abhishek',
		'abhisheksarode@gmail.com',
		'vaijapur',
		'24'
	)
	--check added values
SELECT
	*
FROM
	STUDENTS
	--update location pune
UPDATE STUDENTS
SET
	CITY = 'pune'
WHERE
	AGE = 22;

--recorrect the sequence
SELECT
	*
FROM
	STUDENTS
ORDER BY
	STUDENT_ID ASC;

--delete reapeted values from table
DELETE FROM STUDENTS
WHERE
	EMAIL = 'sayyedmustakim29@gmail.com'
	--update age mustafa
	-- 
UPDATE STUDENTS
SET
	AGE = '23'
WHERE
	NAME = 'mustafa'
	--update city and age
UPDATE STUDENTS
SET
	AGE = 23,
	CITY = 'Delhi'
WHERE
	NAME = 'aryan';

--check updated values
SELECT
	*
FROM
	STUDENTS
ORDER BY
	STUDENT_ID
	--update age for email with @gmail.com
UPDATE STUDENTS
SET
	AGE = AGE + 1
WHERE
	EMAIL LIKE '%gmail.com'
UPDATE STUDENTS
SET
	STUDENT_ID = 2
WHERE
	NAME = 'pratik'
UPDATE STUDENTS
SET
	STUDENT_ID = 3
WHERE
	NAME = 'aryan'
UPDATE STUDENTS
SET
	STUDENT_ID = 4
WHERE
	NAME = 'abhishek'
	--check updated values
SELECT
	*
FROM
	STUDENTS
ORDER BY
	STUDENT_ID ASC;

/* Update data using sql toolbar */
--check note book for query toolbar  ...page no:8, 9 (SQL,Python)
/* alter column & datatype in sql */
--load table with order data 
SELECT
	*
FROM
	STUDENTS
ORDER BY
	STUDENT_ID
	--rename the name to student_name
ALTER TABLE STUDENTS
RENAME COLUMN NAME TO STUDENT_NAME
--change datatype of column
ALTER TABLE STUDENTS
ALTER COLUMN AGE TYPE INT
--drop previous constraint for city
ALTER TABLE STUDENTS
DROP CONSTRAINT CITY;

-- add constraint to city
ALTER TABLE STUDENTS
ALTER COLUMN CITY
SET NOT NULL
--drop contraint of age column
ALTER TABLE STUDENTS
DROP CONSTRAINT AGE;

-- add constraint for age
ALTER TABLE STUDENTS
ADD CONSTRAINT AGE CHECK (AGE >= 18)
--check constraint wherther working or not
INSERT INTO
	STUDENTS (STUDENT_ID, STUDENT_NAME, EMAIL, CITY, AGE)
VALUES
	(6, 'ajinkya', 'ajinkya@gmail.com', 'mumbai', 28)
	--check the values added
SELECT
	*
FROM
	STUDENTS
ORDER BY
	STUDENT_ID
	--check unreal  constraint to check constraints values
INSERT INTO
	STUDENTS (STUDENT_ID, STUDENT_NAME, EMAIL, CITY, AGE)
VALUES
	(8, 'dhanesh', 'dhanesh@gmail.com', 'Delhi', 17)
	--change the name of table
ALTER TABLE STUDENTS
RENAME TO CUSTOMER;

--check apdated columns
SELECT
	*
FROM
	CUSTOMER
ORDER BY
	STUDENT_ID
	/* Assignment on basic od SQL */
	--drop the table if exisist
DROP TABLE IF EXISTS EMPLOYEE;

-- Create the employees table
CREATE TABLE EMPLOYEES (
	EMPLOYEE_ID SERIAL PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	DEPARTMENT VARCHAR(50) NOT NULL,
	SALARY DECIMAL(10, 2) CHECK (SALARY > 0),
	JOINING DATE NOT NULL,
	AGE INT CHECK (AGE >= 18)
)
-- Insert data into employees table
INSERT INTO
	EMPLOYEES (
		FIRST_NAME,
		LAST_NAME,
		DEPARTMENT,
		SALARY,
		JOINING,
		AGE
	)
VALUES
	(
		'Amit',
		'Sharma',
		'IT',
		60000.00,
		'2022-05-01',
		29
	),
	('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
	(
		'Ravi',
		'Kumar',
		'Finance',
		70000.00,
		'2020-03-10',
		35
	),
	(
		'Anjali',
		'Verma',
		'IT',
		65000.00,
		'2019-11-22',
		28
	),
	(
		'Suresh',
		'Reddy',
		'Operations',
		50000.00,
		'2023-01-10',
		26
	);

-- check created columns
SELECT
	*
FROM
	EMPLOYEES
	--Q1: Retrieve all employees' first_names and their departments.
SELECT
	FIRST_NAME,
	DEPARTMENT
FROM
	EMPLOYEES
	--Q2: Update the salary of all employers in the 'IT' department by increasing it by 10%
UPDATE EMPLOYEES
SET
	SALARY = SALARY + (SALARY * 0.1)
WHERE
	DEPARTMENT = 'IT'
	--Q3: Delete all employees who are older than 34 years.
DELETE FROM EMPLOYEES
WHERE
	AGE >= 34
	--Q4: Add a new column 'email' to the 'employees' table.
ALTER TABLE EMPLOYEES
ADD COLUMN EMAIL VARCHAR(50)
--Q5: Rename the department column to 'dept name.
ALTER TABLE EMPLOYEES
RENAME COLUMN DEPARTMENT TO DEPT_NAME
--Q6: Retrieve the names of employees who joined after January 1, 2021.
SELECT
	FIRST_NAME,
	JOINING
FROM
	EMPLOYEES
WHERE
	JOINING >= '2021-01-01'
	--Q7: Change the data type of the 'salary' column to INTEGEr
ALTER TABLE EMPLOYEES
ALTER CONSTRAINT SALARY
SET
	INT
	--Q8: List all employees with their age and salary in descending order of salary
SELECT
	FIRST_NAME,
	LAST_NAME,
	AGE,
	SALARY
FROM
	EMPLOYEES
ORDER BY
	SALARY DESC;

--09: Insert a new employee with the following details: 'Raj", "Singh', 'Marketing', 60000, 2023-09-15 30.
INSERT INTO
	EMPLOYEES (
		FIRST_NAME,
		LAST_NAME,
		DEPT_NAME,
		SALARY,
		JOINING,
		AGE,
		EMAIL
	)
VALUES
	(
		'ajay',
		'shinde',
		'IT',
		20000.00,
		'2025-01-02',
		22,
		'ajay@gmail.com'
	)
	--10 Update age of employee +1 to every employee
UPDATE EMPLOYEES
SET
	AGE = AGE + 1
	--check assignment results
SELECT
	*
FROM
	EMPLOYEES
	/* import csv file to sql */
	--CREATE NEW TABLE WORKER
CREATE TABLE WORKER1 (
	EMPLOYEE_ID INT,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50),
	EMAIL VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY NUMERIC,
	AGE INT
)
SELECT
	*
FROM
	WORKER1
COPY WORKER1 (
	EMPLOYEE_ID,
	FIRST_NAME,
	LAST_NAME,
	EMAIL,
	DEPARTMENT,
	SALARY,
	AGE
)
FROM
	'D:\TESTING AND PRACTICE\employee_data1.csv' DELIMITER ',' CSV HEADER;

/* DIRECT import csv file to sql */
CREATE TABLE WORKER1 (
	EMPLOYEE_ID INT NOT NULL,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	DEPARTMENT VARCHAR(50) NOT NULL,
	SALARY NUMERIC,
	AGE INT
)
--check whether import or not
SELECT
	*
FROM
	WORKER1
	-- drop table for 2 time import
DROP TABLE IF EXISTS WORKER1;

/* types of operator in SQL */
--comparison operator (>)
SELECT
	*
FROM
	WORKER1
WHERE
	SALARY > 50000
	--comparison operator (<)
SELECT
	*
FROM
	WORKER1
WHERE
	SALARY < 50000
	--comparison operator (=) count number of employees
SELECT
	*
FROM
	WORKER1
WHERE
	DEPARTMENT = 'IT'
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	DEPARTMENT = 'IT'
	-- count total number of employees
SELECT
	COUNT(*)
FROM
	WORKER1
	--comparison operator (>=)
SELECT
	*
FROM
	WORKER1
WHERE
	AGE >= 50
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	AGE >= 50
	--comparison operator (>=)
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	AGE <= 50
	--coparison Operator (!=  or <>)
SELECT
	*
FROM
	WORKER1
WHERE
	DEPARTMENT != 'IT'
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	DEPARTMENT <> 'Finance'
	/* logic Operator */
	--Logic Operator (And)
SELECT
	*
FROM
	WORKER1
WHERE
	AGE > 45
	AND SALARY < 45000
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	AGE > 50
	AND SALARY < 45000
	--logic operator (or)
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	AGE > 25
	OR SALARY < 25000
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	AGE > 30
	OR SALARY < 25000
	--logic operator (NOT)
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	NOT AGE > 25
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	NOT AGE < 25
SELECT
	COUNT(*)
FROM
	WORKER1
	/* Between, Like & in Operator */
	--between operator 
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	WORKER1
WHERE
	SALARY BETWEEN 40000 AND 60000
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	SALARY BETWEEN 40000 AND 60000
	--like operator
SELECT
	COUNT(*)
FROM
	WORKER1
WHERE
	EMAIL LIKE '%gmail.com'
SELECT
	*
FROM
	WORKER1
SELECT
	*
FROM
	WORKER1
WHERE
	FIRST_NAME LIKE 'J%'
SELECT
	*
FROM
	WORKER1
WHERE
	FIRST_NAME LIKE '%a'
SELECT
	*
FROM
	WORKER1
WHERE
	FIRST_NAME LIKE '%a%'
	--IN operator 
SELECT
	*
FROM
	WORKER1
WHERE
	DEPARTMENT IN ('Finance', 'IT')
SELECT
	COUNT(DEPARTMENT)
FROM
	WORKER1
WHERE
	DEPARTMENT IN ('Finance', 'IT')
	-- Is Null Operator (check null values)
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	WORKER1
WHERE
	EMAIL IS NULL;

--Order By ASC OR DESC order of co lumn values
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	WORKER1
ORDER BY
	SALARY ASC;

SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	WORKER1
ORDER BY
	SALARY DESC;

--limit operator
SELECT
	*
FROM
	WORKER1
ORDER BY
	SALARY DESC
LIMIT
	5
SELECT
	*
FROM
	WORKER1
ORDER BY
	SALARY ASC
LIMIT
	5
	--COunt distinct count
SELECT DISTINCT
	DEPARTMENT
FROM
	WORKER1
SELECT
	COUNT(DISTINCT DEPARTMENT)
FROM
	WORKER1
SELECT
	COUNT(DEPARTMENT)
FROM
	WORKER1
	/* set Operator in sql */
	--insert 2 tables same them but differ in values
CREATE TABLE STUD_2024 (
	STUDENT_ID SERIAL PRIMARY KEY,
	STUDENT_NAME VARCHAR(50),
	COURSE VARCHAR(50)
)
SELECT
	*
FROM
	STUD_2024
INSERT INTO
	STUD_2024 (STUDENT_NAME, COURSE)
VALUES
	('mustafa', 'electrical'),
	('pranit', 'computer'),
	('durgesh', 'electrical'),
	('aryan', 'electrical'),
	('Atharv', 'mechnaical');

CREATE TABLE STUD_2025 (
	STUDENT_ID SERIAL PRIMARY KEY,
	STUDENT_NAME VARCHAR(50),
	COURSE VARCHAR(50)
)
INSERT INTO
	STUD_2025 (STUDENT_NAME, COURSE)
VALUES
	('atharv', 'mechnaical'),
	('pranit', 'computer'),
	('sagar', 'IT'),
	('pratik', 'electronics'),
	('Dhanesh', 'mechatronics')
SELECT
	*
FROM
	STUD_2025
	-- set operator Union (not include double)
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2024
UNION
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2025
	--set operator union all (including double)	
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2024
UNION ALL
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2025
	--set operator intersect
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2024
INTERSECT
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2025
	--set operator except (get the value of stud_2024 without repeat in stud_2025)
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2024
EXCEPT
SELECT
	STUDENT_NAME,
	COURSE
FROM
	STUD_2025
	/* agression function */
CREATE TABLE PRODUCT (
	PRODUCT_ID SERIAL PRIMARY KEY,
	PRODUCT_NAME VARCHAR(50),
	CATEGORY VARCHAR(50),
	PRICE NUMERIC,
	QUANTITY INT,
	ADDED_DATE DATE
)
SELECT
	*
FROM
	PRODUCT
INSERT INTO
	PRODUCT (
		PRODUCT_NAME,
		CATEGORY,
		PRICE,
		QUANTITY,
		ADDED_DATE
	)
VALUES
	('laptop', 'electronics', 25000, 25, '2025-12-12'),
	(
		'mobile',
		'electronics',
		'15000',
		45,
		'2025-12-12'
	),
	('watch', 'assesory', 5000, 75, '2025-12-13'),
	('mouse', 'electronics', 500, 1000, '2025-12-13'),
	('TV', 'Intertenment', 15000, 30, '2025-12-14');

SELECT
	*
FROM
	PRODUCT
	--Agression function (SUM)
	--select total count of quantity
SELECT
	SUM(QUANTITY) AS TOTAL_COUNT
FROM
	PRODUCT
	--sum of category electronics 
SELECT
	SUM(QUANTITY) AS TOTAL_ELECTRONIC
FROM
	PRODUCT
WHERE
	CATEGORY = 'electronics'
	--total number of product
SELECT
	COUNT(*) AS TOTAL_COUNT
FROM
	PRODUCT
WHERE
	PRODUCT_NAME LIKE 'm%'
	--average price of product
SELECT
	AVG(PRICE) AS AVG_PRICE
FROM
	PRODUCT
	--sum Price of total product
SELECT
	SUM(PRICE) TOTAL_PRICE
FROM
	PRODUCT
	--average with condition 
SELECT
	AVG(PRICE) AS PRICE_CATE
FROM
	PRODUCT
WHERE
	CATEGORY = 'electronics'
	--max price min price 
SELECT
	MAX(PRICE) AS MAX_PRICE,
	MIN(PRICE) AS MIN_PRICE
FROM
	PRODUCT
	/* string fuction from sql */
	--upper 
SELECT
	UPPER(CATEGORY) AS UPP_CAT
FROM
	PRODUCT
	--lower
SELECT
	LOWER(CATEGORY) AS LOW_CAT
FROM
	PRODUCT
	--concate (add string from differ coloumn)
SELECT
	CONCAT(PRODUCT_NAME, '-', CATEGORY) AS PRO_CAT
FROM
	PRODUCT
	--extract string 
SELECT
	SUBSTRING(PRODUCT_NAME, 1, 5) AS SHORT_NAME
FROM
	PRODUCT
	--count lenght of string
SELECT
	LENGTH(PRODUCT_NAME) AS PROD_STR
FROM
	PRODUCT
	--TRIM FOR REMOVE SPACE
SELECT
	TRIM('MONITOR ') AS TRIMM_TEXT
SELECT
	LENGTH(TRIM('MONITOR ')) AS TRIMM_TEXT
SELECT
	LENGTH('MONITOR ') AS TRIMM_TEXT
	--replace the word
SELECT
	*
FROM
	PRODUCT
SELECT
	REPLACE(PRODUCT_NAME, 'op', 'ap') AS NEW_TABLE
FROM
	PRODUCT
	--left (remove left or right sringth)
SELECT
	LEFT(CATEGORY, 3) AS CUT_LEFT
FROM
	PRODUCT
SELECT
	RIGHT(CATEGORY, 3) AS CUT_RIGHT
FROM
	PRODUCT
	/* date & time function in sql */
	--current timestamp
SELECT
	NOW() AS CURRENT_DATETIME
	--current date
SELECT
	CURRENT_DATE AS TODAY_DATE;

--date difference from curret date to column date
SELECT
	ADDED_DATE,
	CURRENT_DATE,
	(CURRENT_DATE - ADDED_DATE) AS DATE_DIFFER
FROM
	PRODUCT;

--get year of product 
SELECT
	PRODUCT_NAME,
	EXTRACT(
		YEAR
		FROM
			ADDED_DATE
	) AS YEAR_1
FROM
	PRODUCT;

SELECT
	PRODUCT_NAME,
	EXTRACT(
		MONTH
		FROM
			ADDED_DATE
	) AS MONTH_1
FROM
	PRODUCT;

SELECT
	PRODUCT_NAME,
	EXTRACT(
		DAY
		FROM
			ADDED_DATE
	) AS DAY_1
FROM
	PRODUCT;

--calculate the time  difference from current date to actual date
SELECT
	PRODUCT_NAME,
	AGE (CURRENT_DATE, ADDED_DATE) AS AGE_SINCE_ADDED
FROM
	PRODUCT;

--to char() formate date as string ('dd-mm-yyyy')
SELECT
	PRODUCT_NAME,
	TO_CHAR(ADDED_DATE, 'DD-MM-YYYY') AS AGE_SINCE_ADDED
FROM
	PRODUCT;

--extract the day of the week from added_date
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_PART('year', ADDED_DATE) AS YEAR_OF_PRODUCT
FROM
	PRODUCT
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_PART('MONTH', ADDED_DATE) AS YEAR_OF_PRODUCT
FROM
	PRODUCT
	--TRUNCATE ADDED_DATE TO GET FIRST DATE OF MONTH OF PRODUCT
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_TRUNC('MONTH', ADDED_DATE) AS MONTH_START
FROM
	PRODUCT;

SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_TRUNC('yEAR', ADDED_DATE) AS MONTH_START
FROM
	PRODUCT;

--ADDED SUBSTRUCT TIME INTERVAL
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	ADDED_DATE + INTERVAL '6 MONTH' AS TIME_DATE
FROM
	PRODUCT
	--CURRENT TIME GET CURRENT TIME 
SELECT
	CURRENT_TIME AS CURRENT_TIME1
	--CONVERT FORMMATE OF DATE
SELECT
	TO_DATE('11-12-2025', 'dd-MM-YYYY') AS CONVERT_DATE
	/* CONDITION FUNCTION */
	--use function (case) if price 50000 then expensive
	--if price 10000 to 49999 moderate price
	--lower than 10000 affortable
SELECT
	PRODUCT_NAME,
	PRICE,
	CASE
		WHEN PRICE >= 25000 THEN 'expensive'
		WHEN PRICE >= 15000
		AND PRICE <= 24999 THEN 'Moderate'
		ELSE 'affortable'
	END AS PRODUCT_STATUS
FROM
	PRODUCT;

-- get data
SELECT
	*
FROM
	PRODUCT;

--quantity status
SELECT
	PRODUCT_NAME,
	QUANTITY,
	CASE
		WHEN QUANTITY >= 800 THEN 'Instock'
		WHEN QUANTITY BETWEEN 50 AND 799  THEN 'limited'
		ELSE 'Out_of_stock'
	END AS QUANTITY_STOCK
FROM
	PRODUCT;

--category status
SELECT
	PRODUCT_NAME,
	CATEGORY,
	CASE
		WHEN CATEGORY LIKE '"electronics"' THEN 'electronic Item'
		WHEN CATEGORY LIKE 'assesory' THEN 'assesory Item'
		ELSE 'intertement Item'
	END AS CATEGOY_STATUS
FROM
	PRODUCT;

--coalensce function in SQL
ALTER TABLE PRODUCT
ADD COLUMN DISCOUNT_PRICE NUMERIC(10, 2);

UPDATE PRODUCT
SET
	DISCOUNT_PRICE = NULL
WHERE
	PRODUCT_NAME IN ('laptop', 'desk')
UPDATE PRODUCT
SET
	DISCOUNT_PRICE = PRICE * 0.9
WHERE
	PRODUCT_NAME NOT IN ('laptop', 'desk')
SELECT
	PRODUCT_NAME,
	COALESCE(DISCOUNT_PRICE, PRICE) AS FINAL_PRICE
FROM
	PRODUCT;

/* window function */
SELECT
	*
FROM
	PRODUCT
	--assign a unique row number to each product within the same categoary
SELECT
	PRODUCT_NAME,
	CATEGORY,
	PRICE,
	ROW_NUMBER() OVER (
		PARTITION BY
			CATEGORY
		ORDER BY
			PRICE DESC
	) AS RANKING
FROM
	PRODUCT;

/* join function in sql */
--create tables1 for join purpose
CREATE TABLE EMPLOYEE3 (
	EMPLOYEE_ID SERIAL PRIMARY KEY,
	EMPLOYEE_NAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	EMPLOYEE_DEPT NUMERIC
)
SELECT
	*
FROM
	EMPLOYEE3
INSERT INTO
	EMPLOYEE3 (EMPLOYEE_NAME, DEPARTMENT, EMPLOYEE_DEPT)
VALUES
	('arman', 'electrical', 101),
	('sachin', 'mechanical', 102),
	('virat', 'computer', 103),
	('musatfa', 'electronics', 104),
	('pratik', 'civil', 105),
	('komal', 'IT', NULL)
SELECT
	*
FROM
	EMPLOYEE3
	--create tables2 for join purpose
CREATE TABLE EMPLOYEE4 (EMPLOYEE_DEPT NUMERIC, SPORT VARCHAR(50))
SELECT
	*
FROM
	EMPLOYEE4
INSERT INTO
	EMPLOYEE4 (EMPLOYEE_DEPT, SPORT)
VALUES
	('101', 'cricket'),
	('102', 'kabbadi'),
	('103', 'baseball'),
	('104', 'kho-kho'),
	('106', 'basketball');

SELECT
	*
FROM
	EMPLOYEE4
	--inner join
SELECT
	EMPLOYEE3.EMPLOYEE_NAME,
	EMPLOYEE3.DEPARTMENT,
	EMPLOYEE4.EMPLOYEE_DEPT,
	EMPLOYEE4.SPORT
FROM
	EMPLOYEE3
	INNER JOIN EMPLOYEE4 ON EMPLOYEE3.EMPLOYEE_DEPT = EMPLOYEE4.EMPLOYEE_DEPT
	--left join
SELECT
	EMPLOYEE3.EMPLOYEE_NAME,
	EMPLOYEE3.DEPARTMENT,
	EMPLOYEE4.EMPLOYEE_DEPT,
	EMPLOYEE4.SPORT
FROM
	EMPLOYEE3
	LEFT JOIN EMPLOYEE4 ON EMPLOYEE3.EMPLOYEE_DEPT = EMPLOYEE4.EMPLOYEE_DEPT
	--right join
SELECT
	EMPLOYEE3.EMPLOYEE_NAME,
	EMPLOYEE3.DEPARTMENT,
	EMPLOYEE4.EMPLOYEE_DEPT,
	EMPLOYEE4.SPORT
FROM
	EMPLOYEE3
	RIGHT JOIN EMPLOYEE4 ON EMPLOYEE3.EMPLOYEE_DEPT = EMPLOYEE4.EMPLOYEE_DEPT
	--full outer join
SELECT
	EMPLOYEE3.EMPLOYEE_NAME,
	EMPLOYEE3.DEPARTMENT,
	EMPLOYEE4.EMPLOYEE_DEPT,
	EMPLOYEE4.SPORT
FROM
	EMPLOYEE3
	FULL OUTER JOIN EMPLOYEE4 ON EMPLOYEE3.EMPLOYEE_DEPT = EMPLOYEE4.EMPLOYEE_DEPT
	--cross join
SELECT
	EMPLOYEE3.EMPLOYEE_NAME,
	EMPLOYEE3.DEPARTMENT,
	EMPLOYEE4.EMPLOYEE_DEPT,
	EMPLOYEE4.SPORT
FROM
	EMPLOYEE3
	CROSS JOIN EMPLOYEE4
	--self join
SELECT
	E1.EMPLOYEE_NAME AS EMPLOYEE_NAME1,
	E2.DEPARTMENT AS EMPLOYEE_NAME2,
FROM
	EMPLOYEE3 E1
	JOIN EMPLOYEE3 E2 ON E1.EMPLOYEE_DEPT = E2.EMPLOYEE_EMPLOYEE_ID
SELECT
	E.NAME AS EMPLOYEE,
	M.NAME AS MANAGER
FROM
	EMPLOYEES E
	JOIN EMPLOYEES M ON E.MANAGER_ID = M.EMP_ID;



















 
























