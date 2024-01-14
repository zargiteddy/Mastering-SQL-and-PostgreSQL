SELECT staff_id, SUM(amount) FROM payment
WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-20'
GROUP BY staff_id
ORDER BY SUM(amount) DESC;