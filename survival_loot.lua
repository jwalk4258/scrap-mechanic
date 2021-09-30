
dofile( "$SURVIVAL_DATA/Scripts/game/survival_shapes.lua" )
dofile( "$SURVIVAL_DATA/Scripts/util.lua" )
dofile( "$SURVIVAL_DATA/Scripts/game/survival_constants.lua" )

-- A chance of 100 makes the item 100 times more likely than with a chance of 1

local random_loot = {
	{ uuid = obj_plantables_carrot, 		chance = 15,	quantity = 1 },
	{ uuid = obj_plantables_redbeet, 		chance = 15,	quantity = 1 },
	{ uuid = obj_plantables_tomato, 		chance = 15,	quantity = 1 },
	{ uuid = obj_plantables_banana, 		chance = 10,	quantity = 1 },
	{ uuid = obj_plantables_blueberry, 		chance = 10,	quantity = 1 },
	{ uuid = obj_plantables_orange, 		chance = 10,	quantity = 1 },
	{ uuid = obj_plantables_potato, 		chance = 20,	quantity = randomStackAmountAvg5 },

	{ uuid = obj_consumable_sunshake, 		chance = 15 },

	{ uuid = obj_consumable_gas,			chance = 60,	quantity = randomStackAmountAvg3 },
	{ uuid = obj_consumable_battery,		chance = 40,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_consumable_water,			chance = 10,	quantity = randomStackAmount5 },
	{ uuid = obj_consumable_chemical,		chance = 70,	quantity = randomStackAmount5 },
	{ uuid = obj_consumable_fertilizer,		chance = 25,	quantity = randomStackAmount5 },
	{ uuid = obj_consumable_component,		chance = 70,	quantity = 1 },
	{ uuid = obj_consumable_inkammo,		chance = 25,	quantity = randomStackAmount10 },
	{ uuid = obj_consumable_glowstick,		chance = 20,	quantity = 1 },
	{ uuid = obj_consumable_soilbag,		chance = 40,	quantity = 1 },

	{ uuid = obj_resource_circuitboard,		chance = 50 },

	{ uuid = obj_seed_carrot,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_redbeet,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_tomato,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_potato,				chance = 20,	quantity = randomStackAmountAvg2 },

	{ uuid = blk_glass,						chance = 20,	quantity = randomStackAmount10 },
	{ uuid = blk_metal3,						chance = 20,	quantity = randomStackAmount10 },
	{ uuid = blk_metal2,						chance = 20,	quantity = randomStackAmount10 },

	{ uuid = jnt_bearing, 					chance = 5,		quantity = 1 },
	--Fant Items
	{ uuid = obj_consumable_fant_redwoc, 	chance = 15 },
	{ uuid = obj_consumable_fant_totebots, 	chance = 15 },
	{ uuid = obj_consumable_fant_fries, 	chance = 15 },
	{ uuid = obj_interactive_fant_plastic, 	chance = 20, quantity = randomStackAmountAvg10 },
	{ uuid = obj_interactive_fant_wire, 	chance = 20, quantity = randomStackAmountAvg10 },
	
}

local random_epicloot = {
	{ uuid = obj_plantables_carrot, 		chance = 15,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_redbeet, 		chance = 15,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_tomato, 		chance = 15,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_banana, 		chance = 10,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_blueberry, 		chance = 10,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_orange, 		chance = 10,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_potato, 		chance = 20,	quantity = randomStackAmountAvg10 },

	{ uuid = obj_consumable_sunshake, 		chance = 15 },
	{ uuid = obj_consumable_longsandwich, 	chance = 15 },
	{ uuid = obj_consumable_fant_redwoc, 	chance = 20 },
	{ uuid = obj_consumable_fant_totebots, 	chance = 15 },
	{ uuid = obj_consumable_fant_fries, 	chance = 15 },

	{ uuid = obj_consumable_gas,			chance = 60,	quantity = randomStackAmountAvg5 },
	{ uuid = obj_consumable_battery,		chance = 40,	quantity = randomStackAmount5 },
	{ uuid = obj_consumable_water,			chance = 10,	quantity = randomStackAmount10 },
	{ uuid = obj_consumable_chemical,		chance = 70,	quantity = randomStackAmount10 },
	{ uuid = obj_consumable_fertilizer,		chance = 25,	quantity = randomStackAmount10 },
	{ uuid = obj_consumable_component,		chance = 70,	quantity = 1 },
	{ uuid = obj_consumable_inkammo,		chance = 25,	quantity = randomStackAmount20 },
	{ uuid = obj_consumable_glowstick,		chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_consumable_soilbag,		chance = 40,	quantity = randomStackAmountAvg2 },

	{ uuid = obj_resource_circuitboard,		chance = 50 },

	{ uuid = obj_seed_carrot,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_redbeet,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_tomato,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_potato,				chance = 20,	quantity = randomStackAmountAvg2 },

	{ uuid = obj_seed_banana,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_orange,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_blueberry,			chance = 20,	quantity = randomStackAmountAvg2 },

	{ uuid = blk_glass,						chance = 20,	quantity = randomStackAmount10 },

	{ uuid = jnt_bearing, 					chance = 10,	quantity = 1 },
}

