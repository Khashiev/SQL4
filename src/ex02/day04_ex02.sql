CREATE VIEW v_generated_dates AS
SELECT gs::date AS generated_date
FROM GENERATE_SERIES('2022-01-01', '2022-01-31', interval '1 day') as gs
ORDER BY 1;