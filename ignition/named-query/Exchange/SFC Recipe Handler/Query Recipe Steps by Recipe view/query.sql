Select  id, recipe_id ,recipe_step,step_descrip,recipe_function,p1,p1unit,	p2,	p2unit,	p3,	p3unit,	t1,	pause_action
From  exsrh_recipe_steps 
Where  recipe_id =:recipeId;