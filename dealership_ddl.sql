-- Create table for customer 
select * from customer 

create table customer(
	customer_id serial primary key, 
	first_name varchar(50),
	last_name varchar (50)
)

-- Create a table for the mechanic 
select * from mechanic 

create table mechanic(
	mechanic_id serial primary key, 
	first_name varchar(50),
	last_name varchar (50)
)

-- Create a table for the sales person
select * from sales_person

create table sales_person(
	sales_person_id serial primary key, 
	first_name varchar(50),
	last_name varchar (50)
)

-- Create a table for the car types 
select * from cars 

create table cars(
	car_id serial primary key,
	make varchar(50),
	model varchar(50),
	car_year varchar (50),
	color varchar(50),
	car_price decimal(10,2)
)


-- Create a table for car_serial 
-- *** would be cool if I could get it to generate random unqiue serial number 
select * from car_serial 

create table car_serial(
	car_serial_id serial primary key,
	car_serial_number 
	car_id integer not null,
	foreign key(car_id) references cars(car_id)
)


-- Create sale_invoice table 
-- Note: car_serial should be unique 
select * from sale_invoice

create table sale_invoice(
	sale_invoice_id serial primary key,
	customer_id integer not null,
	sales_person_id integer not null,
	car_serial_id integer unique not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(sales_person_id) references sales_person(sales_person_id),
	foreign key(car_serial_id) references car_serial(car_serial_id)
)


-- Working on going in for service 

-- Join table for mechanic 
select * from assigned_mechanics

create table assigned_mechanics(
	assigned_mechanic_id serial primary key,
	service_invoice_id integer,
	mechanic_id integer,
	foreign key (service_invoice_id) references service_invoice(service_invoice_id),
	foreign key(mechanic_id) references mechanic(mechanic_id)
)


-- Create table for car parts (kept separate from service since one act of a service may need more parts than another)
select * from part 

create table part(
	part_id serial primary key,
	part_name varchar(50)
)

-- Create table for service 
select * from service

create table service(
	service_id serial primary key,
	service_name varchar(50),
	service_description varchar(200),
	service_price numeric (5, 2),
)

-- Create table for part_order (add foreign key)
select * from part_order

create table part_order(
	part_order_id serial primary key,
	service_order_id integer, 
	part_id integer not null,
	foreign key(part_id) references part(part_id)
)


-- Create table for service_invoice
select * from service_invoice 

create table service_invoice( 
	service_invoice_id serial primary key,
	customer_id integer,
	car_serial_id integer,
	date_time date DEFAULT CURRENT_TIMESTAMP,
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_serial_id) references car_serial(car_serial_id)
)

-- Create service_order 
select * from service_order 

create table service_order(
	service_order_id serial primary key,
	service_id integer,
	service_invoice_id integer,
	foreign key (service_id) references service(service_id),
	foreign key(service_invoice_id) references service_invoice(service_invoice_id)
)


-- add foreign key to part_order 
alter table part_order 
add foreign key(service_order_id) references service_order(service_order_id)


-- Create service_history table (NOT DONE)
-- each service_invoice should only appear once in the service_history
select * from service_history 

create table service_history(
	service_history_id serial primary key,
	service_invoice_id integer unique,
	foreign key(service_invoice_id) references service_invoice(service_invoice_id) 
)





select * from part_order








