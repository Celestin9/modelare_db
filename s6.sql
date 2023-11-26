CREATE TABLE IF NOT EXISTS judete(
	id serial NOT NULL,
	name varchar(50) NOT NULL UNIQUE,
	county_id char(3) NOT NULL,
	county_creation date NULL,
	parises smallint NOT NULL,
	primary key(id)
	);
	
CREATE TABLE IF NOT EXISTS car_brands(
	id integer NOT NULL,
	naming varchar(50) NOT NULL UNIQUE,
	model varchar(50) NOT NULL,
	year date NOT NULL,
	colour char(20) NOT NULL,
	primary key(id, naming)
	);
	
	CREATE TABLE IF NOT EXISTS clothing(
	id serial NOT NULL,
	name varchar(50) NOT NULL UNIQUE,
	women bool NOT NULL,
	men bool NOT NULL,
	season char(10) NOT NULL,
	colour char(20) NOT NULL,
	primary key(id, name)
	);
	
	CREATE TABLE IF NOT EXISTS football_team(
	id serial NOT NULL,
	name varchar(150) NOT NULL UNIQUE,
	country varchar(50) NOT NULL,
	stadium_name varchar(250) NOT NULL,
 	year_of_foundation date NOT NULL,
	supporters smallint NOT NULL,
	primary key(id)
	);