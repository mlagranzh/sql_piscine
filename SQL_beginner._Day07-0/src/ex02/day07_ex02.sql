(SELECT pizzeria.name, COUNT(pizzeria_id), 'visits' AS action_type FROM person_visits
JOIN pizzeria ON pizzeria.id=pizzeria_id
GROUP BY (pizzeria.name)
LIMIT 3)
UNION
(SELECT pizzeria.name, COUNT(pizzeria_id), 'order' AS action_type FROM person_order
JOIN menu ON menu.id=menu_id
JOIN pizzeria ON menu.pizzeria_id=pizzeria.id
GROUP BY (pizzeria.name)
LIMIT 3)
ORDER BY 3 ASC, 2 DESC