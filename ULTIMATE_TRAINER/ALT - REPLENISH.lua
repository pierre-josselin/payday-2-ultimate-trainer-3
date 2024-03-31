if inGame() and isPlaying() and not inChat() then
	local player = managers.player:player_unit()
	if alive(player) then player:base():replenish() end
	managers.player:set_player_state( "standard" )
	
	-- RELEASE FROM JAIL
	if game_state_machine:current_state_name() == "ingame_waiting_for_respawn"
	and not alive(managers.player:player_unit()) then
	IngameWaitingForRespawnState:_begin_game_enter_transition()
	end
	
	if is_french then
		ShowHint("RÉCUPÉRER SANTÉ ET MUNITIONS, SORTIR DE PRISON",3)
	else
		ShowHint("REPLENISH HEALTH AND AMMO, RELEASE FROM JAIL",3)
	end
	
end

if inGame() and not isPlaying() then
	for _,asset_id in pairs (managers.assets:get_all_asset_ids( true )) do
		managers.assets:unlock_asset( asset_id )
	end
end