local random_warehouseloot = {
	{ uuid = obj_plantables_carrot, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_redbeet, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_tomato, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_banana, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_blueberry, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_orange, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_pineapple, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_plantables_broccoli, 		chance = 5,		quantity = randomStackAmountAvg2 },
	{ uuid = obj_consumable_sunshake, 		chance = 15 },
	{ uuid = obj_plantables_potato, 		chance = 20,	quantity = randomStackAmountAvg10 },
	{ uuid = obj_resource_circuitboard,		chance = 50 },
	{ uuid = obj_consumable_gas,			chance = 60,	quantity = randomStackAmountAvg5 },
	{ uuid = obj_consumable_battery,		chance = 40,	quantity = randomStackAmountAvg5 },
	{ uuid = obj_consumable_fertilizer,		chance = 25,	quantity = randomStackAmountAvg10 },
	{ uuid = obj_consumable_soilbag,		chance = 40,	quantity = randomStackAmountAvg3 },
	{ uuid = obj_consumable_component,		chance = 70,	quantity = 1 },
	{ uuid = obj_interactive_fant_plastic, 	chance = 30, quantity = randomStackAmountAvg10 },
	{ uuid = obj_interactive_fant_wire, 	chance = 30, quantity = randomStackAmountAvg10 },
	{ uuid = obj_fant_upgradeModule_1,		chance = 50,	quantity = 1 },
	{ uuid = obj_fant_upgradeModule_2,		chance = 50,	quantity = 1 },
	{ uuid = obj_fant_upgradeModule_3,		chance = 50,	quantity = 1 },
}

local random_loot_startarea = {
	{ uuid = obj_scrap_smallwheel,			chance = 10 },
	{ uuid = obj_consumable_gas,			chance = 25,	quantity = randomStackAmountAvg3 },
	{ uuid = obj_consumable_chemical,		chance = 15,	quantity = randomStackAmount5 },
	{ uuid = obj_consumable_soilbag,		chance = 25,	quantity = 1 },
	{ uuid = obj_plantables_carrot,			chance = 25,	quantity = 1 },
	{ uuid = obj_plantables_redbeet,		chance = 25,	quantity = 1 },
	{ uuid = obj_plantables_tomato,			chance = 25,	quantity = 1 },
	{ uuid = obj_seed_carrot,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_redbeet,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = obj_seed_tomato,				chance = 20,	quantity = randomStackAmountAvg2 },
	{ uuid = jnt_bearing,					chance = 10 },
	{ uuid = obj_consumable_fant_redwoc, 	chance = 15 },
	{ uuid = obj_consumable_fant_totebots, 	chance = 15 },
	{ uuid = obj_consumable_fant_fries, 	chance = 15 },
	{ uuid = obj_interactive_fant_plastic, 	chance = 15, quantity = randomStackAmountAvg10 },
	{ uuid = obj_interactive_fant_wire, 	chance = 15, quantity = randomStackAmountAvg10 },
	
}

