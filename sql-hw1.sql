-- Question 1:
-- How many actors are there with the last name 'Wahlberg'?
-- Answer: 2
SELECT last_name
FROM actor 
WHERE last_name = 'Wahlberg';

-- Question 2:
-- How many payments were made between $3.99 and $5.99?
-- Answer: 4,764
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3:
-- What film does the store have the most of?
-- Answer: Film 200 with 9
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Question 4:
-- How many customers have the last name 'William'?
-- Answer: 0
SELECT last_name
FROM customer
WHERE last_name = 'William';

-- Question 5:
-- What store employee sold the most rentals?
-- Answer: 1-8040
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id 
ORDER BY COUNT(rental_id) DESC;

-- Question 6:
-- How many different district names are there?
-- Answer: 378
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7:
-- What film has the most actors in it?
-- Answer: film_id 508- 16 actors
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id 
ORDER BY COUNT(actor_id) DESC;

-- Question 8:
-- From store_id 1, how many customers have a last name ending with 'es'
-- Answer: 13
SELECT store_id, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Question 9:
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430?
-- Answer: 3
SELECT amount, COUNT(amount) AS number_of_payments
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
ORDER BY COUNT(amount) DESC;

-- Question 10:
-- Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: 5 ratings, PG-13 has the most

SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating 
ORDER BY COUNT(rating) DESC;
