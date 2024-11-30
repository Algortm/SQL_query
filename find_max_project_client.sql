WITH worker_max_project AS (
    SELECT worker.name AS name, COUNT(project_worker.project_id) AS max_count
    FROM project_worker
    JOIN worker ON worker.id = project_worker.worker_id
    GROUP BY worker.name
)
SELECT name, max_count 
    FROM worker_max_project 
    WHERE max_count = (SELECT MAX(max_count) FROM worker_max_project );