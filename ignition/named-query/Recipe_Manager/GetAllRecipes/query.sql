SELECT 
    recipe_id,
    recipe_name,
    description,
    total_days,
    step_count
FROM recipes
WHERE is_active = 1
ORDER BY recipe_name