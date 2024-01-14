/* The "film" table has the replacement cost and rental duration (assume, in weeks)
for each movie.

Can you tell me the movies (just the title and relevant details) sorted by highest to 
lowest replacement cost and rented out for 4-6 weeks?

Also i don't want all the data, just give me 100 records!*/

SELECT title, replacement_cost, rental_duration
FROM film
WHERE rental_duration BETWEEN 4 AND 6
ORDER BY replacement_cost DESC
LIMIT 100;