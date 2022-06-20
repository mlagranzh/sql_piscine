INSERT INTO person_visits 
VALUES ((SELECT MAX(id)+1 FROM person_visits), 4,
        (SELECT ID FROM pizzeria WHERE name = 'Dominos'), '2022-02-24');
INSERT INTO person_visits 
VALUES ((SELECT MAX(id)+1 FROM person_visits), 6,
        (SELECT ID FROM pizzeria WHERE name = 'Dominos'), '2022-02-24');

