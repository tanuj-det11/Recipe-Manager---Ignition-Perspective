CREATE TABLE exsrh_recipe_steps(
	id serial,
	recipe_id int NOT NULL,
	recipe_step int NOT NULL,
	step_descrip varchar(255) NULL,
	recipe_function int NOT NULL,
	p1 float NULL,
	p2 float NULL,
	p3 float NULL,
	t1 varchar(255) NULL,
	pause_action int NULL,
	p1unit varchar(255) NULL,
	p2unit varchar(255) NULL,
	p3unit varchar(255) NULL,
	PRIMARY KEY (id));

CREATE TABLE exsrh_recipes(
	id serial,
	recipe_name varchar(255) NOT NULL,
	PRIMARY KEY (id));