CREATE TABLE games (
	id INT PRIMARY KEY,
	Year INT,
	City TEXT
);

CREATE TABLE events (
	id INT PRIMARY KEY,
	Sport TEXT,
	Event TEXT,
	Season TEXT
);

CREATE TABLE athlete_info (
	id INT PRIMARY KEY,
	name TEXT,
	sex TEXT
);

CREATE TABLE athlete_event (
	athlete_id INT,
	FOREIGN KEY (athlete_id) REFERENCES athlete_info(id),
	age INT,
	height INT,
	weight FLOAT,
	noc_code TEXT,
	event TEXT,
	games_id INT,
	FOREIGN KEY (games_id) REFERENCES games(id),
	medal TEXT
);

CREATE TABLE income_groups (
	country_code TEXT,
	region TEXT,
	income TEXT
);

CREATE TABLE population (
	population_id INT,
	country_code TEXT,
	pop_year INT,
	population INT
);

CREATE TABLE country (
	country_code TEXT,
	country_name TEXT,
	noc_code TEXT,
	team TEXT
);








