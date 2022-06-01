SELECT person_id 
	from person_order
    WHERE order_date = '01-07-2022'
EXCEPT ALL
SELECT person_id
	from person_visits
    WHERE visit_date = '01-07-2022'