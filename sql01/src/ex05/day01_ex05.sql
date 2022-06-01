SELECT person.id AS person_id, person.name AS person_name, age,
       gender, address, pizzeria.id AS pizzeria_id, pizzeria.name AS pizzeria_name,
       rating from person, pizzeria
ORDER BY person.id, pizzeria.id;