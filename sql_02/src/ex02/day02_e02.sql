SELECT COALESCE(person_name, '-') AS person_name, visit_date, pizzeria_name
FROM
(
  SELECt person.NAME AS person_name, visit_date  AS visit_date, pizzeria.name  AS pizzeria_name FROM person
  LEFT JOIN person_visits
  ON (person.id = person_visits.person_id) AND (visit_date BETWEEN '01-01-2022' AND '01-03-2022')
  FULL JOIN pizzeria
  ON pizzeria.id = person_visits.pizzeria_id
) AS RES
ORDER BY person_name, visit_date, pizzeria_name;