-- Loot crates
local loot_crate_epic = {
	slots = function() return 30 end,
	selectOne = {
		{ uuid = obj_outfitpackage_common, 			chance = 50 },
		{ uuid = obj_outfitpackage_rare, 			chance = 30 },
		{ uuid = obj_outfitpackage_epic, 			chance = 10 },

		{ uuid = obj_consumable_soilbag, 			chance = 50,	quantity = randomStackAmountAvg3 },
		{ uuid = obj_consumable_component, 			chance = 50,	quantity = randomStackAmountAvg3 },

		{ uuid = jnt_suspensionoffroad_01, 			chance = 20 },
		{ uuid = jnt_suspensionsport_01, 			chance = 20 },
		{ uuid = jnt_interactive_piston_01, 		chance = 20 },
		{ uuid = obj_interactive_switch, 			chance = 10 },
		{ uuid = obj_interactive_button, 			chance = 10 },
		{ uuid = obj_interactive_radio, 			chance = 5 },
		{ uuid = obj_interactive_horn, 				chance = 5 },
		{ uuid = obj_interactive_logicgate, 		chance = 10 },
		{ uuid = obj_interactive_timer, 			chance = 5 },
		{ uuid = obj_interactive_gasengine_01, 		chance = 10 },
		{ uuid = obj_interactive_electricengine_01, chance = 5 },
		{ uuid = obj_interactive_controller_01, 	chance = 10 },
		{ uuid = obj_interactive_driverseat_01, 	chance = 10 },
		{ uuid = obj_interactive_seat_01, 			chance = 20 },
		{ uuid = obj_interactive_driversaddle_01, 	chance = 10 },
		{ uuid = obj_interactive_saddle_01, 		chance = 20 },
		--Fant Items
		{ uuid = obj_interactive_fant_clock_body, 	chance = 5 },
		{ uuid = obj_interactive_logoframe, 	chance = 5 },
		{ uuid = obj_interactive_fant_angle_sensor, 	chance = 5 },
		{ uuid = obj_interactive_fant_smoker, 	chance = 5 },
		{ uuid = obj_interactive_fant_campfire, 	chance = 5 },
		{ uuid = obj_interactive_fant_gyroscope, 	chance = 5 },
		{ uuid = obj_interactive_fant_gyroscope3x3, 	chance = 5 },
		{ uuid = obj_interactive_fant_daylight_sensor, 	chance = 5 },
		{ uuid = obj_interactive_fant_itemdetector, 	chance = 5 },
	},
	randomLoot = random_epicloot
}

local loot_crate_epic_warehouse = {
	slots = function() return 30 end,
	selectOne = {
		{ uuid = jnt_suspensionoffroad_03, 			chance = 5 },
		{ uuid = jnt_suspensionoffroad_04, 			chance = 3 },
		{ uuid = jnt_suspensionoffroad_05, 			chance = 2 },
		{ uuid = jnt_suspensionsport_03, 			chance = 5 },
		{ uuid = jnt_suspensionsport_04, 			chance = 3 },
		{ uuid = jnt_suspensionsport_05, 			chance = 2 },
		{ uuid = jnt_interactive_piston_03, 		chance = 2 },
		{ uuid = jnt_interactive_piston_04, 		chance = 3 },
		{ uuid = jnt_interactive_piston_05, 		chance = 2 },
		{ uuid = obj_interactive_gasengine_03, 		chance = 5 },
		{ uuid = obj_interactive_gasengine_04, 		chance = 3 },
		{ uuid = obj_interactive_gasengine_05, 		chance = 2 },
		{ uuid = obj_interactive_electricengine_03, chance = 5 },
		{ uuid = obj_interactive_electricengine_04, chance = 3 },
		{ uuid = obj_interactive_electricengine_05, chance = 2 },
		{ uuid = obj_interactive_controller_03, 	chance = 5 },
		{ uuid = obj_interactive_controller_04, 	chance = 3 },
		{ uuid = obj_interactive_controller_05, 	chance = 2 },
		{ uuid = obj_interactive_driverseat_03, 	chance = 5 },
		{ uuid = obj_interactive_driverseat_04, 	chance = 3 },
		{ uuid = obj_interactive_driverseat_05, 	chance = 2 },
		{ uuid = obj_interactive_seat_03, 			chance = 5 },
		{ uuid = obj_interactive_seat_04, 			chance = 3 },
		{ uuid = obj_interactive_seat_05, 			chance = 2 },
		{ uuid = obj_interactive_driversaddle_03, 	chance = 5 },
		{ uuid = obj_interactive_driversaddle_04, 	chance = 3 },
		{ uuid = obj_interactive_driversaddle_05, 	chance = 2 },
		{ uuid = obj_interactive_saddle_03, 		chance = 5 },
		{ uuid = obj_interactive_saddle_04, 		chance = 3 },
		{ uuid = obj_interactive_saddle_05, 		chance = 2 },
		--Fant Items
		{ uuid = obj_interactive_mcp, 				chance = 2 },
		{ uuid = obj_interactive_fant_anchor, 		chance = 2 },
		{ uuid = obj_interactive_fant_anchor, 		chance = 2 },
		{ obj_interactive_fant_robotScanner, 		chance = 2 },
		{ obj_interactive_chemical_lift_engine, 		chance = 2 },
		{ obj_interactive_fant_campfire, 		chance = 2 },
		{ obj_interactive_fant_miner, 		chance = 2 },
		{ obj_interactive_fant_tesla_coil, 		chance = 2 },
		{ obj_interactive_fant_autocrafter, 		chance = 2 },
		{ obj_interactive_fant_steamengine, 		chance = 2 },
		{ obj_interactive_fant_large_container, 		chance = 2 },
		{ obj_interactive_fant_seedpress, 		chance = 2 },
		{ obj_interactive_fant_wireless, 		chance = 2 },
		{ obj_interactive_fant_chest, 		chance = 2 },
		{ uuid = obj_fant_upgradeModule_1, 		chance = 2 },
		{ uuid = obj_fant_upgradeModule_2, 		chance = 2 },
		{ uuid = obj_fant_upgradeModule_3, 		chance = 1 },
	},
	randomLoot = random_warehouseloot
}

