local S = mobs.intllib

mobs:register_mob("mobs_animal:duck", {
	type = "animal",
	hp_max = 5,
	hp_min = 3,
	collisionbox = {-0.3, 0.00, -0.3, 0.3, 0.95, 0.3},
	visual = "mesh",
	mesh = "duck.x",
	textures = {{"duck.png"}},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 5,
	replace_rate = 6,
	replace_what = {
		{"group:grass", "air", 0},
		{"group:flower", "air", 0},
		{"group:flora", "air", 0},
		{"default:dirt_with_grass", "default:dirt", -1}
	},
	replace_with = "air",
	walk_velocity = 1,
	reach =1.5,
	run_velocity = 2,
	damage = 2,
	jump = true,
	sounds = {
		random = "duck",
	},
	-- drops = {
		-- {name = "nssm:life_energy",
		-- chance = 1,
		-- min = 1,
		-- max = 1,},
		-- {name = "nssm:duck_legs",
		-- chance = 1,
		-- min = 1,
		-- max = 2,},
		-- {name = "nssm:duck_beak",
		-- chance = 5,
		-- min = 1,
		-- max = 1,},
		-- {name = "nssm:duck_feather",
		-- chance = 3,
		-- min = 2,
		-- max = 4,},
	-- },
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	fear_height = 3,
	floats = 1,
	lava_damage = 5,
	light_damage = 0,
	group_attack=true,
	attack_animals=false,
	knock_back=5,
	blood_texture="nssm_blood.png",
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 25,
		stand_start = 1,
		stand_end = 20,
		walk_start = 20,
		walk_end = 40,
		run_start = 20,
		run_end = 40,
		punch_start = 40,
		punch_end = 60,
	}
	--pathfinding = 1,
})


mobs:spawn({
	name = "mobs_animal:duck",
	nodes = {"default:dirt_with_grass", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 10,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 5,
	max_height = 150,
	day_toggle = true,
})


mobs:register_egg("mobs_animal:duck", S("Duck"), "default_grass.png", 1)


mobs:alias_mob("mobs:duck", "mobs_animal:duck") -- compatibility
