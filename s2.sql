CREATE TABLE IF NOT EXISTS materie (
	id serial primary key not null,
	name varchar(100) not null,
	hours smallint not null,
	day date not null
);

CREATE TABLE IF NOT EXISTS profesor (
	id serial primary key not null,
	name varchar(50) not null,
	classes integer not null,
	day date not null,
	hour time not null,
	classroom varchar(50) not null
	);
	
	CREATE TABLE IF NOT EXISTS materie_profesor (
	id serial primary key not null,
	profesor_id integer not null,
	materie_id integer not null,
	day_of_the_week date not null,
	foreign key(profesor_id) references profesor(id),
	foreign key(materie_id) references materie(id)
	);