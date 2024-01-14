SELECT title AS "Name of the movie", rental_rate AS "Rental rate", length, replacement_cost AS "Cost to replace" FROM film
WHERE rental_rate >= 2.99
AND length > 90;