-- Queries

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