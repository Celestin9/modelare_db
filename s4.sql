CREATE TABLE IF NOT EXISTS universitate(
	id serial primary key NOT NULL,
	classrooms integer NOT NULL,
	geometry varchar(100) not null,
	area DECIMAL not null
);

CREATE TABLE IF NOT EXISTS facultate(
	id serial primary key NOT NULL,
	universitate_id integer not null,
	staff integer NOT NULL,
	students integer NOT NULL,
	foreign key(universitate_id) references universitate(id)
);

CREATE TABLE IF NOT EXISTS books (
	id serial primary key not null,
	title varchar(100) not null,
	isbn varchar(10) not null,
	published_date date not null,
	price decimal null
);

CREATE TABLE IF NOT EXISTS users_books (
	id serial primary key not null,
	users_id integer not null,
	books_id integer not null,
	review text not null,
	review_date date not null,
	foreign key(users_id) references users(id),
	foreign key(books_id) references books(id)
);