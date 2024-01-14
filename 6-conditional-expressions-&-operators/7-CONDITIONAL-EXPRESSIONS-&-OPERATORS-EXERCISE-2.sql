-- Create a view for the previous coding exercise solution

CREATE VIEW customer_segments AS 
	SELECT CONCAT(first_name, ' ', last_name) AS "Customer name", email AS "Email",
	SUM(amount) AS "Total Rentals",
	CASE
		WHEN SUM(amount) >=200 THEN 'Elite'
		WHEN SUM(amount) >=150 AND SUM (amount) <200 THEN 'Platinum'
		WHEN SUM(amount) >=100 AND SUM (amount) <150 THEN 'Gold'
		WHEN SUM(amount) >=0 AND SUM (amount) <100 THEN 'Silver'
	END AS "Customer Category"
	FROM payment
	JOIN customer
	ON payment.customer_id = customer.customer_id
	GROUP BY "Customer name", "Email";

SELECT * FROM customer_segments;