-- Queries CRUD

INSERT INTO movieseries SET imdb_id = 'tt3749900', title = 'Gotham', genres = 'Action, Crime, Drama', premiere = '2014', status = 3;

UPDATE movieseries SET author = 'Bruno Heller', actors = 'Ben McKenzie, Donal Logue, David Mazouz, Sean Pertwe', country = 'USA', poster = 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI5MjAwNTg0NF5BMl5BanBnXkFtZTgwNDk1NTk4OTE@._V1_SX300.jpg', trailer = 'http://www.imdb.com/video/imdb/vi2325919257', rating = 8.0 , category = 'Serie', plot = 'In crime ridden Gotham City, Thomas and Martha Wayne are murdered before young Bruce Wayne. Although the idealistic Gotham City Police Dept. detective James Gordon, and his cynical partner, Harvey Bullock, seem to solve the case quickly, things are not so simple. Inspired by Bruce is traumatized desire for justice, Gordon vows to find it amid  corruption. Thus begins Gordon is lonely quest that would set him against his own comrades and the underworld with their own deadly rivalries and mysteries. In the coming wars, innocence will be lost and compromises will be made as some criminals will fall as casualties while others will rise as supervillains. All the while, young Bruce observes this war with a growing obsession that would one day drive him to seek his own revenge as The Batman.' WHERE imdb_id = 'tt3749900';

DELETE FROM movieseries WHERE imdb_id = 'tt3749900';

SELECT * FROM movieseries;

SELECT COUNT(*) FROM movieseries;

SELECT * FROM movieseries WHERE category = 'Serie';

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Serie';

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Serie' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country = 'USA' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country LIKE 'USA' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country LIKE '%USA' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country LIKE 'USA%' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE genres LIKE '%Drama%' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE status = 1 OR status = 2 ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE status = 3 OR status = 4 ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE status = 3 OR status = 4 OR status = 5 ORDER BY premiere;

-- multiples queries
SELECT * FROM movieseries AS ms INNER JOIN status AS s;

SELECT * FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id;

SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id
	ORDER BY ms.premiere DESC;

SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id
	WHERE s.status = 'Canceled' ORDER BY ms.premiere DESC;


SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id
	WHERE s.status = 'Canceled' OR s.status = 'Coming Soon' ORDER BY ms.premiere;

SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id
	WHERE s.status = 'Release' OR s.status = 'Finished' ORDER BY ms.premiere;

SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id
	WHERE s.status = 'Release' OR s.status = 'Finished' OR s.status = 'In Issue'
	 ORDER BY ms.premiere;

SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id
	WHERE (s.status = 'Release' OR s.status = 'Finished' OR s.status = 'In Issue')
	 AND ms.category = 'Serie' ORDER BY ms.premiere;

-- FullText Key query
SELECT * FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('stallone' IN BOOLEAN MODE);

SELECT * FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('comedy' IN BOOLEAN MODE);

SELECT * FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('action' IN BOOLEAN MODE);

SELECT title, category, country, genres, premiere, status, author, actors FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('stallone' IN BOOLEAN MODE);

SELECT ms.title, ms.category, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms
	INNER JOIN status AS s
	ON ms.status = s.status_id
	WHERE MATCH(ms.title, ms.author, ms.actors, ms.genres)
	AGAINST('drama' IN BOOLEAN MODE)
	ORDER BY ms.premiere;

-- Integridad referencial
SELECT COUNT(*) FROM movieseries WHERE status = 1;
SELECT COUNT(*) FROM movieseries WHERE status = 2;
SELECT COUNT(*) FROM movieseries WHERE status = 3;
SELECT COUNT(*) FROM movieseries WHERE status = 4;
SELECT COUNT(*) FROM movieseries WHERE status = 5;

INSERT INTO status SET status = 'Another status', status_id = 0;

SELECT * FROM status;

SELECT COUNT(*) FROM movieseries WHERE status = 6;

DELETE FROM movieseries WHERE status = 1;

/* Permite eliminar el registro con status_id 1 */
DELETE FROM status  WHERE status_id = 1;

DELETE FROM status  WHERE status_id = 2; 


SELECT ms.title, ms.status, s.status_id, s.status
	FROM movieseries AS ms
	INNER JOIN status AS s
	ON ms.status = s.status_id
	ORDER BY ms.title;

SELECT ms.title, ms.status, s.status_id, s.status
	FROM movieseries AS ms
	INNER JOIN status AS s
	ON ms.status = s.status_id
	ORDER BY s.status, ms.title;

UPDATE status
	SET status_id = 7, status = 'Premiered'
	WHERE status_id = 2;