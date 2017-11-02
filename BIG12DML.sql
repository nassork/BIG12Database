USE BIG12BB;

INSERT INTO ARENA (ARENANAME, CAPACITY) VALUES
	('Ferrell Center', 10347),
	('Hilton Coliseum', 14376),
	('Allen Fieldhouse', 16300),
	('Bramlage Coliseum', 12528),
	('Lloyd Noble Center', 11528),
	('Gallagher-Iba Arena', 13611),
	('Frank Erwin Center', 	16734),
	('Schollmaier Arena', 8500),
	('United Supermarkets Arena', 15020),
	('WVU Coliseum', 14000);

INSERT INTO LOCATION (CITY, STATES, ARENAID) VALUES
	('Waco', 'Texas', 11),
	('Ames', 'Iowa', 12),
	('Lawrence', 'Kansas', 13),
	('Manhattan', 'Kansas', 14),
	('Norman', 'Oklahoma', 15),
	('Stillwater', 'Oklahoma', 16),
	('Austino', 'Texas', 17),
	('Fort Worth', 'Texas', 18),
	('Lubbock', 'Texas', 19),
	('Morgantown', 'West Virginia', 20);

INSERT INTO COACH (COACHNAME, SALARY) VALUES
	('Scott Drew', 3000000),
	('Steve Prohm', 2000000),
	('Bill Sel', 7000000),
	('Bruce Weber', 1000000),
	('Lon Kruger', 3000000),
	('Mike Boynton, Jr.', 500000),
	('Jamie Dixon', 150000),
	('Shaka Smart', 250000),
	('Chris Beard', 100000),
	('Bob Huggins', 5000000);


INSERT INTO TEAM (TEAMNAME, SCHOOL, LOCATIONID, COACHID) VALUES
	('Bears', 'Baylor University', 10, 1),
	('Cyclones', 'Iowa State University', 11, 2),
	('Jayhawks', 'University of Kansas', 12, 3),
	('Wildcats', 'Kansas State University', 13, 4),
	('Sooners', 'University of Oklahoma', 14, 5),
	('Cowboys', 'Oklahoma State University', 15, 6),
	('Horned Frogs', 'Texas Christian University', 16, 7),
	('Longhorns', 'University of Texas at Austin', 17, 8),
	('Red Raiders', 'Texas Tech University', 18, 9),
	('Mountaineers', 'West Virginia University', 19, 10);

INSERT INTO NETWORK (NETWORKNAME) VALUES
	('ESPN'),
	('ESPN2'),
	('ESPNU'),
	('ABC'),
	('FOX1');

INSERT INTO PLAYER (PLAYERNAME, PLAYERYEAR, TEAMID) VALUES
	('Jonathan Davis', 2, 20),('Mark Vital', 3, 20),('Jake Lindsey', 1, 20),('Tyson Jolly', 2, 20),('Al Freeman', 4, 20), --baylor
	('Solomon Young', 2, 21),('Terrence Lewis', 1, 21),('Michael Jacobson', 2, 21),('Donovan Jackson', 4, 21),('Jeff Beverly', 3, 21), --ISU
	('Billy Preston', 1, 22),('Devonte Graham', 4, 22),('Malik Newman', 2, 22),('Lagerald Vick', 3, 22),('Mitch Lightfoot', 2, 22), --KU
	('Dean Wade', 1, 23),('Makol Mawien', 4, 23),('	Levi Stockard III', 2, 23),('Barry Brown', 3, 23),('Mawdo Sallah', 2, 23), --KSU
	('Chris Giles', 1, 24),('Christain James', 4, 24),('Rashard Odomes', 2, 24),('Trae Young', 1, 24),('Read Streller', 2, 24), --OU
	('Lucas N Guessan', 4, 25),('Mitchell Solomon', 5, 25),('Kendall Smith', 2, 25),('Nassor Khalfani', 5, 25),('Bradon Averette', 3, 25), --OSU
	('Jaylen Fisher', 2, 26),('Lat Mayen', 4, 26),('Dalton Dry', 1, 26),('Shawn Olden', 3, 26),('Lat Mayen', 2, 26), --TCU
	('James Banks', 2, 27),('Kerwin Roach II', 3, 27),('Matt Coleman', 2, 27),('Mohamed Bamba', 1, 27),('Ryan McClurg', 2, 27), --Texas
	('Brandone Francis', 2, 28),('Keenan Evans', 4, 28),('Malik Newman', 1, 28),('Andrew Sorrells', 3, 28),('Malik Ondigo', 3, 28), --Tech
	('Jevon Carter', 4, 29),('Daxter Miles', 4, 29),('Lamont West', 2, 29),('Esa Ahmad', 3, 29),('Sagaba Konate', 2, 29); --WVU


INSERT INTO MATCHUP (HOMETEAMID, AWAYTEAMID, MATCHUPDATE, MATCHUPTIME, NETWORKID) VALUES
	(20, 26, '12/30/2017', '08:00', 1),(20, 29, '12/10/2017', '09:00', 3),(20, 23, '12/02/2017', '03:00', 5), -- baylor
	(21, 24, '12/29/2017', '06:30', 2),(21, 23, '12/11/2017', '02:30', 1),(21, 24, '12/04/2017', '04:00', 4), -- iowa
	(22, 29, '12/28/2017', '04:00', 2),(22, 27, '12/12/2017', '07:00', 2),(22, 25, '12/11/2017', '05:30', 4), -- kansas
	(23, 23, '12/21/2017', '02:00', 5),(23, 25, '12/13/2017', '03:00', 4),(23, 24, '12/19/2017', '06:00', 3), -- ksu
	(24, 20, '12/22/2017', '08:30', 4),(24, 29, '12/14/2017', '05:00', 3),(24, 22, '12/30/2017', '07:00', 2), -- ou
	(25, 26, '12/22/2017', '10:00', 3),(25, 21, '12/15/2017', '08:30', 4),(25, 27, '12/25/2017', '08:00', 1), -- osu
	(26, 28, '12/23/2017', '12:00', 2),(26, 20, '12/16/2017', '11:00', 1),(26, 29, '12/17/2017', '03:30', 5), -- tcu
	(27, 26, '12/24/2017', '04:00', 1),(27, 22, '12/17/2017', '10:00', 5),(27, 22, '12/19/2017', '02:00', 3), -- texas
	(28, 21, '12/25/2017', '07:00', 3),(28, 23, '12/18/2017', '09:30', 2),(28, 20, '12/10/2017', '12:30', 4), -- ttu
	(29, 20, '12/26/2017', '08:30', 2),(29, 24, '12/19/2017', '08:00', 1),(29, 21, '12/09/2017', '01:00', 1); -- wvu







	







	



