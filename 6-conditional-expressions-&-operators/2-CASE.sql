SELECT film_id, title, rental_rate FROM film
LIMIT 10;

SELECT film_id, title, rental_rate,
CASE
	WHEN rental_rate <1 THEN 'Budget'
	WHEN rental_rate >=1 AND rental_rate <=3 THEN 'Standard'
	WHEN rental_rate > 3 THEN 'Premium'
END
FROM film;