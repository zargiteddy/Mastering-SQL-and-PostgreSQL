SELECT film.film_id, film.title, inventory.inventory_id
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory_id IS NULL