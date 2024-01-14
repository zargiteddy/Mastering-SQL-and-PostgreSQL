CREATE TABLE order_details(
	order_id INTEGER PRIMARY KEY,
	customer_name VARCHAR(50) NOT NULL,
	product_name VARCHAR(50) NOT NULL,
	ordered_from VARCHAR(50) NOT NULL,
	order_amount NUMERIC(7,2),
	order_date DATE NOT NULL,
	delivery_date DATE
);

INSERT INTO  order_details (order_id, customer_name, product_name, ordered_from, order_amount, order_date, delivery_date)
VALUES
(1001,'Linda','Pen','Store',9.82,'2025-01-02','2025-01-06'),
(1002,'Stephanie','Pencil','App',12.79,'2025-01-04','2025-01-08'),
(1003,'Deborah','Scissors','Website',13.68,'2025-01-07','2025-01-12'),
(1004,'Andrew','Pen','Website',7.62,'2025-01-07','2025-01-15'),
(1005,'Steven','Chair','Website',9.76,'2025-01-07','2025-01-11'),
(1006,'Susan','Pencil','Website',10.8,'2025-01-10','2025-01-13'),
(1007,'Robert','Pen','App',5.1,'2025-01-13','2025-01-23'),
(1008,'Melissa','Eraser','Website',9.13,'2025-01-13','2025-01-17'),
(1009,'David','Pencil','Website',6.26,'2025-01-13','2025-01-15'),
(1010,'Jennifer','Marker','Store',5.67,'2025-01-16','2025-01-21'),
(1011,'Thomas','Pen','Store',9.04,'2025-01-16','2025-01-22'),
(1012,'Lisa','Binder','App',7.13,'2025-01-17','2025-01-26'),
(1013,'Richard','Desk','Website',15.2,'2025-01-17','2025-01-18'),
(1014,'Matthew','Binder','Website',9.24,'2025-01-17','2025-01-18'),
(1015,'Charles','Envelope','Website',6.58,'2025-01-17','2025-01-18'),
(1016,'Michelle','Envelope','Store',9.17,'2025-01-18','2025-01-21'),
(1017,'Sandra','Envelope','App',6.86,'2025-01-19','2025-01-23'),
(1018,'Mary','Pencil','App',14.31,'2025-01-22','2025-01-29'),
(1019,'Michael','Pen Set','Website',7.95,'2025-01-25','2025-01-29'),
(1020,'Donald','Eraser','App',11.13,'2025-01-26','2025-01-28'),
(1021,'Amanda','Pen Set','Website',12.54,'2025-01-27','2025-01-29'),
(1022,'Kenneth','Pen Set','App',6.82,'2025-01-31','2025-02-03'),
(1023,'Timothy','Chair','Store',10.82,'2025-02-01','2025-02-06'),
(1024,'Joshua','Desk','Website',11.48,'2025-02-01','2025-02-02'),
(1025,'Christopher','Scissors','Website',6.45,'2025-02-02','2025-02-04'),
(1026,'Elizabeth','Desk','Store',15.05,'2025-02-04','2025-02-05'),
(1027,'Joseph','Chair','Store',14.97,'2025-02-05','2025-02-08'),
(1028,'George','Marker','Website',6.76,'2025-02-05','2025-02-07'),
(1029,'Sarah','Pen','Store',14.38,'2025-02-06','2025-02-10'),
(1030,'Betty','Scissors','App',7.21,'2025-02-07','2025-02-11'),
(1031,'Barbara','Pen Set','Store',7.89,'2025-02-11','2025-02-13'),
(1032,'Brian','Scissors','Store',8.75,'2025-02-12','2025-02-16'),
(1033,'Jessica','Pen Set','Website',9.59,'2025-02-13','2025-02-18'),
(1034,'Ashley','Envelope','Store',6.7,'2025-02-18','2025-02-21'),
(1035,'Margaret','Binder','Website',14.58,'2025-02-19','2025-02-22'),
(1036,'John','Marker','App',8.24,'2025-02-20','2025-02-22'),
(1037,'Kimberly','Eraser','Website',10.8,'2025-02-22','2025-02-26'),
(1038,'Karen','Scissors','Store',5.59,'2025-02-22','2025-02-23'),
(1039,'Paul','Pencil','Store',10.18,'2025-02-28','2025-03-03'),
(1040,'Donna','Marker','Website',11.61,'2025-02-28','2025-03-01'),
(1041,'Emily','Envelope','App',14.2,'2025-03-01','2025-03-04'),
(1042,'James','Chair','Website',13.13,'2025-03-03','2025-03-06'),
(1043,'William','Eraser','App',13.01,'2025-03-04','2025-03-09'),
(1044,'Anthony','Chair','Website',11.19,'2025-03-05','2025-03-08'),
(1045,'Kevin','Eraser','Store',8.57,'2025-03-14',NULL),
(1046,'Carol','Desk','App',13.88,'2025-03-15',NULL),
(1047,'Daniel','Desk','App',11.57,'2025-03-16',NULL),
(1048,'Mark','Marker','Store',8.8,'2025-03-19',NULL),
(1049,'Nancy','Binder','App',5.85,'2025-03-20',NULL),
(1050,'Patricia','Binder','Website',12.32,'2025-03-24',NULL);

SELECT * FROM order_details;

SELECT product_name, COUNT(order_id) AS "Number of Orders",
SUM(order_amount) AS "Total Sales"
FROM order_details
GROUP BY product_name;