WITH ABRA AS (SELECT id from menu
EXCEPT
SELECT menu_id from person_order)
SELECT menu.pizza_name, menu.price, pizzeria.name FROM menu, ABRA, pizzeria
WHERE menu.id = ABRA.id AND pizzeria.id = menu.pizzeria_id
ORDER BY 1,2