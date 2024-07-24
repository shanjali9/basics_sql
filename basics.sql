--Hello world SQL query, SELECT all records from the actor table
select * from actor;

--QUERY for first_name and last_name in the actor table
select first_name, last_name 
from actor;

--QUERY for first_name that equals Nick using the WHERE clause
select first_name, last_name 
from actor 
where first_name = 'Nick';

--QUERY for first_name that equals to Nick using the LIKE and WHERE clauses
select first_name, last_name
from actor 
where first_name like 'Nick';

--QUERY for all first_name data that starts with a J using LIKE and WHERE --using a wildcard
select first_name, actor_id
from actor 
where first_name like 'J%';

--QUERY for all first_name data that startes with K and has 2 letters after the K using LIKE and WHERE clauses 
select first_name, actor_id
from actor 
where first_name like 'K__';

--QUERY for all first_name data that starts with a K and ends with th
--using LIKE and WHERE and using BOTH wildcard and underscore
select first_name, last_name, actor_id
from actor 
where first_name like 'K__%th';

--Comparing operators are:
--Greater than (>)
--Less than (<)
--Greater than or equal to <=
--Less than or equal to =>
--Not equal <>

--Explore Data with SELECT all query (specific to changing inot a new table)
select * 
from payment;

--Query for Data that shows customers who pay an amount GREATER than $2
select customer_id, amount
from payment 
where amount>2.00;

--QUERY for Data for customers who paid an amount LESS than $7.99
select customer_id, amount 
from payment 
where amount<7.99;

--QUERY for Data for customers who paid an amount LESS than or EQUAL to $7.99
select customer_id, amount 
from payment 
where amount <= 7.99;

--QUERY for Data that shows customers who paid an amount GREATER than or EQUAL to 2.00 in ASCENDING order
select customer_id, amount 
from payment 
where amount >= 2.00
order by amount asc;

--QUERY for data that shows customers who paid 
--an amount BETWEEN 2.00 and 7.99
--Using the BETWEEN with the AND clause 
select customer_id, amount 
from payment 
where amount between 2.00 and 7.99;

--QUERY for data that shows customers who paid 
--an amount NOT equal to 0.00
--Ordered in DESCENDING order
select customer_id, amount 
from payment 
where amount <> 0.00
order by amount desc;

--SQL Aggregations: SUM, AVG, COUNT, MIN, MAX

--QUERY to display the sum of amounts paid that are greater than 5.99
select SUM(amount)
from payment 
where amount>5.99;

--QUERY to display the sum if amounts paid that are greater than 5.99
select AVG(amount)
from paymemt
where amount > 5.99;

--QUERY to display the count of amount paaid that are greater than 5.99
select COUNT(amount)
from payment 
where amount > 5.99;

--QUERY to display the count of unique amounts paid that are greater than 5.99
select COUNT(disctint amount)
from payment 
where amount > 5.99;
  
--QUERY to display MIN amount > 7.99
select MIN(amount) as Min_Num_Payments 
from payment 
where amount > 7.99;

--QUERY to display MAX amount > 7.99
select MAX(amount) as Max_Num_Payments 
from payment 
where amount > 7.99;

--QUERY to display all amounts (as a demo of groupby)
select amount 
from payment 
where amount = 7.99;

--QUERY to dsiplay different amounts grouped together
--And count the amounts
select amount, COUNT(amount)
from payment 
group by amount
order by amount;

--QUERY to display customer_id with the summed amount for each customer_id
select customer_id, SUM(amount)
from payment 
group by customer_id
order by customer_id desc;

 --QUERY to display customer_ids with the amount for each customer id
--Separate example of group 
select customer_id, amount
from payment 
group by amount, customer_id 
order by customer_id desc;

--QUERY to explore the data inside of the customer table
select * from customer;

--QUERY to display customer IDs that show up more than 0 times 
--Group by the customer's email
select COUNT(customer)
from customer 
where email like 'j__.w%'
group by email 
having COUNT(customer_id)>0;










