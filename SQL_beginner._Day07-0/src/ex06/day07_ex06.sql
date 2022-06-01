SELECT pizzeria.name, COUNT(pizzeria.name),  ROUND(AVG(menu.price), 2),  MAX(menu.price), MIN(menu.price)
from person_order
JOIN menu ON menu.id=menu_id
JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
GROUP BY(pizzeria.name)
ORDER BY 1