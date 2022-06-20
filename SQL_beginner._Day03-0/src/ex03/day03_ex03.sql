WITH ABRA AS (SELECT DISTINCT pizzeria_id from person_visits
JOIN person ON person.gender = 'female' AND person.id = person_visits.person_id
EXCEPT ALL
SELECT DISTINCT pizzeria_id from person_visits
JOIN person ON person.gender = 'male' AND person.id = person_visits.person_id
UNION ALL
SELECT DISTINCT pizzeria_id from person_visits
JOIN person ON person.gender = 'male' AND person.id = person_visits.person_id
EXCEPT ALL
SELECT DISTINCT pizzeria_id from person_visits
JOIN person ON person.gender = 'female' AND person.id = person_visits.person_id)
SELECT pizzeria.name from pizzeria JOIN ABRA ON ABRA.pizzeria_id = pizzeria.id
ORDER BY 1;