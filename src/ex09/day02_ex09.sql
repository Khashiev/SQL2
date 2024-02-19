WITH WOMEN
AS (SELECT *
    FROM person
        JOIN person_order
            ON person_order.person_id = person.id
    WHERE person.gender = 'female'
   )
   
SELECT WOMEN.name
FROM WOMEN
    JOIN menu
        ON menu.id = WOMEN.menu_id
WHERE menu.pizza_name = 'pepperoni pizza'
INTERSECT
SELECT WOMEN.name
FROM WOMEN
    JOIN menu
        ON menu.id = WOMEN.menu_id
WHERE menu.pizza_name = 'cheese pizza'
ORDER BY 1