/* The "payment" table stores customer ids and amount they have paid. I want to get the
list of customer ids that have rented out movies that cost 7.99 or more so i can put them
in a "Platinum" category and send them coupons later. 

Go make the report! */

-- Field -> customer_id
-- Criteria -> amount >= 7.99

SELECT DISTINCT customer_id FROM payment
WHERE amount >= 7.99
