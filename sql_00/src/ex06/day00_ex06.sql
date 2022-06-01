SELECT
    (
        SELECT name from PERSON
        WHERE PERSON.id = person_order.person_id
    )   AS RESULT,
    (
        SELECT
            CASE
                WHEN
                    person.name = 'Denis'
                THEN
                    'true'
                ELSE
                    'false'
                END
        FROM
            person
        WHERE 
            person.id = person_order.person_id
    ) 
AS BOOL
FROM person_order
WHERE (order_date='2022-01-07') and (menu_id=13 OR menu_id=14 OR menu_id=18);