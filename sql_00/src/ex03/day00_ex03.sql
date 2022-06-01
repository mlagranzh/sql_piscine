SELECT DISTINCT person_id from person_visits
WHERE (visit_date BETWEEN '01-06-2022' AND '01-09-2022') OR pizzeria_id='2'
ORDER BY person_id DESC;