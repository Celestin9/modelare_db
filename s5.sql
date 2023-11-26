CREATE TABLE IF NOT EXISTS country(
	id serial primary key NOT NULL,
	indicativ char(3) NOT NULL,
	geometry varchar(100) not null,
	area DECIMAL not null
);

CREATE TABLE IF NOT EXISTS county(
	id serial primary key NOT NULL,
	country_id integer not null,
	area decimal not null,
	siruta integer not null,
	geometry varchar(100) not null default 'POLYGON',
	foreign key(country_id) references country(id)
);