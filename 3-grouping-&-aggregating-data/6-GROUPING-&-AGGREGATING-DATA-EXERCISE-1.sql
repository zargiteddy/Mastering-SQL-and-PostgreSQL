-- Which are my top 5 highest renting customers? How much they have spent?

SELECT DISTINCT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;