/* Show me a list of actors and the count of movies they have acted in. Sort it in a 
way that the actor who has done most movies is at the top.

HINT: You would need to join 3 tables (film, actor, film_actor) */

SELECT actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS "Actor Name",
count(film.film_id) AS "Movies Acted In"
FROM actor
JOIN film_actor
ON actor.actor_id = film_actor.actor_id
JOIN film
ON film.film_id = film_actor.film_id
GROUP BY actor.actor_id
ORDER BY "Movies Acted In" DESC;