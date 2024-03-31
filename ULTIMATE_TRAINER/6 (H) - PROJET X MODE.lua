----------------------------------------
--------- PROJECT X MODE ---------------
--------- By PierreDjays -- v1.1 -------
----------------------------------------

if inChat() then return end
if inGame() and isPlaying() and isHost() then -- JEWERLY STORE / UKRAINIAN

function MoneyManager.get_civilian_deduction() return 0 end
function MoneyManager.civilian_killed() return end

variant = { }
unit = { }
function Party01(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[2] = "units/payday2/characters/civ_male_casual_6/civ_male_casual_6"
		unit[3] = "units/payday2/characters/civ_male_casual_2/civ_male_casual_2"
		unit[4] = "units/payday2/characters/civ_female_casual_1/civ_female_casual_1"
		unit[5] = "units/payday2/characters/civ_female_hostess_shirt_1/civ_female_hostess_shirt_1"
		unit[6] = "units/payday2/characters/civ_female_bank_1/civ_female_bank_1"
		unit[7] = "units/payday2/characters/civ_female_crackwhore_1/civ_female_crackwhore_1" --> PUTE
		
	local _randoms2 = math.random(1,7) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty01 = SpawnParty01 or function()
	if Network:is_server() then
		for i=1,10 do
			Party01(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- BANK
variant = { }
unit = { }
function Party02(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[2] = "units/payday2/characters/civ_female_casual_5/civ_female_casual_5"
		unit[3] = "units/payday2/characters/civ_male_casual_4/civ_male_casual_4"
		unit[4] = "units/payday2/characters/civ_male_casual_6/civ_male_casual_6"
		unit[5] = "units/payday2/characters/civ_female_casual_1/civ_female_casual_1"
		unit[6] = "units/payday2/characters/civ_female_bank_1/civ_female_bank_1"
		
	local _randoms2 = math.random(1,6) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty02 = SpawnParty02 or function()
	if Network:is_server() then
		for i=1,10 do
			Party02(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- GO BANK / TRANSPORT HARBOR / WATCHDOGS 2 / FRAMING 2
variant = { }
unit = { }
function Party03(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_worker_docks_1/civ_male_worker_docks_1"
		unit[2] = "units/payday2/characters/civ_male_worker_docks_2/civ_male_worker_docks_2"
		
	local _randoms2 = math.random(1,2) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty03 = SpawnParty03 or function()
	if Network:is_server() then
		for i=1,10 do
			Party03(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- DIAMOND HEIST
variant = { }
unit = { }
function Party04(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[2] = "units/payday2/characters/civ_male_casual_2/civ_male_casual_2"
		unit[3] = "units/payday2/characters/civ_male_casual_3/civ_male_casual_3"
		unit[4] = "units/payday2/characters/civ_male_casual_4/civ_male_casual_4"
		unit[5] = "units/payday2/characters/civ_male_casual_5/civ_male_casual_5"
		unit[6] = "units/payday2/characters/civ_female_bank_manager_1/civ_female_bank_manager_1"
		unit[7] = "units/payday2/characters/civ_female_casual_5/civ_female_casual_5"
		
	local _randoms2 = math.random(1,7) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty04 = SpawnParty04 or function()
	if Network:is_server() then
		for i=1,10 do
			Party04(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- TRANSPORTS
variant = { }
unit = { }
function Party05(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_female_casual_1/civ_female_casual_1"
		unit[2] = "units/payday2/characters/civ_female_casual_2/civ_female_casual_2"
		unit[3] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[4] = "units/payday2/characters/civ_male_casual_2/civ_male_casual_2"
		unit[5] = "units/payday2/characters/civ_male_casual_3/civ_male_casual_3"
		unit[6] = "units/payday2/characters/civ_male_casual_4/civ_male_casual_4"
		unit[7] = "units/payday2/characters/civ_male_casual_5/civ_male_casual_5"
		
	local _randoms2 = math.random(1,7) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty05 = SpawnParty05 or function()
	if Network:is_server() then
		for i=1,10 do
			Party05(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- RATS 1
variant = { }
unit = { }
function Party06(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_meth_cook_1/civ_male_meth_cook_1"
		
	local _randoms2 = math.random(1,1) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty06 = SpawnParty06 or function()
	if Network:is_server() then
		for i=1,10 do
			Party06(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- RATS 3
variant = { }
unit = { }
function Party07(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[2] = "units/payday2/characters/civ_male_casual_2/civ_male_casual_2"
		unit[3] = "units/payday2/characters/civ_male_casual_3/civ_male_casual_3"
		unit[4] = "units/payday2/characters/civ_female_casual_1/civ_female_casual_1"
		
		
	local _randoms2 = math.random(1,4) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty07 = SpawnParty07 or function()
	if Network:is_server() then
		for i=1,10 do
			Party07(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- BIG OIL 2
variant = { }
unit = { }
function Party08(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_scientist_1/civ_male_scientist_1"
		
		
	local _randoms2 = math.random(1,1) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty08 = SpawnParty08 or function()
	if Network:is_server() then
		for i=1,10 do
			Party08(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- ELECTION 3
variant = { }
unit = { }
function Party19(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_female_casual_1/civ_female_casual_1"
		unit[2] = "units/payday2/characters/civ_female_casual_2/civ_female_casual_2"
		unit[3] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[4] = "units/payday2/characters/civ_male_casual_2/civ_male_casual_2"
		unit[5] = "units/payday2/characters/civ_male_casual_3/civ_male_casual_3"
		unit[6] = "units/payday2/characters/civ_male_casual_4/civ_male_casual_4"
		
	local _randoms2 = math.random(1,6) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty19 = SpawnParty19 or function()
	if Network:is_server() then
		for i=1,10 do
			Party19(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- 4 STORE / VANDALE
variant = { }
unit = { }
function Party09(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_female_casual_1/civ_female_casual_1"
		unit[2] = "units/payday2/characters/civ_female_casual_2/civ_female_casual_2"
		unit[3] = "units/payday2/characters/civ_male_casual_1/civ_male_casual_1"
		unit[4] = "units/payday2/characters/civ_male_casual_2/civ_male_casual_2"
		unit[5] = "units/payday2/characters/civ_male_casual_3/civ_male_casual_3"
		unit[6] = "units/payday2/characters/civ_male_casual_4/civ_male_casual_4"
		unit[7] = "units/payday2/characters/civ_male_casual_5/civ_male_casual_5"
		unit[8] = "units/payday2/characters/civ_male_casual_6/civ_male_casual_6"
		
	local _randoms2 = math.random(1,8) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty09 = SpawnParty09 or function()
	if Network:is_server() then
		for i=1,10 do
			Party09(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then -- NIGHTCLUB
variant = { }
unit = { }
function Party10(i)

		variant[1] = "cm_sp_male_stripper"
		variant[2] = "cm_sp_dj_loop"
		variant[3] = "cf_sp_dance_slow"
		variant[4] = "cf_sp_dance_sexy"
		variant[5] = "cf_sp_pole_dancer_expert"
		variant[6] = "cf_sp_pole_dancer_basic"

		unit[1] = "units/payday2/characters/civ_male_party_1/civ_male_party_1"
		unit[2] = "units/payday2/characters/civ_male_party_2/civ_male_party_2"
		unit[3] = "units/payday2/characters/civ_male_party_3/civ_male_party_3"
		unit[4] = "units/payday2/characters/civ_male_dj_1/civ_male_dj_1"
		unit[5] = "units/payday2/characters/civ_female_party_1/civ_female_party_1"
		unit[6] = "units/payday2/characters/civ_female_party_2/civ_female_party_2"
		unit[7] = "units/payday2/characters/civ_female_party_3/civ_female_party_3"
		unit[8] = "units/payday2/characters/civ_female_party_4/civ_female_party_4"
		
	local _randoms2 = math.random(1,8) -- CIVILS
	local _rUnit = unit[_randoms2]
	local _randoms = math.random(1,6) -- EFFECTS
	local state = variant[_randoms]
	local spawn_pos = managers.player:player_unit():position()
	local pos = Vector3(spawn_pos.x + math.random(1,85) * i , spawn_pos.y + math.random(1,25) * i , spawn_pos.z)
	local spawn_rot = managers.player:player_unit():rotation()
	local unit_name = Idstring( _rUnit)
	local unit = World:spawn_unit( unit_name, pos, spawn_rot )
	local action_data = { type = "act", body_part = 1, variant = state, clamp_to_graph = true, blocks = { light_hurt = -1, hurt = -1, heavy_hurt = -1, walk = -1 } }
	local spawn_ai = { init_state = "inactive" }
	unit:brain():set_spawn_ai( spawn_ai )
	unit:brain():action_request( action_data )
	unit:set_active(true)
end	 
SpawnParty10 = SpawnParty10 or function()
	if Network:is_server() then
		for i=1,10 do
			Party10(i)
		end
	end
end
end

if inGame() and isPlaying() and isHost() then

	if managers.job:current_level_id() == "roberts" then -- GO BANK
   SpawnParty03()
   elseif managers.job:current_level_id() == "branchbank" then
   SpawnParty02()
   elseif managers.job:current_level_id() == "mallcrasher" then
   SpawnParty09()
   elseif managers.job:current_level_id() == "nightclub" then
   SpawnParty10()
   elseif managers.job:current_level_id() == "ukrainian_job" then
   SpawnParty01()
   elseif managers.job:current_level_id() == "family" then -- DIAMOND HEIST
   SpawnParty04()
   elseif managers.job:current_level_id() == "four_stores" then
   SpawnParty09()
   elseif managers.job:current_level_id() == "jewelry_store" then
   SpawnParty01()
   elseif managers.job:current_level_id() == "firestarter_3" then
   SpawnParty02()
   elseif managers.job:current_level_id() == "alex_1" then -- RATS COOK
   SpawnParty06()
   elseif managers.job:current_level_id() == "alex_3" then -- RATS BUS
   SpawnParty07()
   elseif managers.job:current_level_id() == "watchdogs_2" then -- DOCKS
   SpawnParty03()
   elseif managers.job:current_level_id() == "framing_frame_2" then -- TRAINYARD
   SpawnParty03()
   elseif managers.job:current_level_id() == "welcome_to_the_jungle_2" then -- FORREST
   SpawnParty08()
   elseif managers.job:current_level_id() == "arm_for" then -- TRAINHEIST
   SpawnParty03()
   elseif managers.job:current_level_id() == "arm_hcm" then -- DOWNTOWN
   SpawnParty05()
   elseif managers.job:current_level_id() == "arm_cro" then -- CROSSROADS
   SpawnParty05()
   elseif managers.job:current_level_id() == "arm_fac" then -- HARBOR
   SpawnParty03()
   elseif managers.job:current_level_id() == "arm_par" then -- PARK
   SpawnParty05()
   elseif managers.job:current_level_id() == "arm_und" then -- UNDERPASS
   SpawnParty05()
   elseif managers.job:current_level_id() == "election_day_1" then
   SpawnParty03()
   elseif managers.job:current_level_id() == "election_day_3" then
   SpawnParty19()
   elseif managers.job:current_level_id() == "election_day_3_skip1" then
   SpawnParty19()
   elseif managers.job:current_level_id() == "election_day_3_skip2" then
   SpawnParty19()
   elseif managers.job:current_level_id() == "kosugi" then
   SpawnParty03()
   -- elseif managers.job:current_level_id() == "big" then
   -- SpawnParty()
   
	else
	
	if is_french then
		ShowHint("SPAWN UNE FÊTE (INDISPONIBLE ICI)",3)
	else
		ShowHint("SPAWN A PARTY (UNAVAILABLE HERE)",3)
	end
	
	end	
end