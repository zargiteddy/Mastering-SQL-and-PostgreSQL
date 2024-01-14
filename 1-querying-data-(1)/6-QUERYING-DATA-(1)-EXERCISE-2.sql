/* The "film" table contains details of films we rent, including their name, rental rate,
and replacement cost. Take a look at the table and generate a query that tells me high
value films, meaning those that:

a: have rental rate more than 2.99, OR
b: replacement cost more than 19.99

I want the report to be very simple, so just include the movie name, rental rate, and
replacement cost in there.

*/

-- Field -> title, rental_rate, replacement_cost
-- Criteria -> rental_rate > 2.99 OR replacement_cost > 19.99

SELECT title AS "Movie Name", rental_rate AS "Rental Cost", replacement_cost AS "Replacement Cost" FROM film
WHERE rental_rate > 2.99 OR replacement_cost > 19.99;
