CREATE TABLE Person(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	name varchar(100) NOT NULL,
	age int
);

CREATE TABLE Passport(
	person_id int PRIMARY KEY REFERENCES Person(id) ON DELETE CASCADE,
	passport_number int NOT NULL
);