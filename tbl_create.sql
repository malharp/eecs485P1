CREATE TABLE User(
	username varchar(20) PRIMARY KEY,
	firstname varchar(20),
	lastname varchar(20),
	password varchar(20),
	email varchar(40)   
);

CREATE TABLE Album(
	albumid int PRIMARY KEY,
	title varchar(50),
	created date,
	lastupdated date,
	username varchar(20),
	FOREIGN KEY(username) REFERENCES User(username)
);

CREATE TABLE Photo(
	picid varchar(40) PRIMARY KEY,
	format varchar(3),
	date date
);

CREATE TABLE Contain(
	albumid int,
	picid varchar(40),
	FOREIGN KEY(albumid) REFERENCES Album(albumid),
	FOREIGN KEY(picid) REFERENCES Photo(picid),
	caption varchar(255),
	sequencenum int
);

