SELECT address_id, address, address2,
COALESCE(address2, 'House')
FROM address;