SELECT person.name, menu.pizza_name, menu.price,
menu.price * (100 - discount)/100 AS discount_price
FROM person_order
JOIN person ON person.id = person_order.person_id
JOIN menu ON menu_id = menu.id
JOIN person_discounts ON person_discounts.person_id = person_order.person_id
							AND person_discounts.pizzeria_id = menu.pizzeria_id
ORDER BY 1,2 