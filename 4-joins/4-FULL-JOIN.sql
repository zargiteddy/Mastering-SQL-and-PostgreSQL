SELECT COUNT(*) FROM address
FULL JOIN customer
ON customer.address_id = address.address_id;