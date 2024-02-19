WITH NAMES AS (SELECT id FROM person WHERE name IN ('Denis', 'Anna'))

SELECT menu.pizza_name, pizzeria.name
FROM NAMES
     JOIN person_order ON person_order.person_id=names.id
     JOIN menu ON menu.id=person_order.menu_id
     JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
ORDER BY 1, 2