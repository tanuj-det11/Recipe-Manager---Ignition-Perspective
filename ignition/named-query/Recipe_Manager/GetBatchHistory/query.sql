SELECT 
    batch_id,
    batch_number AS batchId,
    recipe_name AS recipe,
    COALESCE(equipment_id, 'N/A') AS equipment,
    COALESCE(started_by, 'System') AS operator,
    DATE_FORMAT(start_time, '%Y-%m-%d %H:%i') AS started,
    CONCAT(TIMESTAMPDIFF(HOUR, start_time, COALESCE(end_time, NOW())), 'h') AS duration,
    status
FROM batches
ORDER BY start_time DESC
LIMIT 100