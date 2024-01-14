/* 
For the "order_details" table created in previous coding exercise,
make these following changes:

1. Change the name of column "customer_name" to "customer_first_name"
2. Add a new column named "cancel_date"
*/

SELECT * FROM order_details;

ALTER TABLE order_details RENAME COLUMN customer_name TO customer_first_name;

ALTER TABLE order_details ADD COLUMN cancel_date DATE;