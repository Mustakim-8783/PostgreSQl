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
where age>20 and age<50;

select count(*)  from customers;

select * from customers;


select state,gender from customers
where gender='F' and state='OR' OR state='NY';

/* we select state and gender column from customer and filter it by gender female state 
or or ny */


select state ,gender from customers 
where gender='F' and state='OR' or gender='f'and state='NY';

select state,gender from customers
where gender='F' and (state='OR'or state='NY');


SELECT COUNT(*) AS female_count
FROM customers
WHERE gender = 'F' AND (state = 'OR' OR state = 'NY');
/* we wamt to calculate the count of the given code */

select count(*) as female_count
from customers 
where gender='F' and state='OR' or gender='f'and state='NY';

select count(*) as female_count
from customers
where gender='F' and state='OR' or state='NY';

select * from customers;
####################################################
#Business problems
/* customer forgot thier wallet on our store we need to tract down thier email name =Nancy Thomas*/
select  email from customer
where first_name='Nancy'
and last_name='Thomas' 


/* customer wants to know what the movies is about Outlaw Hanky could you give them desciption for the same movies*/
select description from film 
where title ='Outlaw Hanky'

########################################################
#business problems
select * from country

/* select people under 30 or over 50 with income over 50000 from japan or australia*/
select firstname,income,age,country from customers
where income>50000 and (age<30 or age>=50)
and (country='Japan' or country='Australia')

/* select month june 2006 and orderamount>100 selelct sum*//
select sum(totalamount) from orders
where (orderdate>='2004-06-01' and orderdate<='2004-06-30')
and totalamount>100


select * from orders

#################################################
/* like and ilike*/

select * from customers
where firstname like 'J%'

select count(*)  from customers
where firstname like 'J%'

select count(*) from customers
where firstname like 'J%' and lastname like 'S%'


select * from customers
where firstname like 'J%' and lastname like 'S%'

select * from customers
where firstname like 'J%' and lastname ilike 'S%'

select * from customers
where firstname like 'J%' and lastname ilike 'S%'


select * from customer
where first_name like '%er%'

select count(*) from customer
where first_name like '%er%'

select * from customer
where first_name like '%her%'

select count(*) from customer
where first_name like '%her%'


select * from customer
where first_name like '_her%'


select count(*) from customer
where first_name like '_her%'


################################
select staff_id,customer_id,sum(amount) from payment
group by staff_id,customer_ID
ORDER BY staff_id,customer_id


select date(payment_date) ,sum(amount) from payment
group by date(payment_date)

select date(payment_date) ,sum(amount) from payment
group by date(payment_date)
order by sum(amount) desc

###############################
#challenge 
/* what are the customer ids of customer who have spent more than $100 in payment transactoion with our staff_id 
members 2*/
select customer_id ,sum(amount) from payment
where staff_id =2
group by customer_id
having sum(amount)>100


select sum(amount) as rental_price 
from payment;

select amount as rental_price 
from payment;



select count(amount) as num_transactions 
from payment;

select count(*) as num_transactions 
from payment;

select customer_id,sum(amount) as total_spent
from payment
group by customer_id


select count(*) as rental_price 
from payment 

select customer_id ,sum(amount) as total_spent
from payment 
group by customer_id

select customer_id ,sum(amount) as total_spent
from payment 
group by customer_id
having sum(amount)>100


select customer_id ,sum(amount) as total_spent
from payment 
group by customer_id
having total_spent>100

select amount from payment

select customer_id,amount ,amount as new_name
from payment 
where new_name>2

#joins 
/* we have joins for like inner join*/

select * from payment 

select * from customer

	/* inner join*/
select payment_id,payment.customer_id,first_name from payment
inner join  customer
on payment.customer_id=customer.customer_id



select payment_id,payment.customer_id,first_name from customer
inner join  payment
on payment.customer_id=customer.customer_id

	/* outer join */
select * from customer
full outer join payment
on customer.customer_id=payment.customer_id

/* left outer join*/

select * from film
	
select * from inventory


select film.film_id,title ,inventory_id
from film 
left join inventory on
inventory.film_id = film.film_id


select film.film_id,title ,inventory_id
from film 
left join inventory on
inventory.film_id = film.film_id

select film.film_id,title ,inventory_id
from film 
left join inventory on
inventory.film_id = film.film_id
where inventory_id.film_id is null

/* right join */


entory.film_id = film.film_id

select film.film_id,title ,inventory_id
from film 
right join inventory on
inventory.film_id = film.film_id


select film.film_id,title ,inventory_id
from film 
right join inventory on
inventory.film_id = film.film_id
where inventory_id.film_id is null

 ##############################
challenge
/* what are the customers live in california*/

select * from customer

select email,district from address 
inner join customer
on address.address_id=customer.address_id
where district='California'


/* get a list of all the movies 'nick Wahlberg' has been in */

select * from film
select* from actor
select * from film_actor

/* innner join statement*/
select title,first_name,last_name from actor
inner join film_actor
on film_actor.actor_id=actor.actor_id
inner join film
on film_actor.film_id=film.film_id
where first_name='Nick' and last_name='Wahlberg'










