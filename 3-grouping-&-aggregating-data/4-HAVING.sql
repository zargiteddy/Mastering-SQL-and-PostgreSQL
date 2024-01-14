SELECT staff_id, SUM(amount) FROM payment
GROUP BY staff_id
HAVING SUM(amount)> 30000;