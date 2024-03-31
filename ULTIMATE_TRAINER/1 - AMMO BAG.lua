-- SPAWN AMMOBAG
-- BY SIMPLITY, UPDATED BY PIERREDJAYS

if inGame() and isPlaying() and not inChat() then
	local from = managers.player:player_unit():movement():m_head_pos()
	local to = from + managers.player:player_unit():movement():m_head_rot():y() * 999999
	local ray = managers.player:player_unit():raycast("ray", from, to, "slot_mask", managers.slot:get_mask("trip_mine_placeables"), "ignore_unit", {})
	if ray then
		local pos = ray.position
		local rot = managers.player:player_unit():movement():m_head_rot()
		local rot = Rotation( rot:yaw(), 0, 0 )
		local ammo_upgrade_lvl = managers.player:upgrade_level( "ammo_bag", "ammo_increase" )
		if Network:is_client() then
			managers.network:session():send_to_host( "place_deployable_bag", "AmmoBagBase", pos, rot, ammo_upgrade_lvl )
		else 
			local unit = AmmoBagBase.spawn( pos, rot, ammo_upgrade_lvl )
		end
	end
end