create or replace function add_salesperson(_salesperson_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _email VARCHAR)
returns void
as $MAIN$
begin 
	insert into salesperson(salesperson_id, first_name, last_name, email)
	values(_salesperson_id, _first_name, _last_name, _email);
end;
$MAIN$
language plpgsql;

select add_salesperson(1, 'Joshua', 'Johnson', 'jjohnson@dealership.com');
select add_salesperson(2, 'Mary', 'Joseph', 'mjoseph@dealership.com');

insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	phone)
	values (
	1,
	'Henry',
	'Hallowitz',
	'hh@mail.com',
	'555-555-5555');

insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	phone)
	values (
	2,
	'Cathy',
	'Thomas',
	'cathylikescats@makebelieve.com',
	'555-555-5555');
	
insert into car (
	car_id,
	vin,
	make,
	model,
	year_,
	new_used)
	values(
	1,
	'H57T309IJ8',
	'Toyota',
	'Tundra',
	'2008',
	'Used');
	
insert into car (
	car_id,
	vin,
	make,
	model,
	year_,
	new_used)
	values(
	2,
	'10JJ47UKW9',
	'Honda',
	'Accord',
	'2024',
	'New');

create or replace function add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _email VARCHAR, _phone VARCHAR)
returns void
as $MAIN$
begin 
	insert into mechanic(mechanic_id, first_name, last_name, email, phone)
	values(_mechanic_id, _first_name, _last_name, _email, _phone);
end;
$MAIN$
language plpgsql;

select add_mechanic(1, 'Johnny', 'Appleseed', 'jappleseed@mech.com', '555-555-5555');
select add_mechanic(2, 'Frank', 'Castanza', 'fcastanza@mech.com', '555-555-5555');

insert into invoice (
	invoice_id,
	invoice_date,
	salesperson_id,
	customer_id,
	car_id)
	values (
	1,
	'05/25/2024',
	1,
	2,
	2);

insert into invoice (
	invoice_id,
	invoice_date,
	salesperson_id,
	customer_id,
	car_id)
	values (
	2,
	'03/12/2021',
	2,
	1,
	1);

insert into part (
	part_id,
	part_name,
	part_cost)
	values (
	1,
	'Alternator',
	'250.00');
	
insert into part (
	part_id,
	part_name,
	part_cost)
	values (
	2,
	'Brake Pads',
	'400.50');

insert into serviceticket(
	serviceticket_id,
	serviceticket_date,
	customer_id,
	car_id,
	description)
	values (
	1,
	'01/25/2020',
	1,
	1,
	'Truck needed alternator');

insert into serviceticket(
	serviceticket_id,
	serviceticket_date,
	customer_id,
	car_id,
	description)
	values (
	2,
	'03/12/2021',
	1,
	1,
	'Truck needed new brake pads');

	
insert into servicehistory (
	servicehistory_id,
	car_id,
	serviceticket_id,
	servicehistory_date,
	description)
	values (
	1,
	1,
	1,
	'01/25/2020',
	'Needed new alternator');
	
insert into servicehistory (
	servicehistory_id,
	car_id,
	serviceticket_id,
	servicehistory_date,
	description)
	values (
	2,
	1,
	2,
	'03/12/2021',
	'Brake pads changed.');
	
insert into servicemechanics (
	servicemechanics_id,
	serviceticket_id,
	mechanic_id)
	values (
	1,
	1,
	1);

insert into servicemechanics (
	servicemechanics_id,
	serviceticket_id,
	mechanic_id)
	values (
	2,
	1,
	2);
	
insert into serviceparts (
	serviceparts_id,
	serviceticket_id,
	part_id,
	quantity)
	values (
	1,
	1,
	1,
	1);
	
insert into serviceparts (
	serviceparts_id,
	serviceticket_id,
	part_id,
	quantity)
	values (
	2,
	2,
	2,
	4);
	