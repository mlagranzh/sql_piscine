INSERT INTO person_visits 
VALUES ((SELECT MAX(id)+1 FROM person_visits), (SELECT ID from person WHERE name = 'Dmitriy'),

(
 (
  SELECT id from pizzeria
  EXCEPT
  SELECT pizzeria_id from person_visits
  WHERE person_id = 9
)
INTERSECT
(
  SELECT pizzeria_id from menu
  WHERE price < 800
)
)
, '2022-01-08');
                                                  
SELECT * FROM person_visits;

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT * from mv_dmitriy_visits_and_eats;