local loot_crate_standard = {
	slots = function() return randomStackAmount( 10, 20, 30 ) end,
	selectOne = {
		{ uuid = obj_outfitpackage_common, 		chance = 3 },

		{ uuid = obj_consumable_component,		chance = 47 },
		{ uuid = nil,							chance = 50 }, -- No loot from selectOne
	},
	randomLoot = random_loot
}

local loot_crate_startarea = {
	slots = function() return randomStackAmount( 10, 20, 30 ) end,
	selectOne = {
		{ uuid = obj_consumable_sunshake,		chance = 1 },
		{ uuid = obj_consumable_component,		chance = 1 },
		{ uuid = obj_resource_circuitboard,		chance = 1 },
		{ uuid = nil,							chance = 2 }, -- No loot from selectOne
	},
	randomLoot = random_loot_startarea
}

local loot_crate_standard_warehouse = {
	slots = function() return randomStackAmount( 10, 20, 30 ) end,
	selectOne = {
		{ uuid = obj_plantables_broccoli, 		chance = 1,		quantity = 1 },
		{ uuid = obj_plantables_pineapple, 		chance = 1,		quantity = 1 },
		{ uuid = nil,							chance = 5 }, -- No loot from selectOne
	},
	randomLoot = random_warehouseloot
}

local loot_ruinchest = {
	slots = function() return randomStackAmount( 10, 20, 60 ) end,
	selectOne = nil,
	randomLoot = random_loot
}

local loot_ruinchest_startarea = {
	slots = function() return randomStackAmount( 10, 20, 40 ) end,
	selectOne = nil,
	randomLoot = random_loot_startarea
}

local loot_woc = {
	slots = function() return 10 end,
	randomLoot = {
	{ uuid = obj_resource_steak,				chance = 1 },
	}
}

local loot_woc_milk = {
	slots = function() return 10 end,
	randomLoot = {
		{ uuid = obj_consumable_milk,			chance = 1 },
	}
}

local loot_glow_goop = {
	slots = function() return 100 end,
	randomLoot = {
		{ uuid = obj_resource_glowpoop,			chance = 1 },
	}
}

local loot_totebot_green = {
	slots = function() return 10 end,
	randomLoot = {
		{ uuid = obj_resource_circuitboard,		chance = 1 },
	}
}

local loot_haybot = {
	slots = function() return randomStackAmount( 10, 20, 30 ) end,
	randomLoot = {
		{ uuid = obj_consumable_component,		chance = 1 },
		{ uuid = obj_resource_circuitboard,		chance = 2 },
	}
}

local loot_tapebot = {
	slots = function() return randomStackAmount( 10, 20, 30 ) end,
	randomLoot = {
		{ uuid = obj_consumable_component,		chance = 2 },
		{ uuid = obj_consumable_battery,		chance = 5 },
	}
}

local loot_farmbot = {
	slots = function() return randomStackAmount( 20, 30, 40 ) end,
	selectOne = {
		{ uuid = obj_survivalobject_keycard,	chance = 1 },
	},
	randomLoot = {
		{ uuid = obj_consumable_component,		chance = 2,		quantity = randomStackAmountAvg5 },
		{ uuid = obj_resource_circuitboard,		chance = 1,		quantity = randomStackAmountAvg2 },
	}
}

local lootTables = {
	["loot_crate_startarea"] = loot_crate_startarea,
	["loot_ruinchest_startarea"] = loot_ruinchest_startarea,
	["loot_crate_epic"] = loot_crate_epic,
	["loot_crate_epic_warehouse"] = loot_crate_epic_warehouse,
	["loot_crate_standard"] = loot_crate_standard,
	["loot_crate_standard_warehouse"] = loot_crate_standard_warehouse,
	["loot_ruinchest"] = loot_ruinchest,
	["loot_woc"] = loot_woc,
	["loot_woc_milk"] = loot_woc_milk,
	["loot_glow_goop"] = loot_glow_goop,
	["loot_totebot_green"] = loot_totebot_green,
	["loot_haybot"] = loot_haybot,
	["loot_tapebot"] = loot_tapebot,
	["loot_farmbot"] = loot_farmbot,
}

