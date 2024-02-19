WITH NAMES AS (SELECT * FROM person WHERE name = 'Dmitriy'),
	 DATES AS (SELECT * FROM person_visits WHERE visit_date = '2022-01-08'),
	 PRICE AS (SELECT * FROM menu WHERE price < 800)
	 
SELECT pizzeria.name FROM NAMES
	JOIN DATES ON DATES.person_id = NAMES.id
	JOIN PRICE ON PRICE.pizzeria_id = DATES.pizzeria_id
	JOIN pizzeria ON pizzeria.id = DATES.pizzeria_id