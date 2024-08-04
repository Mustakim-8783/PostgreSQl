SELECT * FROM payment;
/* we select all the values from table payment */

SELECT COUNT (amount) from payment;
/* we select the count of column amount */

SELECT amount from payment;
/* we select the amount column only from the table */

SELECT COUNT (payment_id) from payment;
/* we select the count of column payment_ID */

SELECT COUNT(customer_id) FROM PAYMENT;
/* we select the count of column customer_ID */

SELECT COUNT(customer_id) from payment;
/* we select the count of column customer_ID */

SELECT COUNT(staff_id) FROM PAYMENT;
/* COUNT OF THE STAFF_ID IN THE PAYMENT TABLE */

SELECT COUNT(rEntal_id) FROM payMent;
/* WE GOT THE COUNT OF THE VALUES THAT ARE IN THE CODE */
SELECT RENTAL_ID FROM PAYMENT;

SELECT DISTINCT amount FROM payment;
/* WE NEED ONLY UNIQUE VALUES IN THE COULUMNS */
SELECT amount from payment;
/* WE select all the values stotre in amount column which shown after the code */
SELECT COUNT(DISTINCT amount) FROM payment;
/* IT REPRESENT THE SPECIFIC COUNT WHICH VALUES ARE NOT REPEATED DISTINCT WE
USED FOR THAT SPECIFIC UNIQUE VALUES THAT ARE NOT REPRESENTED */

SELECT * FROM  payment;

SELECT * FROM PAYMENT, 
WHERE ='payment';



SELECT * FROM customer;
/* we take a customer table from dvd rental*/

select * from customer
where first_name='Tom';

/* by using WHERE we got the name of TOM which is in coulunm frist_name */

SELECT * FROM film;
/* we select film table */

SELECT COUNT (rental_rate) from film;

SELECT * FROM film
WHERE rental_rate > 4;
/* we need all the rental_rate is more than 4*/


SELECT * FROM film
WHERE rental_rate >4 AND replacement_cost >19.99;
/* we filter filter the records as per our condition */


SELECT COUNT(*) from film
where replacement_cost >19.99; 
/* WE CHECK COUNTB OF THE REPLACEMNT AFTER THE FILTER*/

SELECT title FROM film
WHERE rental_rate >4 AND replacement_cost >19.99
AND rating='R';
/* we filte rthe rental_rate and replacement _rate with rating R and want bshow only title*/

SELECT COUNT(title) FROM film
WHERE rental_rate >4 AND replacement_cost >19.99
AND rating='R';
/* we check the the count of the filter */


SELECT * FROM film
WHERE rating!='R';
/* we check the coulumn only without the rating  R*/

SELECT * FROM film
WHERE rating='R' or rating='PG-13';
/* we check the column of rating with values R or PG-13*/


SELECT description from film
where title='Outlaw Hanky';

select * from customers;

select count(income) from customers
where age>44 and income>=100000;

select count(income) from customers
where age>=30 and age<=50 and income<50000

select avg(income) from customers
where age>=30 and age<=50;

select avg(income) from customers
where age>=20 and age<=50;




