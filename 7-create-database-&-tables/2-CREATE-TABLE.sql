CREATE TABLE emp_details (
	emp_id SERIAL PRIMARY KEY,
	emp_name VARCHAR(50) NOT NULL,
	emp_location VARCHAR(100) NOT NULL,
	emp_salary INT
);