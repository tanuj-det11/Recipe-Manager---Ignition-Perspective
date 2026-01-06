SELECT 
    step_number,
    day_number AS day,
    step_name AS action,
    CASE 
        WHEN target_value IS NOT NULL THEN CONCAT(target_value, ' ', COALESCE(target_unit, ''))
        ELSE '-'
    END AS temperature,
    COALESCE(notes, '-') AS notes
FROM recipe_steps
WHERE recipe_id = :recipeId
ORDER BY step_number