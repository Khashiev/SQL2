WITH dates AS
  (SELECT gs::date AS missing_date
   FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS gs),
     visits AS
  (SELECT visit_date
   FROM person_visits
   WHERE person_id = 1
     OR person_id = 2 )
	 
SELECT dates.missing_date
FROM dates
LEFT JOIN visits ON dates.missing_date = visits.visit_date
WHERE visit_date IS NULL
ORDER BY 1;