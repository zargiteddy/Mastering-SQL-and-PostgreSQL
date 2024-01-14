/*
The "payment" table contains purchases done by each customer. This table
has the column "customer_id" which contains unique id of each customer and
can be used to join on the "customer" table to get each customer's first/last
name and email address. I want to create a report task that shows following columns:
	Customer Name = combination of the first & last name
	Email = email address of customer
	Total Rental = total purchase done by customer
	Customer Category, based on following rules: (HINT: Use "CASE")
		'Elite' - Total Rentals more than $200
		'Platinum' - Total Rentals more than $150
		'Gold' - Total Rentals more than $100
		'Platinum' - Total Rentals more than $50
*/

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