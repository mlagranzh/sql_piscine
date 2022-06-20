CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats
AS SELECT * FROM
(
with    visited_pizzerias (pizzeria_name) as (
    select
        pizzeria.name
    from person_visits
    join person on person.id = person_id
    join pizzeria on pizzeria.id = pizzeria_id
    where visit_date = '2022-01-08' and person.name = 'Dmitriy' )
select * from visited_pizzerias
intersect
select pizzeria_name from visited_pizzerias
join pizzeria on pizzeria.name = pizzeria_name
join menu on pizzeria.id = pizzeria_id
where price < 800
) AS RESULT;

SELECT * from mv_dmitriy_visits_and_eats;