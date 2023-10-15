CREATE DATABASE Notflix;
USE Notflix;

CREATE TABLE titles ( id INTEGER NOT NULL, title VARCHAR (55) NOT NULL, year INTEGER NOT NULL,
 CONSTRAINT PK_titles PRIMARY KEY (id));
CREATE TABLE actors ( id INTEGER NOT NULL, name VARCHAR (55) NOT NULL, gender VARCHAR (55) NOT NULL,
 CONSTRAINT PK_actors PRIMARY KEY (id));
CREATE TABLE ratings ( id INTEGER NOT NULL, title_id INTEGER NOT NULL, rating INTEGER NOT NULL CHECK( rating BETWEEN 1 AND 5), 
CONSTRAINT PK_ratings PRIMARY KEY (id), FOREIGN KEY (title_id) REFERENCES titles(id));
CREATE TABLE producers (id INTEGER NOT NULL, name VARCHAR (55) NOT NULL,
 CONSTRAINT PK_producers PRIMARY KEY (id));
CREATE TABLE title_producers (title_id INTEGER NOT NULL, producer_id INTEGER NOT NULL,
 FOREIGN KEY (title_id) REFERENCES titles(id), FOREIGN KEY (producer_id) REFERENCES producers(id));
 
 INSERT INTO titles (id, title, year) VALUES (1, 'Becoming Jane', 2007);
 INSERT INTO titles (id, title, year) VALUES (2, 'Zoolander', 2001);
 INSERT INTO titles (id, title, year) VALUES (3, 'The host', 2013);
 INSERT INTO titles (id, title, year) VALUES (4, 'The proposal', 2009);
 INSERT INTO titles (id, title, year) VALUES (5, 'The greatest showman', 2017 );
 INSERT INTO titles (id, title, year) VALUES (6, 'A quiet place', 2018);
 INSERT INTO titles (id, title, year) VALUES (7, 'Mean girls', 2004);
 INSERT INTO titles (id, title, year) VALUES (8, 'Save the last dance', 2001);
 INSERT INTO titles (id, title, year) VALUES (9, 'Croodarna', 2013); 
 
 INSERT INTO actors (id, name, gender) VALUES (11, 'Anne Hathaway', 'Female');
 INSERT INTO actors (id, name, gender) VALUES (12, 'Ben Stiller', 'Male');
 INSERT INTO actors (id, name, gender) VALUES (13, 'Saoirse Ronan', 'Female');
 INSERT INTO actors (id, name, gender) VALUES (14, 'Sandra Bullock', 'Female');
 INSERT INTO actors (id, name, gender) VALUES (15, 'Hugh Jackman', 'Male');
 INSERT INTO actors (id, name, gender) VALUES (16, 'John Krasinski', 'Male');
 INSERT INTO actors (id, name, gender) VALUES (17, 'Lindsay Lohan', 'Female');
 INSERT INTO actors (id, name, gender) VALUES (18, 'Julia Stiles', 'Female');
 INSERT INTO actors (id, name, gender) VALUES (19, 'Nicolas Cage', 'Male');
 
 INSERT INTO ratings (id, title_id, rating) VALUES (21, 1, 4);
 INSERT INTO ratings (id, title_id, rating) VALUES (22, 2, 4);
 INSERT INTO ratings (id, title_id, rating) VALUES (23, 3, 4);
 INSERT INTO ratings (id, title_id, rating) VALUES (24, 4, 5);
 INSERT INTO ratings (id, title_id, rating) VALUES (25, 5, 4);
 INSERT INTO ratings (id, title_id, rating) VALUES (26, 6, 5);
 INSERT INTO ratings (id, title_id, rating) VALUES (27, 7, 3);
 INSERT INTO ratings (id, title_id, rating) VALUES (28, 8, 3);
 INSERT INTO ratings (id, title_id, rating) VALUES (29, 9, 3);
 
 INSERT INTO producers (id, name) VALUES (31, 'Graham Broadbent');
 INSERT INTO producers (id, name) VALUES (32, 'Ben Stiller');
 INSERT INTO producers (id, name) VALUES (33, 'Nick Wechler');
 INSERT INTO producers (id, name) VALUES (34, 'David Hoberman');
 INSERT INTO producers (id, name) VALUES (35, 'Hugh Jackman');
 INSERT INTO producers (id, name) VALUES (36, 'Michael Bay');
 INSERT INTO producers (id, name) VALUES (37, 'Lorne Michaels');
 INSERT INTO producers (id, name) VALUES (38, 'David Madden');
 INSERT INTO producers (id, name) VALUES (39, 'Chris Sanders');
 
 INSERT INTO title_producers ( title_id, producer_id) VALUES (1, 31);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (2, 32);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (3, 33); 
 INSERT INTO title_producers ( title_id, producer_id) VALUES (4, 34);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (5, 35);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (6, 36);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (7, 37);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (8, 38);
 INSERT INTO title_producers ( title_id, producer_id) VALUES (9, 39);