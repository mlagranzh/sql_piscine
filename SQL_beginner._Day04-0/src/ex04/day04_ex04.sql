CREATE VIEW v_symmetric_union
AS SELECT *
FROM
(
WITH RESULT AS
(
(
SELECT * from person_visits
WHERE visit_date = '2022-01-02'
EXCEPT ALL
SELECT * from person_visits
WHERE visit_date = '2022-01-06'
)
UNION ALL
(
SELECT * from person_visits
WHERE visit_date = '2022-01-06'
EXCEPT ALL
SELECT * from person_visits
WHERE visit_date = '2022-01-02'
)
) SELECT person_id FROM RESULT
  ORDER BY 1
) AS ABRA;
SELECT * FROM v_symmetric_union;