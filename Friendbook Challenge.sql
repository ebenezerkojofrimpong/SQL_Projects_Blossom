-- create database --
create DATABASE FriendBook;

-- set default database
USE FriendBook;

CREATE TABLE persons (id INTEGER AUTO_INCREMENT PRIMARY KEY, fullname TEXT, age INTEGER);

INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (id INTEGER AUTO_INCREMENT PRIMARY KEY, person_id INTEGER,name TEXT);

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

CREATE table friends (id INTEGER AUTO_INCREMENT PRIMARY KEY, person1_id INTEGER,person2_id INTEGER);
INSERT INTO friends (person1_id, person2_id)
 VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
 VALUES (2, 3);
 
 
 -- queries --
 SELECT p.fullname, h.name FROM persons AS p
 JOIN hobbies AS h
 ON p.id = h.person_id;
 
 
SELECT p1.fullname AS person1, p2.fullname AS person2   FROM friends AS f
JOIN persons AS p1
ON f.person1_id = p1.id
JOIN persons AS p2
ON f.person2_id = p2.id; 
 
-- NAMES --
/*
Persis Yentumi
Emmanuella Adu
Joseph Boateng
Ebenezer Kojo Frimpong
*/
 