-- LOAD FUNCTIONS
dofiles("ULTIMATE_TRAINER/NUMPAD SPAWN MODES/SPAWN_FUNCTIONS.lua")
if inGame() and isPlaying() and isHost() and not inChat() then
	if data_se then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_fbi_swat_1')
		else
			spawn_enemy_self('ene_fbi_swat_1')
		end
	managers.hud:show_hint( { text = "FBI 1" } )
	elseif data_ses then
		if spawn_crosshair then
			spawn_enemy_crosshair('ene_bulldozer_1')
		else
			spawn_enemy_self('ene_bulldozer_1')
		end
	managers.hud:show_hint( { text = "BULLDOZER 1" } )
	elseif data_seeg then
	if is_french then
	managers.hud:show_hint( { text = "INDISPONIBLE" } )
	else
	managers.hud:show_hint( { text = "UNAVAILABLE" } )
	end
	elseif data_sa then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_fbi_swat_1')
		else
			spawn_allied_self('ene_fbi_swat_1')
		end
	managers.hud:show_hint( { text = "FBI 1" } )
	elseif data_sas then
		if spawn_crosshair then
			spawn_allied_crosshair('ene_bulldozer_1')
		else
			spawn_allied_self('ene_bulldozer_1')
		end
	managers.hud:show_hint( { text = "BULLDOZER 1" } )
	elseif data_saeg then
	if is_french then
	managers.hud:show_hint( { text = "INDISPONIBLE" } )
	else
	managers.hud:show_hint( { text = "UNAVAILABLE" } )
	end
	elseif data_sb then
		spawn_bag('turret')
	if is_french then
	managers.hud:show_hint( { text = "TOURELLE" } )
	else
	managers.hud:show_hint( { text = "TURRET" } )
	end
	elseif data_sbs then
		spawn_bag('artifact_statue')
	if is_french then
	managers.hud:show_hint( { text = "STATUE ARTEFACT" } )
	else
	managers.hud:show_hint( { text = "ARTIFACT STATUE" } )
	end
	elseif data_sr then
		rain_bag('turret')
	if is_french then
	managers.hud:show_hint( { text = "TOURELLE" } )
	else
	managers.hud:show_hint( { text = "TURRET" } )
	end
	elseif data_srs then
		rain_bag('artifact_statue')
	if is_french then
	managers.hud:show_hint( { text = "STATUE ARTEFACT" } )
	else
	managers.hud:show_hint( { text = "ARTIFACT STATUE" } )
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