SELECT order_date AS order_date, CONCAT(name, ' (age:',age, ')') AS person_information
FROM person_order, person
WHERE person_order.person_id = person.id
ORDER BY order_date ASC, person_information ASC;