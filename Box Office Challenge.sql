-- Create Box Office Hits Database --
CREATE DATABASE box_office;

-- Create movies table --
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);


-- Querrying the movies table --
SELECT *
FROM movies;

-- Retrieving movies released in the year 2000 --
SELECT *
FROM movies
WHERE release_year >= 2000
ORDER BY release_year ASC;




