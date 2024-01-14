-- Get all the movies that have rental rate more than the average value

-- Step 1 - get the average rental rate
	SELECT AVG(rental_rate) from film; -- 2.98

-- Step 2 - get the movies where rental rate is more than average rental rate
	SELECT title, rental_rate FROM film
	WHERE rental_rate > 2.98;