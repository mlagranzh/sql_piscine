SELECT name, COUNT(name) FROM (SELECT person_id, person.name FROM person_visits
JOIN person ON person_id = person.id) AS RES
GROUP BY name
ORDER BY 2 DESC
limit 5