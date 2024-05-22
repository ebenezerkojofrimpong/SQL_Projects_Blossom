-- Creating persons table --
CREATE TABLE persons (id INTEGER AUTO_INCREMENT PRIMARY KEY, name TEXT, age INTEGER);
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Jerry Jay", 9);

-- Creating hobbies table --
CREATE table hobbies (id INTEGER AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT, person_id INTEGER, name TEXT);
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (5, "hunting");


-- Inserting into person table -- 
INSERT INTO persons (name, age) VALUES ("Ebenezer Kojo Frimpong", 20);

-- Inserting into persons and hobbies tables -- 
INSERT INTO hobbies (person_id, name) VALUES (6, "painting");


-- Querying --
SELECT *
FROM persons;


SELECT persons.name, hobbies.name
FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;


SELECT persons.name, hobbies.name
FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id
WHERE
	persons.name = 'Bobby McBobbyFace';
    

