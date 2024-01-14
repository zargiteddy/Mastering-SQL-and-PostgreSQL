/* 
i want to create a report that shows the different ratings of all movies, 
and count of movies that have been rented for each rating.

The film_id and ratings are available under "film" table. The "rental" table 
shows each film that is rented, but it does not have film_id as as column, 
so you would have to find a 3rd table that can get you that info.
*/

SELECT film.rating, COUNT(inventory.inventory_id)
FROM rental
JOIN inventory
ON rental.inventory_id = inventory.inventory_id
RIGHT JOIN FILM
ON inventory.film_id = film.film_id
GROUP BY film.rating
ORDER BY COUNT(inventory.inventory_id) DESC;