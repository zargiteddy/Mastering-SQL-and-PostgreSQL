/* I want something to analyse the pattern between film language and it's rental rate. Send me a data
extract (a report) that shows language of each movie, it's title, and the rental rate.

HINT: You would have to JOIN the film table (that has film title and rental rate) and language table 
(that has the language) */

SELECT f.title, f.rental_rate, l.name
FROM film f
JOIN  language l
ON f.language_id = l.language_id
ORDER BY rental_rate DESC;