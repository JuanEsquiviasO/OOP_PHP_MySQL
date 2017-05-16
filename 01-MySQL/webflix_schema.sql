/* 
Webflix: Movie, series, Database App
http://mysql.conclase.net/curso/index.php
--- use only create the DB for first time, then delete or comment
*/
DROP DATABASE IF EXISTS webflix;

CREATE DATABASE IF NOT EXISTS webflix;

USE webflix;

-- Catalog Table
CREATE TABLE status(
	status_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	status VARCHAR(20) NOT NULL
);

-- Data Table
CREATE TABLE movieseries(
	imdb_id CHAR(9) PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	plot TEXT,
	author VARCHAR(100) DEFAULT 'Pending',
	actors VARCHAR(100) DEFAULT 'Pending',
	country VARCHAR(30) DEFAULT 'Unknown',
	premiere YEAR(4) NOT NULL,
	poster VARCHAR(150) DEFAULT 'no-poster.jpg',
	trailer VARCHAR(150) DEFAULT 'no-trailer.jpg',
	rating DECIMAL(2,1),
	genres VARCHAR(50) NOT NULL,
	status INTEGER UNSIGNED NOT NULL,
	category ENUM('Movie', 'Serie') NOT NULL,
	FULLTEXT KEY search(title, author, actors, genres),
	FOREIGN KEY (status) REFERENCES status(status_id)
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE users(
	user VARCHAR(15) PRIMARY KEY,
	email VARCHAR(80) UNIQUE NOT NULL,
	name VARCHAR(100) NOT NULL,
	birthday DATE NOT NULL,
	pass CHAR(32) NOT NULL,
	role ENUM('Admin', 'User') NOT NULL

);

/* 'Coming Soon', 'Release', 'In Issue', 'Finished', 'Canceled'  */