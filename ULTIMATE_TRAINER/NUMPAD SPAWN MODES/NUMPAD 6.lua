-- LOAD FUNCTIONS
dofiles("ULTIMATE_TRAINER/NUMPAD SPAWN MODES/SPAWN_FUNCTIONS.lua")
if inGame() and isPlaying() and isHost() and not inChat() then
	if data_se then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_swat_heavy_1')
		else
			spawn_enemy_self('ene_swat_heavy_1')
		end
	managers.hud:show_hint( { text = "SWAT HEAVY" } )
	elseif data_ses then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_tazer_1')
		else
			spawn_enemy_self('ene_tazer_1')
		end
	if is_french then
	managers.hud:show_hint( { text = "TAZER" } )
	else
	managers.hud:show_hint( { text = "TASER" } )
	end
	elseif data_seeg then
	if is_french then
	managers.hud:show_hint( { text = "INDISPONIBLE" } )
	else
	managers.hud:show_hint( { text = "UNAVAILABLE" } )
	end
	elseif data_sa then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_swat_heavy_1')
		else
			spawn_allied_self('ene_swat_heavy_1')
		end
	managers.hud:show_hint( { text = "SWAT HEAVY" } )
	elseif data_sas then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_tazer_1')
		else
			spawn_allied_self('ene_tazer_1')
		end
	if is_french then
	managers.hud:show_hint( { text = "TAZER" } )
	else
	managers.hud:show_hint( { text = "TASER" } )
	end
	elseif data_saeg then
	if is_french then
	managers.hud:show_hint( { text = "INDISPONIBLE" } )
	else
	managers.hud:show_hint( { text = "UNAVAILABLE" } )
	end
	elseif data_sb then
		spawn_bag('circuit')
	if is_french then
	managers.hud:show_hint( { text = "SERVEUR" } )
	else
	managers.hud:show_hint( { text = "SERVER" } )
	end
	elseif data_sbs then
		spawn_bag("samurai_suit")
	if is_french then
	managers.hud:show_hint( { text = "ARMURE DE SAMOURAI" } )
	else
	managers.hud:show_hint( { text = "SAMURAI SUIT" } )
	end
	elseif data_sr then
		rain_bag('circuit')
	if is_french then
	managers.hud:show_hint( { text = "SERVEUR" } )
	else
	managers.hud:show_hint( { text = "SERVER" } )
	end
	elseif data_srs then
		rain_bag("samurai_suit")
	if is_french then
	managers.hud:show_hint( { text = "ARMURE DE SAMOURAI" } )
	else
	managers.hud:show_hint( { text = "SAMURAI SUIT" } )
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