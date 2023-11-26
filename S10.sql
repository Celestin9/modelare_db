CREATE TABLE delivery_driver (
	id integer primary key NOT NULL,
	phone_number integer NOT NULL,
	car varchar(30) NOT NULL,
	hours_worked integer NOT NULL,
	parcels_delivered integer NOT NULL,
	salary integer NULL
);