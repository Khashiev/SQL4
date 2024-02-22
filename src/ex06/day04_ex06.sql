CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS 
SELECT pz.name from pizzeria pz
	JOIN person_visits pv ON pv.pizzeria_id = pz.id
	JOIN person p ON p.id = pv.person_id
	JOIN menu m ON m.pizzeria_id = pz.id
WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800;
