-- LOAD FUNCTIONS
dofiles("ULTIMATE_TRAINER/NUMPAD SPAWN MODES/SPAWN_FUNCTIONS.lua")
if inGame() and isPlaying() and isHost() and not inChat() then
	if data_se then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_cop_3')
		else
			spawn_enemy_self('ene_cop_3')
		end
	if is_french then
	managers.hud:show_hint( { text = "FLIC 3" } )
	else
	managers.hud:show_hint( { text = "COP 3" } )
	end
	elseif data_ses then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_spook_1')
		else
			spawn_enemy_self('ene_spook_1')
		end
	managers.hud:show_hint( { text = "CLOAKER" } )
	elseif data_seeg then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_city_swat_3')
		else
			spawn_enemy_self('ene_city_swat_3')
		end
	managers.hud:show_hint( { text = "ELITE GENSEC 3" } )
	elseif data_sa then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_cop_3')
		else
			spawn_allied_self('ene_cop_3')
		end
	if is_french then
	managers.hud:show_hint( { text = "FLIC 3" } )
	else
	managers.hud:show_hint( { text = "COP 3" } )
	end
	elseif data_sas then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_spook_1')
		else
			spawn_allied_self('ene_spook_1')
		end
	managers.hud:show_hint( { text = "CLOAKER" } )
	elseif data_saeg then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_city_swat_3')
		else
			spawn_allied_self('ene_city_swat_3')
		end
	managers.hud:show_hint( { text = "ELITE GENSEC 3" } )
	elseif data_sb then
		spawn_bag('coke')
	managers.hud:show_hint( { text = "COKE" } )
	elseif data_sbs then
		spawn_bag('lance_bag')
	if is_french then
	managers.hud:show_hint( { text = "PERCEUSE" } )
	else
	managers.hud:show_hint( { text = "DRILL" } )
	end
	elseif data_sr then
		rain_bag('coke')
	managers.hud:show_hint( { text = "COKE" } )
	elseif data_srs then
		rain_bag('lance_bag')
	if is_french then
	managers.hud:show_hint( { text = "PERCEUSE" } )
	else
	managers.hud:show_hint( { text = "DRILL" } )
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