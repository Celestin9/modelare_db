CREATE TABLE IF NOT EXISTS teachers_roles(
	id serial primary key NOT NULL,
	name VARCHAR(255) UNIQUE NOT NULL
);