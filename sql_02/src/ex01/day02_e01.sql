SELECT * from person_visits
WHERE person_id = 1 OR person_id=2;
LEFT JOIN person_visits
ON pizzeria.id = person_visits.pizzeria_id


SELECT DATE('2022-01-01') + s.a AS dates FROM generate_series(0,10,1) AS s(a);