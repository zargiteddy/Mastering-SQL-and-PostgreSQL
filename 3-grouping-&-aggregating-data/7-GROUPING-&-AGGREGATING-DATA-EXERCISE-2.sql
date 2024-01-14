/* The "actor" table has names of all actors. Can you tell me which actor first names are
most common and how many records have it? */

SELECT DISTINCT first_name, COUNT(*)
FROM actor
GROUP BY first_name
ORDER BY count DESC;