local S = mobs.intllib

mobs:register_mob("mobs_animal:swimming_duck", {
	type = "animal",
	hp_max = 25,
	hp_min = 15,
	collisionbox = {-0.35, -0.30, -0.35, 0.35, 0.7, 0.35},
	visual = "mesh",
	mesh = "swimming_duck.x",
	textures = {{"swimming_duck.png"}},
	visual_size = {x=1.5, y=1.5},
	view_range = 5,
	floats=1,
	walk_velocity = 1,
	run_velocity = 1,
	damage = 3,
	replace_rate = 5,
	replace_what = {
		{"group:grass", "air", 0},
		{"group:flower", "air", 0},
		{"group:flora", "air", 0},
		{"default:dirt_with_grass", "default:dirt", -1}
	},
	replace_with = "air",
	reach = 1.5,
	jump = false,
	jump_chance = 0,
	jump_height = 0,
	sounds = {
		random = "duck",
	},
	-- drops = {
			-- {name = "nssm:life_energy",
		-- chance = 1,
		-- min = 1,
		-- max = 2,},
		-- {name = "nssm:duck_legs",
		-- chance = 1,
		-- min = 1,
		-- max = 2,},
		-- {name = "nssm:duck_beak",
		-- chance = 5,
		-- min = 1,
		-- max = 1,},
		-- {name = "nssm:duck_feather",
		-- chance = 6,
		-- min = 1,
		-- max = 2,},
	-- },
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	group_attack=true,
	attack_animals=false,
	knock_back=4,
	blood_texture="nssm_blood.png",
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 25,
		speed_run = 35,
		stand_start = 1,
		stand_end = 60,
		walk_start = 80,
		walk_end = 120,
		run_start = 80,
		run_end = 120,
		punch_start = 140,
		punch_end = 160,
	}
})

mobs:spawn({
	name = "mobs_animal:swimming_duck",
	nodes = {"default:water_source"},
	neighbors = {"default:water_source"},
	min_light = 8,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 0,
	max_height = 100,
	day_toggle = true,
})


mobs:register_egg("mobs_animal:swimming_duck", S("Duck"), "default_grass.png", 1)


mobs:alias_mob("mobs:swimming_duck", "mobs_animal:swimming_duck") -- compatibility

