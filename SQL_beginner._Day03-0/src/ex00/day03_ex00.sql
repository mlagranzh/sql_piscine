select menu.pizza_name, menu.price, pizzeria.name, person_visits.visit_date from menu
JOIN person_visits ON menu.pizzeria_id = person_visits.pizzeria_id AND person_visits.person_id=3
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE price BETWEEN 800 AND 1000
ORDER by 1,2,3