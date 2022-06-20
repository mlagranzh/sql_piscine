SELECT id from menu
EXCEPT
SELECT menu_id from person_order
ORDER By 1