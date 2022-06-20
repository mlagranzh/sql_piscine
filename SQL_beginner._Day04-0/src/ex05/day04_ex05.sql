CREATE VIEW v_price_with_discount
AS SELECT *
FROM 
(
SELECT person.name,  menu.pizza_name, menu.price, menu.price*0.9 AS discount_price from person_order
JOIN person ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
ORDER BY 1,2
) RESULT;

SELECT * from v_price_with_discount;