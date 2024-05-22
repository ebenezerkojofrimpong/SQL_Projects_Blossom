-- Create todo_list_stats database --
CREATE DATABASE todo_list_stats;

-- Create todo_list table --
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on BA", 30);


-- Insert another item into todo_list --
INSERT INTO todo_list VALUES (4, "Cleaning the house", 25);

-- Querying todo_list table --
SELECT 
	SUM(minutes) AS total_minutes
FROM todo_list;


