WITH ABRA AS 
(
  (SELECT pizzeria.name, COUNT(pizzeria_id), 'visits' AS action_type FROM person_visits
JOIN pizzeria ON pizzeria.id=pizzeria_id
GROUP BY (pizzeria.name))
UNION
(SELECT pizzeria.name, COUNT(pizzeria_id), 'order' AS action_type FROM person_order
JOIN menu ON menu.id=menu_id
JOIN pizzeria ON menu.pizzeria_id=pizzeria.id
GROUP BY (pizzeria.name))
  )
SELECT name, SUM(count) FROM ABRA  GROUP BY (NAME)
ORDER BY 2 DESC