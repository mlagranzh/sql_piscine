SELECT person_id, COUNT(pizzeria_id) FROM person_visits
GROUP BY person_id
ORDER BY 2 DESC