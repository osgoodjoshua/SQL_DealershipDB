create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150)
);

create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150),
	phone VARCHAR(15)
);

create table car (
	car_id SERIAL primary key,
	vin VARCHAR(25),
	make VARCHAR(100),
	model VARCHAR(100),
	year_ VARCHAR(10),
	new_used VARCHAR(10)
);

create table invoice (
	invoice_id SERIAL primary key,
	invoice_date DATE,
	salesperson_id INTEGER,
	customer_id INTEGER,
	car_id INTEGER,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_id) references car(car_id)
);

create table serviceticket (
	serviceticket_id SERIAL primary key,
	serviceticket_date DATE,
	customer_id INTEGER,
	car_id INTEGER,
	description VARCHAR(500),
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_id) references car(car_id)
);

create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150),
	phone VARCHAR(15)
);

create table servicehistory (
	servicehistory_id SERIAL primary key,
	car_id INTEGER,
	serviceticket_id INTEGER,
	serviceHistory_date DATE,
	description VARCHAR(500),
	foreign key(car_id) references car(car_id),
	foreign key(serviceticket_id) references serviceTicket(serviceticket_id)
);

create table part (
	part_id SERIAL primary key,
	part_name VARCHAR(150),
	part_cost NUMERIC(8,2)
);

create table serviceparts (
	serviceparts_id SERIAL primary key,
	serviceticket_id INTEGER,
	part_id INTEGER,
	quantity VARCHAR(10),
	foreign key(serviceticket_id) references serviceTicket(serviceticket_id),
	foreign key(part_id) references part(part_id)
);

create table servicemechanics (
	servicemechanics_id SERIAL primary key,
	serviceticket_id INTEGER,
	mechanic_id INTEGER,
	foreign key(serviceticket_id) references serviceTicket(serviceticket_id),
	foreign key(mechanic_id) references mechanic(mechanic_id)
);
