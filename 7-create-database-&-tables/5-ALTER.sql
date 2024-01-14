UPDATE emp_details
SET emp_salary = 400000
WHERE emp_id = 4;

SELECT * FROM emp_details;

ALTER TABLE emp_details ADD COLUMN emp_designation VARCHAR(50);

ALTER TABLE emp_details RENAME COLUMN emp_name TO emp_firstname;

ALTER TABLE emp_details ALTER COLUMN emp_salary SET NOT NULL;

ALTER TABLE emp_details DROP COLUMN emp_designation;