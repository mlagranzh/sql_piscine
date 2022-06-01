SELECT object_name FROM
(
    SELECT id AS object_id, pizza_name AS object_name
    FROM menu
    UNION ALL
    SELECT ID, name
    FROM person
    ORDER BY object_name
) AS RESULT
ORDER BY object_name COLLATE "C";