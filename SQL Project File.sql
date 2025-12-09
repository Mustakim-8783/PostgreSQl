/* import data */

--create books table

CREATE TABLE BOOKS1 (
	BOOK_ID INT PRIMARY KEY,
	TITLE VARCHAR(100),
	AUTHOR VARCHAR(100),
	GENRE VARCHAR(50),
	PUBLISHED_YEAR INT,
	PRICE NUMERIC(10, 2),
	STOCK INT,
	AGE INT
);

SELECT
	*
FROM
	BOOKS1;



COPY BOOKS1 (
	BOOK_ID,
	TITLE,
	AUTHOR,
	GENRE,
	PUBLISHED_YEAR,
	PRICE,
	STOCK
)
FROM
	'D:\Sql project\Books.csv' CSV HEADER;

--create customer table


CREATE TABLE CUSTOMERS1 (
	CUSTOMER_ID SERIAL PRIMARY KEY,
	NAME VARCHAR(100),
	EMAIL VARCHAR(100),
	PHONE VARCHAR(50),
	CITY VARCHAR(50),
	COUNTRY VARCHAR(150)
);

SELECT
	*
FROM
	CUSTOMERS1
COPY CUSTOMERS1 (CUSTOMER_ID, NAME, EMAIL, PHONE, CITY, COUNTRY)
FROM
	'D:\Sql project\customers.csv' CSV HEADER;


--orders data

CREATE TABLE ORDERS1 (
	ORDER_ID SERIAL PRIMARY KEY,
	CUSTOMER_ID INT REFERENCES CUSTOMERS1 (CUSTOMER_ID),
	BOOK_ID INT REFERENCES BOOKS1 (BOOK_ID),
	ORDER_DATE DATE,
	QUANTITY INT,
	TOTAL_AMOUNT NUMERIC(10, 2)
);

SELECT
	*
FROM
	ORDERS1
COPY ORDERS1 (
	ORDER_ID,
	CUSTOMER_ID,
	BOOK_ID,
	ORDER_DATE,
	QUANTITY,
	TOTAL_AMOUNT
);
FROM
	'D:\Sql project\orders.csv' CSV HEADER;

--show tables

SELECT
	*
FROM
	BOOKS1;


SELECT
	*
FROM
	CUSTOMERS1;


SELECT
	*
FROM
	ORDERS1;





-- 1) Retrieve all books in the "Fiction" genre:


SELECT
	*
FROM
	BOOKS1
WHERE
	GENRE = 'Fiction';


-- 2) Find books published after the year 1950:

SELECT
	*
FROM
	BOOKS1
WHERE
	PUBLISHED_YEAR >1950;


-- 3) List all customers from the Canada:

SELECT
	*
FROM
	CUSTOMERS1
WHERE
	COUNTRY = 'Canada';




-- 4) Show orders placed in November 2023:

SELECT
	*
FROM
	ORDERS1
WHERE
	ORDER_DATE BETWEEN '2023-11-01' AND '2023-11-30';




-- 5) Retrieve the total stock of books available:

SELECT
	SUM(STOCK)
FROM
	BOOKS1 AS TOTAL_STOCK;



-- 6) Find the details of the most expensive book:

SELECT
	*
FROM
	BOOKS1
ORDER BY
	PRICE DESC
LIMIT
	1;



-- 7) Show all customers who ordered more than 1 quantity of a book:

SELECT
	*
FROM
	ORDERS1
WHERE
	QUANTITY> 1;




-- 8) Retrieve all orders where the total amount exceeds $20:

SELECT
	*
FROM
	ORDERS1
WHERE
	TOTAL_AMOUNT >20;




-- 9) List all genres available in the Books table:

SELECT DISTINCT
	GENRE
FROM
	BOOKS1;




-- 10) Find the book with the lowest stock:

SELECT
	*
FROM
	BOOKS1
ORDER BY
	STOCK ASC
LIMIT
	1;



-- 11) Calculate the total revenue generated from all orders:

SELECT
	SUM(TOTAL_AMOUNT)
