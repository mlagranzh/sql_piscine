INSERT INTO person_order 
VALUES ((SELECT MAX(id)+1 FROM person_order), 4, 20, '2022-02-24');
INSERT INTO person_order 
VALUES ((SELECT MAX(id)+1 FROM person_order), 6, 20, '2022-02-24');

SELECT * FROM person_order;
SELECT * FROM person;
SELECT * FROM menu;