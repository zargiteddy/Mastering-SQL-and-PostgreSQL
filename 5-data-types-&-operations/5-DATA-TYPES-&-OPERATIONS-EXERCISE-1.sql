/*
The "rental" table has fields for rental_date (when the movie rented), and return_date
(when it was returned). We want to reach out to customers whose rental duration was more than
7 days, and send them an email. Can you create a report for me that lists down following columns:
	Rental Date
	Return Date
	Rent Duration - that is, difference between two dates (HINT: use AGE function)
	Customer First Name
	Customer Last Name
	Customer Email

You can find the last 3 fields in the "customer" table

Keep the data sorted by rent duration (high to low) so we can see the longest renters first.
*/

SELECT rental.rental_date, rental.return_date, AGE(return_date, rental_date) AS "Rent Duration",
customer.first_name, customer.last_name, customer.email
FROM rental
JOIN customer
ON rental.customer_id = customer.customer_id
WHERE return_date IS NOT NULL AND AGE(return_date, rental_date) >= interval '7 days'
ORDER BY "Rent Duration" DESC;