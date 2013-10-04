CREATE TABLE projects (
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		title TEXT,
		category TEXT,
		goal INTEGER,
		start_date INTEGER,
		end_date DATE
		);

CREATE TABLE users (
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		name TEXT,
		age INTEGER
		);

CREATE TABLE pledges (
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		user_id INTEGER,
		project_id INTEGER,
		pledge_amount INTEGER
		);


INSERT INTO projects (title, category, goal, start_date, end_date) VALUES 
			("Book Club", "books", 200, 20120325, 20120420),
			("Cheese", "music", 50, 20120620, 20120725),
			("Fly Away", "music", 10, 20130420, 20130530),
			("Help Kids", "charity", 20, 20130610, 20130630),
			("Run Away", "books", 100, 20130120, 20130220),
			("Charity", "charity", 50, 20130130, 20130230),
			("Chastity Needs Charity", "charity", 250, 20130810, 20130910),
			("Read", "music", 100, 20130525, 20130620),
			("Yikes", "books", 30, 20120820, 20130530),
			("No", "charity", 10, 20130520, 20130816);

INSERT INTO users (name, age) VALUES
			("Ian", 25),
			("James", 20),
			("Logan", 27),
			("Soneja", 35),
			("Kyle", 27),
			("Greg", 20),
			("Theo", 33),
			("Dave", 28),
			("Emily", 23),
			("Steve", 23),
			("Patrick", 28),
			("John", 33),
			("Jerry", 38),
			("Jorry", 34),
			("Jenny", 45),
			("Julie", 29),
			("Jax", 18),
			("Jay", 15),
			("Jam", 14),
			("Jar", 10);

INSERT INTO pledges (user_id, project_id, pledge_amount) VALUES
			(1,1,200),
			(2,2,300),
			(3,3,100),
			(4,4,145),
			(5,5,32),
			(6,6,1),
			(7,7,78),
			(8,8,98),
			(9,9,55),
			(10,10,76),
			(11,1,87),
			(12,2,56),
			(13,3,20),
			(14,4,30),
			(15,5,40),
			(16,6,450),
			(17,7,213),
			(18,8,43),
			(19,9,23),
			(20,10,34),
			(1,1,55),
			(2,2,23),
			(3,3,23),
			(4,4,12),
			(5,5,54),
			(6,6,86),
			(7,7,65),
			(8,8,56),
			(9,9,56),
			(10,10,56);
		



