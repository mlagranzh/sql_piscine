SELECT pizza_name from menu
INTERSECT
SELECT pizza_name from menu
ORDER BY pizza_name DESC;