FROM
	ORDERS1 AS REVENUE;


SELECT
	SUM(TOTAL_AMOUNT)
FROM
	ORDERS1 AS REVENUE;



-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:

SELECT
	B.GENRE,
	SUM(O.QUANTITY) AS TOTAL_QUANTITY
FROM
	ORDERS1 O
	JOIN BOOKS1 B ON O.BOOK_ID = B.BOOK_ID
GROUP BY
	B.GENRE;




-- 2) Find the average price of books in the "Fantasy" genre:

SELECT
	AVG(PRICE) AS AVERAGE_PRICE
FROM
	BOOKS1
WHERE
	GENRE = 'Fantasy';





-- 3) List customers who have placed at least 2 orders:

SELECT
	CUSTOMER_ID,
	COUNT(ORDER_ID) AS ORDER_COUNT
FROM
	ORDERS1
GROUP BY
	CUSTOMER_ID
HAVING
	COUNT(ORDER_ID) > 2;
___________or______________


SELECT
	O.CUSTOMER_ID,
	C.NAME,
	COUNT(ORDER_ID) AS ORDER_COUNT
FROM
	ORDERS1 O
	JOIN CUSTOMERS1 C ON O.CUSTOMER_ID = C.CUSTOMER_ID
GROUP BY
	O.CUSTOMER_ID,
	C.NAME
HAVING
	COUNT(ORDER_ID) > 2;




-- 4) Find the most frequently ordered book:
SELECT
	BOOK_ID COUNT(ORDER_ID)
FROM
	BOOKS1
GROUP BY
	BOOK_ID
ORDER BY
	ORDER_COUNT DESC
LIMIT
	1;

----or -----

SELECT
	*
FROM
	ORDERS1;



SELECT
	*
FROM
	BOOKS1;




SELECT
	O.BOOK_ID,
	B.TITLE COUNT(O.ORDER_ID) AS ORDER_COUNT
FROM
	ORDERS1 O
	JOIN BOOKS1 B ON O.BOOK_ID = B.BOOK_ID
GROUP BY
	O.BOOK_ID,
	B.BOOK_ID
ORDER BY
	ORDER_COUNT DESCLIMIT
	1;





-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :

SELECT
	*
FROM
	BOOKS1
WHERE
	GENRE = 'Fantasy'
ORDER BY
	PRICE DESC LIMIT
	3;




-- 6) Retrieve the total quantity of books sold by each author:

SELECT
	B.AUTHOR,
	SUM(O.QUANTITY) AS TOTAL_BOOK_SOLD
FROM
	ORDERS1 O
	JOIN BOOKS B ON O.BOOK_ID = B.BOOK_ID
GROUP BY
	B.AUTHOR;



SELECT
	*
FROM
	ORDERS1;




SELECT
	*
FROM
	BOOKS1;



-- 7) List the cities where customers who spent over $30 are located:

SELECT DISTINCT
	C.CITY,
	TOTAL_AMOUNT
FROM
	ORDERS1 O
	JOIN CUSTOMERS1 C ON O.CUSTOMER_ID = C.CUSTOMER_ID
WHERE
	O.TOTAL_AMOUNT > 30;






-- 8) Find the customer who spent the most on orders:

SELECT
	C.CUSTOMER_ID,
	C.NAME,
	SUM(TOTAL_AMOUNT) AS TOTAL_SPENT
FROM
	ORDERS1 O
	JOIN CUSTOMERS1 C ON O.CUSTOMER_ID = C.CUSTOMER_ID
GROUP BY
	C.CUSTOMER_ID,
	C.NAME;






--9) Calculate the stock remaining after fulfilling all orders:

SELECT
	B.BOOK_ID,
	B.TITLE,
	B.STOCK,
	COALESCE(SUM(QUANTITY), 0) AS ORDER_Q
FROM
	BOOKS1 B
	LEFT JOIN ORDERS1 O ON B.BOOK_ID = O.BOOK_ID
GROUP BY
	B.BOOK_ID;

-- check tables


select * from books1;
select * from customers1;
select * from orders1;







