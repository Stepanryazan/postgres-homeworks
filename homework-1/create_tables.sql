-- SQL-команды для создания таблиц
CREATE TABLE employees
(
	employee_id serial PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50),
	title varchar(50),
	birth_date date,
	notes text
);

CREATE TABLE customers
(
	customer_id varchar(5) PRIMARY KEY,
	company_name varchar(50),
	contact_name varchar(50)
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar(50)
);