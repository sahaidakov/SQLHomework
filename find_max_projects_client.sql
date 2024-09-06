WITH client_project_count AS (
    SELECT t1.name, COUNT(t2.id) AS project_count
    FROM project t2
    JOIN client t1 ON t2.client_id = t1.id
    GROUP BY t1.name
)
SELECT name, project_count
FROM client_project_count
WHERE project_count = (
    SELECT MAX(project_count)
    FROM client_project_count
);