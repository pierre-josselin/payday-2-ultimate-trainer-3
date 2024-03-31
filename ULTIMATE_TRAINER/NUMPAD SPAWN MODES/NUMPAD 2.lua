-- LOAD FUNCTIONS
dofiles("ULTIMATE_TRAINER/NUMPAD SPAWN MODES/SPAWN_FUNCTIONS.lua")
if inGame() and isPlaying() and isHost() and not inChat() then
	if data_se then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_cop_4')
		else
			spawn_enemy_self('ene_cop_4')
		end
	if is_french then
	managers.hud:show_hint( { text = "FLIC 2" } )
	else
	managers.hud:show_hint( { text = "COP 2" } )
	end
	elseif data_ses then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_shield_2')
		else
			spawn_enemy_self('ene_shield_2')
		end
	managers.hud:show_hint( { text = "SHIELD 2" } )
	elseif data_seeg then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_city_swat_2')
		else
			spawn_enemy_self('ene_city_swat_2')
		end
	managers.hud:show_hint( { text = "ELITE GENSEC 2" } )
	elseif data_sa then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_cop_4')
		else
			spawn_allied_self('ene_cop_4')
		end
	if is_french then
	managers.hud:show_hint( { text = "FLIC 2" } )
	else
	managers.hud:show_hint( { text = "COP 2" } )
	end
	elseif data_sas then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_shield_2')
		else
			spawn_allied_self('ene_shield_2')
		end
	managers.hud:show_hint( { text = "SHIELD 2" } )
	elseif data_saeg then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_city_swat_2')
		else
			spawn_allied_self('ene_city_swat_2')
		end
	managers.hud:show_hint( { text = "ELITE GENSEC 2" } )
	elseif data_sb then
		spawn_bag('gold')
	if is_french then
	managers.hud:show_hint( { text = "OR" } )
	else
	managers.hud:show_hint( { text = "GOLD" } )
	end
	elseif data_sbs then
		spawn_bag('cage_bag')
	managers.hud:show_hint( { text = "CAGE" } )
	elseif data_sr then
		rain_bag('gold')
	if is_french then
	managers.hud:show_hint( { text = "OR" } )
	else
	managers.hud:show_hint( { text = "GOLD" } )
	end
	elseif data_srs then
		rain_bag('cage_bag')
	managers.hud:show_hint( { text = "CAGE" } )
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