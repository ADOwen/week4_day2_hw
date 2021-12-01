create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	phone_number VARCHAR(11),
	email VARCHAR(25),
	rewards_member BOOLEAN,
	rewards_points INTEGER
);


create table concessions(
	concession_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key (customer_id) references customer(customer_id),
	product_name VARCHAR(10),
	price NUMERIC
);


create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(50),
	genre VARCHAR(10),
	run_time VARCHAR(4),
	show_times VARCHAR(50)
);

create table tickets (
	ticket_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	movie_name VARCHAR(25),
	foreign key(movie_name) references movies(movie_name),
	ticket_price numeric(4,2),
	ticket_type VARCHAR(6),
	show_times VARCHAR(13),
	foreign key (show_times) references movies(show_times),
	purchase_date TIMESTAMP default CURRENT_TIMESTAMP
);