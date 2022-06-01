SELECT
	(SELECT name from PERSON
     WHERE PERSON.id = person_order.person_id) AS RESULT
FROM person_order
WHERE (order_date='2022-01-07') and (menu_id=13 OR menu_id=14 OR menu_id=18);