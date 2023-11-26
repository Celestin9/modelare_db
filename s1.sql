--ONE TO ONE--

CREATE TABLE IF NOT EXISTS users(
	id serial primary key NOT NULL,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(50) null
);

CREATE TABLE IF NOT EXISTS address(
	id serial primary key not null, -- coloana id joaca rol dublu de PK
	address varchar(500) not null,
	is_valid bool not null,
	foreign key (id) references users(id)
);

CREATE TABLE IF NOT EXISTS address(
	id serial primary key not null,
	users_id integer not null UNIQUE,
	address varchar(500) not null,
	is_valid bool not null,
	foreign key (users_id) references users(id)
);