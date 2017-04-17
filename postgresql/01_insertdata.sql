/*
  Insert testing data.
*/
-- insert book data
INSERT INTO Book VALUES (1002, 'Introduction to DBS');
INSERT INTO Book VALUES (1004, 'Algorithms');
INSERT INTO Book VALUES (1006, 'Operating Systems');
INSERT INTO Book VALUES (1011, 'Cassandra: The Definitive Guide');
INSERT INTO Book VALUES (1013, 'Graph Databases');
INSERT INTO Book VALUES (1015, 'Learning PostgreSQL');
-- insert reader data
INSERT INTO Reader VALUES (205, 'Peter');
INSERT INTO Reader VALUES (207, 'Laura');
INSERT INTO Reader VALUES (211, 'David');
INSERT INTO Reader VALUES (213, 'Paul');
INSERT INTO Reader VALUES (215, 'Ross');
-- insert booklending data
INSERT INTO BookLending VALUES (1002, 205, '2016-10-25');
INSERT INTO BookLending VALUES (1006, 205, '2016-10-27');
INSERT INTO BookLending VALUES (1004, 207, '2016-10-31');
INSERT INTO BookLending VALUES (1011, 211, '2017-03-25');
INSERT INTO BookLending VALUES (1013, 213, '2017-04-27');
INSERT INTO BookLending VALUES (1015, 213, '2017-04-30');