CREATE VIEW v_generated_dates
AS SELECT *
FROM (SELECT DATE('2022-01-01') + s.a AS dates FROM generate_series(0,30,1) AS s(a)) AS ABRA;

SELECT * FROM v_generated_dates;