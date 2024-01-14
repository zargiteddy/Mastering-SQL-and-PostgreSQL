SELECT customer_id, first_name, last_name, address, district, postal_code, phone
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California'
