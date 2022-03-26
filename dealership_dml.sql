
---- Adding People ----

-- Add Customers 
select * from customer

insert into customer(first_name, last_name)
values('Bob', 'Ross'), ('Adam', 'Levine'), ('Brian', 'Stanton'), ('John', 'Smith')

-- Adding Mechanics 
select * from mechanic 

insert into mechanic(first_name, last_name)
values ('Rob', 'Builder'), ('Grease', 'Monkey'), ('Mary', 'Jane')

-- Adding Sales
select * from sales_person

insert into sales_person(first_name, last_name)
values ('Roberto', 'Gonzales'), ('Joey', 'Vasey'), ('David', 'Hightower')


---- Adding Cars ----

-- Adding car models 
select * from cars 

insert into cars(make, model, color, car_year, car_price)
values('Ferrari', 'LaFerrari', 'Red', '2013', 1400000),
('Pagani', 'Huayra', 'Earth gray', '2017', 1400040.34),
('McLauren', 'Elva', 'Midnight Black', '2017', 1700000.99),
('Toyota', 'Prius', 'Neon Green', '2016', 16892.87)

-- Adding Car instances (serial_numbers) MY CAR INVENTORY
select * from car_serial 

insert into car_serial(car_id)
values(1), (4), (4), (3), (4), (4), (2), (1)


---- Onto the Sales invoice ----
select * from sale_invoice

insert into sale_invoice(customer_id, sales_person_id, car_serial_id)
values('1', '3', '4'),
('4', '2', '1')



-- Adding parts 
select * from part

insert into part(part_name)
values('Air filter'), ('Coolant'), ('Cabin/Pollen Filter'), ('Break Fluid'), ('Engine oil'), ('Engine Filter'), ('Fuel Filter'), ('Timing Belt'), ('Timing Chain')


-- Add service 
select * from service

insert into service(service_name, service_description, service_price)
values ('Replace Air Filter', 'Replace filter in the air intake box of the engine bay', 50.99),
('Replace coolant', 'Replace coolant in the radiator', 32.99)


-- Deal with later -- - - - - - - - - - -

-- Adding to service_invoice 
select * from service_invoice 

insert into service_invoice(customer_id, car_serial_id)
values(1, 4), (3, 3)


-- Adding to service_order

select * from service_order 

insert into service_order(service_id, service_invoice_id)
values(2, 1), (1, 1), (1,2)

-- Adding to part order 

select * from part_order 

insert into part_order(part_id, service_order_id)
values (2, 1), (1, 2), (1, 3) 


select * from mechanic 

select * from assigned_mechanics

insert into assigned_mechanics(service_invoice_id, mechanic_id)
values(1, 1), (1, 2), (1, 3), (2, 2)

-- Add service history 
select * from service_history 

select * from service_invoice 

insert into service_history(service_invoice_id)
values (1), (2)










