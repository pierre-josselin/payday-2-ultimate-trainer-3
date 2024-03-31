if inGame() and isPlaying() and isHost() and not inChat() then
	local camera = managers.player:player_unit():movement()._current_state._ext_camera
	local mvec_to = Vector3()
	local from_pos = camera:position()
	mvector3.set( mvec_to, camera:forward() )
	mvector3.multiply( mvec_to, 20000 )
	mvector3.add( mvec_to, from_pos )
	local col_ray = World:raycast( "ray", from_pos, mvec_to, "slot_mask", managers.slot:get_mask( "bullet_impact_targets" ) )
	if col_ray then
		GrenadeCrateBase.spawn(col_ray.position, Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0))
	end
end