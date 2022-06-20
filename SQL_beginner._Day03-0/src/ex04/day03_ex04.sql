WITH RES AS 
(
(
(
WITH ABRA AS (SELECT menu_id from person_order
JOIN person ON person.gender = 'female' AND person.id = person_order.person_id)
SELECT menu.pizzeria_id from menu JOIN ABRA ON ABRA.menu_id = menu.id
)
EXCEPT
(
WITH ABRA AS (SELECT menu_id from person_order
JOIN person ON person.gender = 'male' AND person.id = person_order.person_id)
SELECT menu.pizzeria_id from menu JOIN ABRA ON ABRA.menu_id = menu.id
)
)
UNION
(
(
WITH ABRA AS (SELECT menu_id from person_order
JOIN person ON person.gender = 'male' AND person.id = person_order.person_id)
SELECT menu.pizzeria_id from menu JOIN ABRA ON ABRA.menu_id = menu.id
)
EXCEPT
(
WITH ABRA AS (SELECT menu_id from person_order
JOIN person ON person.gender = 'female' AND person.id = person_order.person_id)
SELECT menu.pizzeria_id from menu JOIN ABRA ON ABRA.menu_id = menu.id
)
)
)
SELECT name FROM pizzeria JOIN RES ON RES.pizzeria_id = pizzeria.id
ORDER BY 1;