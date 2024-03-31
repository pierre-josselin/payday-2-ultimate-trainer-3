if inGame() and isPlaying() then
	for pl_key, pl_record in pairs( managers.groupai:state():all_player_criminals() ) do
		if pl_record.status ~= "dead" then
			local unit = managers.groupai:state():all_player_criminals()[ pl_key ].unit
			unit:network():send_to_unit( { "sync_player_movement_state", unit, "incapacitated", 0, unit:id() } )
		end
	end
	if is_french then
	ShowHint("TUER TOUS LES JOUEURS",3)
	else
	ShowHint("KILL ALL PLAYERS",3)
	end
end