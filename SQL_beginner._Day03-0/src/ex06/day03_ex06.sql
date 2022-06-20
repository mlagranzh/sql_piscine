WITH RESULT AS
(
WITH ABRA AS 
(
  SELECT t1.pizza_name, t1.price, t1.pizzeria_id AS p_n_1, t2.pizzeria_id AS p_n_2 FROM menu t1, menu t2
WHERE t1.pizzeria_id > t2.pizzeria_id AND t1.price = t2.price AND t1.pizza_name = t2.pizza_name
) SELECT ABRA.pizza_name, ABRA.price, pizzeria.name, p_n_2 FROM ABRA 
JOIN pizzeria ON  pizzeria.id = p_n_1
) SELECT RESULT.pizza_name, RESULT.name, pizzeria.name, RESULT.price FROM RESULT 
JOIN pizzeria ON  pizzeria.id = p_n_2
ORDER BY 1;