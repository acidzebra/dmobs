

-- dmobs by D00Med

--mounts api

dofile(minetest.get_modpath("dmobs").."/api.lua")

--enable dragons(disable to remove tamed dragons and dragon bosses)
local dragons = true

mobs:register_mob("dmobs:panda", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	visual = "mesh",
	mesh = "panda.b3d",
	textures = {
		{"dmobs_panda.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 10,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "ethereal:bamboo"},
	replace_with = "air",
	follow = {"default:papyrus"},
	view_range = 14,
	animation = {
		speed_normal = 6,
		speed_run = 10,
		walk_start = 25,
		walk_end = 45,
		stand_start = 10,
		stand_end = 10,
		run_start = 25,
		run_end = 45,
		punch_start = 46,
		punch_end = 57,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:panda", {"default:dirt_with_grass","ethereal:bamboo_dirt"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:panda", "Panda", "default_papyrus.png", 1)

mobs:register_mob("dmobs:pig_evil", {
	type = "monster",
	passive = true,
	reach = 3,
	damage = 2,
	attack_type = "explode",
	explosion_radius = 2,
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "flying_pig.b3d",
	textures = {
		{"dmobs_flying_pig_mean.png"},
	},
   jump = true,
   fly = true,
   fall_speed = 0,
   stepheight = 1.5,
	blood_texture = "mobs_blood.png",
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	runaway = false,
	walk_velocity = 2,
	run_velocity = 3,
	run_chance = 20,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 2, min = 1, max = 1},
	},
	sounds = {
      random = "mobs_pig",
	  explode = "tnt_explode",
	},
	do_custom = function(self)
		if self.state == "attack" then
			self.fly = false
			self.fall_speed = -4
		end
	end,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"default:apple"},
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 1,
		walk_end = 20,
		stand_start = 1,
		stand_end = 20,
		run_start = 22,
		run_end = 28,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:pig_evil", {"default:pine_needles","default:leaves"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:pig_evil", "kamikaze Pig", "wool_pink.png", 1)

mobs:register_mob("dmobs:pig", {
	type = "animal",
	passive = true,
	reach = 4,
	damage = 2,
	attack_type = "explode",
	explosion_radius = 3,
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "flying_pig.b3d",
	textures = {
		{"dmobs_flying_pig.png"},
	},
   jump = true,
   fly = true,
   fall_speed = 0,
   stepheight = 1.5,
	blood_texture = "mobs_blood.png",
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	runaway = false,
	walk_velocity = 2,
	run_velocity = 3,
	run_chance = 20,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 2, min = 1, max = 1},
	},
	sounds = {
      random = "mobs_pig",
	  explode = "tnt_explode",
	},
	do_custom = function(self)
		if self.state == "attack" then
			self.fly = false
			self.fall_speed = -4
		end
	end,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"default:apple"},
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 1,
		walk_end = 20,
		stand_start = 1,
		stand_end = 20,
		run_start = 22,
		run_end = 28,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:pig", {"default:pine_needles","default:leaves"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:pig", "flying Pig", "wool_pink.png", 1)

