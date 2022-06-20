WITH ABRA AS
(
(
SELECT pizzeria_id from person_visits
WHERE person_id = 2
)
EXCEPT
(
WITH ABRA AS(SELECT menu_id from person_order
WHERE person_id = 2)
SELECT pizzeria_id from menu JOIN ABRA ON menu.id = ABRA.menu_id
)
) SELECT name from pizzeria JOIN ABRA ON ABRA.pizzeria_id = pizzeria.id
ORDER BY 1;