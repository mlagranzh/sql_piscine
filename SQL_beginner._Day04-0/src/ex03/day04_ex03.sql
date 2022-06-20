SELECT * FROM v_generated_dates
EXCEPT
SELECT visit_date from person_visits
WHERE visit_date BETWEEN DATE('2022-01-01') AND DATE('2022-01-31')
ORDER BY 1