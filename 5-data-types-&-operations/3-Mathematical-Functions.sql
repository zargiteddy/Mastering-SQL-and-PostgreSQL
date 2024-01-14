SELECT amount, ROUND(amount,0) AS "Round Amount",
TRUNC(amount,0)
FROM payment
LIMIT 25;