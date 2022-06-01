INSERT
    INTO person_discounts
WITH RES AS (
  SELECT person_id, pizzeria_id, COUnt(*) FROM (SELECT person_id, menu.pizzeria_id from person_order
JOIN menu ON menu.id = menu_id) AS foo
GROUP BY person_id, pizzeria_id
ORDER BY 1,2
) SELECT ROW_NUMBER() OVER (Order by 1) AS ID, res.person_id, res.pizzeria_id,
CASE
	WHEN res.count = 1
    THEN 10.5 
	WHEN res.count = 2
    THEN 22
    ELSE 30
END AS discount
FROM RES;
SELECT * FROM person_discounts 