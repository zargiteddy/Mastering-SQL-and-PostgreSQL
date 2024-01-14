CREATE VIEW movie_language_details AS
SELECT film_id, title, film.language_id, name
FROM film
JOIN language
ON film.language_id = language.language_id;

SELECT * FROM movie_language_details
WHERE film_id = 2;