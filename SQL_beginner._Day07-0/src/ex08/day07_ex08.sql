SELECT person.address, pizzeria.name, COUNT(person.address) from person_visits
JOIN person ON person_id=person.id
JOIN pizzeria ON pizzeria.id=pizzeria_id
GROUP BY (person.address, pizzeria.name)
ORDER BY 1,2