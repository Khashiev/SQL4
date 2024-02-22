INSERT INTO person_visits
VALUES ((SELECT MAX(ID) + 1 FROM person_visits), 
		(SELECT id FROM person WHERE person.name = 'Dmitriy'),
        (SELECT pizzeria.id FROM pizzeria
			JOIN menu ON pizzeria.id = menu.pizzeria_id
		WHERE price < 800 AND name <> 'Papa Johns'
		LIMIT 1),
		'2022-01-08');
		
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
