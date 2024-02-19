SELECT DISTINCT name, rating
FROM pizzeria
     LEFT JOIN person_visits on pizzeria.id=pizzeria_id
WHERE pizzeria_id IS NULL