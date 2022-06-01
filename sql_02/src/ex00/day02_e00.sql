SELECT name FROM
(
    SELECT * from pizzeria
    LEFT JOIN person_visits
    ON pizzeria.id = person_visits.pizzeria_id
) AS RESULT
WHERE pizzeria_id is NULL