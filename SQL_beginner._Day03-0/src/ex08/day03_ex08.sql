INSERT INTO menu 
VALUES ((SELECT MAX(id)+1 FROM menu), (SELECT ID FROM pizzeria WHERE name = 'Dominos'),
                                       'sicilian pizza', 900);