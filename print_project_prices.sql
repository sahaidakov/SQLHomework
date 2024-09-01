SELECT
    CASE
        WHEN p.id = 1 THEN 'Project A'
        WHEN p.id = 2 THEN 'Project B'
        WHEN p.id = 3 THEN 'Project C'
		WHEN p.id = 4 THEN 'Project D'
		WHEN p.id = 5 THEN 'Project E'
		WHEN p.id = 6 THEN 'Project F'
		WHEN p.id = 7 THEN 'Project G'
		WHEN p.id = 8 THEN 'Project H'
		WHEN p.id = 9 THEN 'Project I'
		WHEN p.id = 10 THEN 'Project J'

        ELSE 'Unknown Project'
    END AS NAME,
    SUM(w.salary) * EXTRACT(MONTH FROM AGE(p.finish_date, p.start_date)) AS PRICE
FROM project p
JOIN project_worker pw ON p.id = pw.project_id
JOIN worker w ON pw.worker_id = w.id
GROUP BY p.id, p.start_date, p.finish_date
ORDER BY PRICE DESC;