mobs:register_mob("dmobs:gnorm", {
	type = "npc",
	can_dig = true,
	passive = true,
	reach = 1,
	damage = 1,
	attack_type = "dogfight",
	hp_min = 32,
	hp_max = 42,
	armor = 130,
	collisionbox = {-0.4, -0.3, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "gnorm.b3d",
	textures = {
		{"dmobs_gnorm.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	runaway = true,
	walk_velocity = 0.5,
	run_velocity = 4,
	jump = true,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 10,
	replace_what = {"default:apple", "default:stone", "default:stone_with_coal", "default:fence_wood"},
	replace_with = "air",
	follow = {"default:apple"},
	view_range = 14,
	animation = {
		speed_normal = 8,
		speed_run = 30,
		walk_start = 62,
		walk_end = 81,
		stand_start = 2,
		stand_end = 9,
		run_start = 62,
		run_end = 81,
		punch_start = 1,
		punch_end = 1,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:gnorm", {"default:dirt_with_grass","default:wood"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:gnorm", "Gnorm", "default_dirt.png", 1)

mobs:register_mob("dmobs:fox", {
	type = "monster",
	attacks_monsters = true,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 42,
	hp_max = 52,
	armor = 130,
	collisionbox = {-0.4, -0.6, -0.4, 0.3, 0.3, 0.3},
	runaway = true,
	pathfinding = true,
	visual = "mesh",
	mesh = "fox.b3d",
	textures = {
		{"dmobs_fox.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=1.5, y=1.5},
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 2.5,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 10,
	replace_what = {"farming:wheat_5", "default:fence_wood", "default:grass_5", "default:dirt_with_grass"},
	replace_with = "air",
	follow = {"mobs:meat_raw"},
	view_range = 14,
	animation = {
		speed_normal = 6,
		speed_run = 15,
		walk_start = 25,
		walk_end = 35,
		stand_start = 51,
		stand_end = 60,
		run_start = 1,
		run_end = 16,
		punch_start = 36,
		punch_end = 51,
	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:fox", {"default:dirt_with_grass","default:dirt"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:fox", "Fox", "wool_orange.png", 1)

mobs:register_mob("dmobs:hedgehog", {
	type = "animal",
	passive = true,
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.1, -0.1, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "hedgehog.b3d",
	textures = {
		{"dmobs_hedgehog.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = true,
	water_damage = 2,
	lava_damage = 2,
	light_damage = 0,
	view_range = 14,
	follow = {"farming:bread"},
	animation = {
		speed_normal = 5,
		speed_run = 10,
		walk_start = 1,
		walk_end = 10,
		stand_start = 1,
		stand_end = 10,
		run_start = 1,
		run_end = 10,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:hedgehog", {"default:dirt_with_grass","default:pine_needles"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:hedgehog", "Hedgehog", "wool_brown.png", 1)

mobs:register_mob("dmobs:owl", {
	type = "animal",
	passive = true,
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.3, -0.5, -0.3, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "owl.b3d",
	textures = {
		{"dmobs_owl.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = false,
	walk_velocity = 0,
	run_velocity = 0,
	jump = false,
	water_damage = 2,
	lava_damage = 2,
	light_damage = 0,
	view_range = 1,
	do_custom = function(self)
	local daytime = minetest.get_timeofday()*24000 
	if daytime <=6000 then
	self.object:set_properties({
						textures = {"dmobs_owl_awake.png"},
						mesh = "owl.b3d",
					})
	elseif daytime >=6000 then
	self.object:set_properties({
						textures = {"dmobs_owl.png"},
						mesh = "owl.b3d",
					})
	end
	end,
	animation = {
		speed_normal = 1,
		walk_start = 1,
		walk_end = 50,

	},
})

mobs:register_spawn("dmobs:owl", {"default:leaves","default:tree"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:owl", "Owl", "default_tree.png", 1)


mobs:register_mob("dmobs:elephant", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.9, -1.2, -0.9, 0.9, 0.9, 0.9},
	visual = "mesh",
	mesh = "elephant.b3d",
	textures = {
		{"dmobs_elephant.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2.5, y=2.5},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = false,
	water_damage = 2,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 10,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "ethereal:bamboo"},
	replace_with = "air",
	follow = {"farming:wheat"},
	view_range = 14,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	animation = {
		speed_normal = 5,
		speed_run = 10,
		walk_start = 3,
		walk_end = 19,
		stand_start = 20,
		stand_end = 30,
		run_start = 3,
		run_end = 19,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:elephant", {"default:dirt_with_dry_grass","default:desert_sand"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:elephant", "Elephant", "default_dry_grass.png", 1)

mobs:register_mob("dmobs:whale", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 52,
	hp_max = 82,
	armor = 230,
	collisionbox = {-0.9, -1.2, -0.9, 0.9, 0.9, 0.9},
	visual = "mesh",
	mesh = "whale.b3d",
	textures = {
		{"dmobs_whale.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2.5, y=2.5},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = false,	
	stepheight = 1.5,
	fall_damage = 0,
	fall_speed = -6,
	fly = true,
	fly_in = "default:water_source",
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"fishing:fish_cooked"},
	view_range = 14,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	sounds = {
      random = "whale_1",
      death = "whale_1",
      distance = 128,
	},
	animation = {
		speed_normal = 5,
		speed_run = 10,
		walk_start = 2,
		walk_end = 39,
		stand_start = 2,
		stand_end = 39,
		run_start = 2,
		run_end = 39,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:whale", {"default:water_source"}, 20, 10, 15000, -20, 1000)

mobs:register_egg("dmobs:whale", "Whale", "default_water_source.png", 1)

mobs:register_mob("dmobs:orc", {
	type = "monster",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, -1.3, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "orc.b3d",
	textures = {
		{"dmobs_orc.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=3, y=3},
	makes_footstep_sound = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 20,
		walk_start = 2,
		walk_end = 18,
		stand_start = 30,
		stand_end = 40,
		run_start = 2,
		run_end = 18,
		punch_start = 20,
		punch_end = 30,

	},
})

mobs:register_mob("dmobs:orc_redesign", {
	type = "monster",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, -0, -0.4, 0.4, 2, 0.4},
	visual = "mesh",
	mesh = "orc_redesign.b3d",
	textures = {
		{"dmobs_orc_redesign.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=1.5, y=1.5},
	makes_footstep_sound = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	view_range = 14,
	animation = {
		speed_normal = 12,
		speed_run = 20,
		walk_start = 20,
		walk_end = 40,
		stand_start = 60,
		stand_end = 80,
		run_start = 20,
		run_end = 40,
		punch_start = 1,
		punch_end = 15,

	},
})

if not dragons == true then
mobs:register_spawn("dmobs:orc", {"default:snow","default:snow_block", "default:desert_sand"}, 20, 10, 15000, 2, 31000)
else
mobs:register_spawn("dmobs:orc", {"default:snow","default:snow_block", "default:desert_sand"}, 20, 10, 350, 2, 31000)
end

mobs:register_egg("dmobs:orc_redesign", "Orc (redesign)", "default_desert_sand.png", 1)
mobs:register_egg("dmobs:orc", "Orc", "default_desert_sand.png", 1)

mobs:register_mob("dmobs:ogre", {
	type = "monster",
	passive = false,
	reach = 2,
	damage = 4,
	attack_type = "dogfight",
	hp_min = 22,
	hp_max = 32,
	armor = 130,
	collisionbox = {-0.6, -1.3, -0.6, 0.6, 1.5, 0.6},
	visual = "mesh",
	mesh = "ogre.b3d",
	textures = {
		{"dmobs_ogre.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=3.5, y=3.5},
	makes_footstep_sound = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	rotate = 180,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 20,
		walk_start = 3,
		walk_end = 38,
		stand_start = 40,
		stand_end = 70,
		run_start = 3,
		run_end = 38,
		punch_start = 70,
		punch_end = 100,

	},
})

if not dragons == true then
mobs:register_spawn("dmobs:ogre", {"default:snow","default:dirt_with_dry_grass", "default:desert_sand"}, 20, 10, 15000, 2, 31000)
else
mobs:register_spawn("dmobs:ogre", {"default:snow","default:dirt_with_dry_grass", "default:desert_sand"}, 20, 10, 350, 2, 31000)
end

mobs:register_egg("dmobs:ogre", "Ogre", "default_desert_sand.png", 1)



mobs:register_mob("dmobs:badger", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.3, -0.15, -0.3, 0.3, 0.4, 0.3},
	visual = "mesh",
	mesh = "badger.b3d",
	textures = {
		{"dmobs_badger.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 0.7,
	run_velocity = 1,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"mobs:meat_raw"},
	view_range = 14,
	animation = {
		speed_normal = 12,
		speed_run = 18,
		walk_start = 34,
		walk_end = 58,
		stand_start = 1,
		stand_end = 30,
		run_start = 34,
		run_end = 58,
		punch_start = 60,
		punch_end = 80,

	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})

mobs:register_spawn("dmobs:badger", {"default:dirt_with_grass","default:dirt"}, 20, 10, 15000, 2, 31000)

mobs:register_egg("dmobs:badger", "Badger", "default_obsidian.png", 1)

--dragon

if dragons == true then
dofile(minetest.get_modpath("dmobs").."/dragons.lua")
else
mobs:register_mob("dmobs:dragon", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 4,
   reach = 3,
   attack_type = "dogshoot",
   shoot_interval = 2.5,
	dogshoot_switch = 2,
	dogshoot_count = 0,
	dogshoot_count_max =5,
   arrow = "dmobs:fire",
   shoot_offset = 1,
   hp_min = 70,
   hp_max = 100,
   armor = 100,
	collisionbox = {-0.6, -1.2, -0.6, 0.6, 0.6, 0.6},
   visual = "mesh",
   mesh = "dragon.b3d",
   textures = {
      {"dmobs_dragon.png"},
      {"dmobs_dragon2.png"},
      {"dmobs_dragon3.png"},
      {"dmobs_dragon4.png"},
   },
   blood_texture = "mobs_blood.png",
   visual_size = {x=2, y=2},
   makes_footstep_sound = true,
	runaway = false,
	jump_chance = 30,
	walk_chance = 80,
	fall_speed = 0,
	pathfinding = true,
	fall_damage = 0,
   sounds = {
      shoot_attack = "mobs_fireball",
   },
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = true,
   drops = {
      {name = "mobs:lava_orb", chance = 1, min = 1, max = 1},
   },
   fall_speed = 0,
   stepheight = 10,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 1,
      walk_end = 22,
      stand_start = 1,
      stand_end = 22,
      run_start = 1,
      run_end = 22,
      punch_start = 22,
      punch_end = 47,
   },
	knock_back = 2,
})

--Thanks to Tenplus1
mobs:register_arrow("dmobs:fire", {
   visual = "sprite",
   visual_size = {x = 0.5, y = 0.5},
   textures = {"dmobs_fire.png"},
   velocity = 8,
   tail = 1, -- enable tail
   tail_texture = "fire_basic_flame.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 8},
      }, nil)
   end,
   
   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 8},
      }, nil)
   end,

   hit_node = function(self, pos, node)
      mobs:explosion(pos, 2, 1, 1)
   end,
})


mobs:spawn_specific("dmobs:dragon", {"air"}, {"default:stone"}, 20, 10, 300, 15000, 2, -100, 11000)
   
mobs:register_egg("dmobs:dragon", "Dragon", "default_apple.png", 1)
end