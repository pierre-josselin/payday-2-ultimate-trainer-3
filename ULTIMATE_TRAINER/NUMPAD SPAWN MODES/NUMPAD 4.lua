-- LOAD FUNCTIONS
dofiles("ULTIMATE_TRAINER/NUMPAD SPAWN MODES/SPAWN_FUNCTIONS.lua")
if inGame() and isPlaying() and isHost() and not inChat() then
	if data_se then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_swat_1')
		else
			spawn_enemy_self('ene_swat_1')
		end
	managers.hud:show_hint( { text = "SWAT 1" } )
	elseif data_ses then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_sniper_1')
		else
			spawn_enemy_self('ene_sniper_1')
		end
	managers.hud:show_hint( { text = "SNIPER 1" } )
	elseif data_seeg then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_bulldozer_3')
		else
			spawn_enemy_self('ene_bulldozer_3')
		end
	managers.hud:show_hint( { text = "LMG BULLDOZER" } )
	elseif data_sa then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_swat_1')
		else
			spawn_allied_self('ene_swat_1')
		end
	managers.hud:show_hint( { text = "SWAT 1" } )
	elseif data_sas then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_sniper_1')
		else
			spawn_allied_self('ene_sniper_1')
		end
	managers.hud:show_hint( { text = "SNIPER 1" } )
	elseif data_saeg then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_bulldozer_3')
		else
			spawn_allied_self('ene_bulldozer_3')
		end
	managers.hud:show_hint( { text = "LMG BULLDOZER" } )
	elseif data_sb then
		spawn_bag('meth')
	if is_french then
	managers.hud:show_hint( { text = "AMPHES" } )
	else
	managers.hud:show_hint( { text = "METH" } )
	end
	elseif data_sbs then
		spawn_bag('painting')
	if is_french then
	managers.hud:show_hint( { text = "TABLEAU" } )
	else
	managers.hud:show_hint( { text = "PAINTING" } )
	end
	elseif data_sr then
		rain_bag('meth')
	if is_french then
	managers.hud:show_hint( { text = "AMPHES" } )
	else
	managers.hud:show_hint( { text = "METH" } )
	end
	elseif data_srs then
		rain_bag('painting')
	if is_french then
	managers.hud:show_hint( { text = "TABLEAU" } )
	else
	managers.hud:show_hint( { text = "PAINTING" } )
	end
	elseif data_off then
	end
end

if not load_data and not inChat() then
	if is_french then
	managers.hud:show_hint( { text = "NUMPAD SPAWN MODES (CHOISISSEZ UN MODE AVEC NUMPAD +)" } )
	else
	managers.hud:show_hint( { text = "NUMPAD SPAWN MODES (CHOOSE A MODE WITH NUMPAD +)" } )
	end
end