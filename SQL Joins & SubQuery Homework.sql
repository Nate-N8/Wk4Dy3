--1. List all customers who live in Texas (use
--JOINs)
SELECT *
FROM country
INNER JOIN live_texas
ON country.country_id = live_texas.country_id;
--answer none

--2. Get all payments above $6.99 with the Customer's Full
--Name
SELECT first_name,last_name
FROM customer
INNER JOIN payment.
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING SUM(amount) > 6.99;
--answer 2

--3. Show all customers names who have made payments over $175(use
--0333333333333333333subqueries)
SELECT Customer_id, SUM(amount)
FROM payment
GROUP BY Customer_id
HAVING SUM(amount) > 175;
--answer 2

--4. List all customers that live in Nepal (use the city
--table)
SELECT customer.customer_id
FROM customer
INNER JOIN city
ON city.city_id = city.city_id;
--answer

--5. Which staff member had the most
--transactions?
SELECT staff.staff_id SUM(amount)
FROM staff
INNER JOIN staff
ON staff.staff_id = payment.staff_id
--6. How many movies of each rating are
--there?
SELECT rating, 
FROM film
WHERE rating;
--7.Show all customers who have made a single payment
--above $6.99 (Use Subqueries)
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 6.99;
--answer 2

--8. HOW mny free rentals did our stores giva away? 
SELECT rental_id
FROM rental
WHERE rental_id;