CREATE TABLE IF NOT EXISTS account_roles2(
	id serial NOT NULL,
	name varchar(50) NOT NULL UNIQUE,
	creation_date date NOT NULL,
	primary key(id, name)
);

CREATE TABLE IF NOT EXISTS account_roles3(
	id integer NOT NULL,
	name varchar(50) NOT NULL,
	creation_date date NOT NULL,
	primary key(id, name)
);