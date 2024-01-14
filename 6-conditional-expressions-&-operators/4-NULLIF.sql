SELECT amount AS "USD", COALESCE(10/NULLIF(amount,0),0) AS "INR" FROM payment
WHERE amount = 0;