function SelectOne( list )
	local sum = 0
	for _,v in ipairs( list ) do
		sum = sum + v.chance --NOTE: Could precalculate sum
	end

	local rand = math.random() * sum

	sum = 0
	for _,v in ipairs( list ) do
		sum = sum + v.chance

		if rand <= sum then
			local quantity = 1
			if v.quantity then
				if type( v.quantity ) == "function" then
					quantity = v.quantity()
				else
					quantity = v.quantity
				end
			end
			return {
				uuid = v.uuid,
				quantity = quantity
			}
		end
	end
	return nil
end

function SelectLoot( lootTableName, slotLimit )
	local lootList = {}

	local lootTable = lootTables[lootTableName]

	local slots = lootTable.slots and lootTable.slots() or 1
	if slotLimit then
		slots = math.min( slots, slotLimit )
	end

	if slots > 0 and lootTable.selectOne then
		local loot = SelectOne( lootTable.selectOne )
		if loot and loot.uuid then
			if isAnyOf( lootTableName, { "loot_crate_epic", "loot_crate_epic_warehouse" } ) then
				loot.epic = true
			end
			lootList[#lootList + 1] = loot
		end
	end

	while #lootList < slots and lootTable.randomLoot do
		local loot = SelectOne( lootTable.randomLoot )
		assert( loot and loot.uuid )
		lootList[#lootList + 1] = loot
	end

	return lootList
end

function SpawnLoot( origin, lootList, worldPosition, ringAngle )

	if worldPosition == nil then
		if type( origin ) == "Shape" then
			worldPosition = origin.worldPosition
		elseif type( origin ) == "Player" or type( origin ) == "Unit" then
			local character = origin:getCharacter()
			if character then
				worldPosition = character.worldPosition
			end
		elseif type( origin ) == "Harvestable" then
			worldPosition = origin.worldPosition
		end
	end

	ringAngle = ringAngle or math.pi / 18

	if worldPosition then
		for i = 1, #lootList do
			local dir
			local up
			if type( origin ) == "Shape" then
				dir = sm.vec3.new( 1.0, 0.0, 0.0 )
				up = sm.vec3.new( 0, 1, 0 )
			else
				dir = sm.vec3.new( 0.0, 1.0, 0.0 )
				up = sm.vec3.new( 0, 0, 1 )
			end

			local firstCircle = 6
			local secondCircle = 13
			local thirdCircle = 26

			if i < 6 then
				local divisions = ( firstCircle - ( firstCircle - math.min( #lootList, firstCircle - 1 ) ) )
				dir = dir:rotate( i * 2 * math.pi / divisions, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - ringAngle, right )
			elseif i < 13 then
				local divisions = ( secondCircle - ( secondCircle - math.min( #lootList - firstCircle + 1, secondCircle - firstCircle ) ) )
				dir = dir:rotate( i * 2 * math.pi / divisions, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - 2 * ringAngle, right )
			elseif i < 26 then
				local dvisions = ( thirdCircle - ( thirdCircle - math.min( #lootList - secondCircle + 1, thirdCircle - secondCircle ) ) )
				dir = dir:rotate( i * 2 * math.pi / dvisions, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - 4 * ringAngle, right )
			else
				-- Out of predetermined room, place randomly
				dir = dir:rotate( math.random() * 2 * math.pi, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - ringAngle - math.random() * ( 3 * ringAngle ), right )
			end

			local loot = lootList[i]
			local params = { lootUid = loot.uuid, lootQuantity = loot.quantity or 1, epic = loot.epic }
			local vel = dir * (4+math.random()*2)
			local projectileName = loot.epic and "epicloot" or "loot"
			if type( origin ) == "Shape" then
				sm.projectile.shapeCustomProjectileAttack( params, projectileName, 0, sm.vec3.new( 0, 0, 0 ), vel, origin, 0 )
			elseif type( origin ) == "Player" or type( origin ) == "Unit" then
				sm.projectile.customProjectileAttack( params, projectileName, 0, worldPosition, vel, origin, worldPosition, worldPosition, 0 )
			elseif type( origin ) == "Harvestable" then
				sm.projectile.harvestableCustomProjectileAttack( params, projectileName, 0, worldPosition, vel, origin, 0 )
			end
		end
	end
end
