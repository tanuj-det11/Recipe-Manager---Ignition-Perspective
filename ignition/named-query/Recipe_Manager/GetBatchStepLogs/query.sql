SELECT 
    step_number AS step,
    step_name AS action,
    COALESCE(target_value, '-') AS target,
    COALESCE(actual_value, '-') AS actual,
    status
FROM batch_step_logs
WHERE batch_id = :batchId
ORDER BY step_number