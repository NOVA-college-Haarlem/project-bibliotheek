-- MySQL initialization matching docker-compose/.env settings
CREATE DATABASE IF NOT EXISTS bibliotheek
	CHARACTER SET utf8mb4
	COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON bibliotheek.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE bibliotheek;

CREATE TABLE IF NOT EXISTS boeken (
	id INT AUTO_INCREMENT PRIMARY KEY,
	titel VARCHAR(255) NOT NULL,
	auteur VARCHAR(255) NOT NULL,
	isbn VARCHAR(20) DEFAULT NULL,
	genre VARCHAR(100) DEFAULT NULL,
	publicatiejaar YEAR DEFAULT NULL,
	aantal_op_voorraad INT DEFAULT 0,
	aangemaakt_op TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	UNIQUE KEY uq_boeken_isbn (isbn)
);

INSERT IGNORE INTO boeken (titel, auteur, isbn, genre, publicatiejaar, aantal_op_voorraad) VALUES
	('De ontdekking van de hemel', 'Harry Mulisch', '9789029522551', 'Roman', 1992, 4),
	('Het diner', 'Herman Koch', '9789041425939', 'Roman', 2009, 6),
	('Bonita Avenue', 'Peter Buwalda', '9789023456781', 'Roman', 2010, 3),
	('Joe Speedboot', 'Tommy Wieringa', '9789046701236', 'Roman', 2005, 5),
	('Turks fruit', 'Jan Wolkers', '9789029511111', 'Roman', 1969, 2),
	('Nooit meer slapen', 'Willem Frederik Hermans', '9789029533333', 'Roman', 1966, 4),
	('De aanslag', 'Harry Mulisch', '9789029544444', 'Historisch', 1982, 7),
	('Max Havelaar', 'Multatuli', '9789029555555', 'Klassieker', 1860, 3),
	('Kruistocht in spijkerbroek', 'Thea Beckman', '9789029566666', 'Jeugd', 1973, 8),
	('Oorlogswinter', 'Jan Terlouw', '9789029577777', 'Jeugd', 1972, 5),
	('De brief voor de koning', 'Tonke Dragt', '9789029588888', 'Fantasy', 1962, 6),
	('Het gouden ei', 'Tim Krabbe', '9789029599999', 'Thriller', 1984, 4),
	('Publieke werken', 'Thomas Rosenboom', '9789029600000', 'Historisch', 1999, 3),
	('De donkere kamer van Damokles', 'W. F. Hermans', '9789029611111', 'Roman', 1958, 2),
	('Komt een vrouw bij de dokter', 'Kluun', '9789029622222', 'Roman', 2003, 5),
	('Het behouden huis', 'Willem Frederik Hermans', '9789029633333', 'Novelle', 1951, 2),
	('De kleine kapitein', 'Paul Biegel', '9789029644444', 'Jeugd', 1970, 7),
	('Bint', 'Ferdinand Bordewijk', '9789029655555', 'Klassieker', 1934, 3),
	('Karakter', 'Ferdinand Bordewijk', '9789029666666', 'Klassieker', 1938, 4),
	('Hex', 'Thomas Olde Heuvelt', '9789029677777', 'Horror', 2013, 6);
