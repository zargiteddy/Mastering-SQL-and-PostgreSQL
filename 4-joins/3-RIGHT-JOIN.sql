SELECT staff_id, first_name, last_name, staff.address_id, address.address_id, address, postal_code
FROM staff
RIGHT JOIN address
ON staff.address_id = address.address_id;