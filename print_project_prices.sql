SELECT
    p.id AS projectid,
    SUM(w.salary) * EXTRACT(MONTH FROM AGE(p.finish_date, p.start_date)) AS PRICE
FROM project p
JOIN project_worker pw ON p.id = pw.project_id
JOIN worker w ON pw.worker_id = w.id
GROUP BY p.id, p.start_date, p.finish_date
ORDER BY PRICE DESC;