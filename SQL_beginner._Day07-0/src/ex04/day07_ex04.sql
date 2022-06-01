SELECT person.name, count(person.name) AS count_visit from person_visits 
JOIN person ON person.id = person_id
GROUP BY person.name
HAVING count(person.name) > 3