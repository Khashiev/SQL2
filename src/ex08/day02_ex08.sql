WITH ADDRESS
AS (SELECT *
    FROM person
    WHERE gender = 'male'
          AND address IN ( 'Moscow', 'Samara' )
   ),
     PIZZA
AS (SELECT *
    FROM menu
    WHERE pizza_name IN ( 'mushroom pizza', 'pepperoni pizza' )
   )
   
SELECT DISTINCT ADDRESS.name
FROM person_order AS pv
    JOIN PIZZA
        ON pv.menu_id = PIZZA.id
    JOIN ADDRESS
        ON pv.person_id = ADDRESS.id
ORDER BY 1 DESC