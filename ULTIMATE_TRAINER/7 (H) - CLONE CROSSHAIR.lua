-- CLONE CROSSHAIR
if inChat() then return end
if inGame() and isPlaying() and isHost() then
	local camera = managers.player:player_unit():movement()._current_state._ext_camera
	local mvec_to = Vector3()
	local from_pos = camera:position()
	mvector3.set( mvec_to, camera:forward() )
	mvector3.multiply( mvec_to, 20000 )
	mvector3.add( mvec_to, from_pos )
	local col_ray = World:raycast( "ray", from_pos, mvec_to, "slot_mask", managers.slot:get_mask( "all" ) )
	if col_ray then
	   World:spawn_unit( col_ray.unit:name(), managers.player:player_unit():position(), Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0) )
	end
	if is_french then
		ShowHint("CLONER L'UNITÉ A LA CROIX",0.5)
	else
		ShowHint("CLONE UNIT ON CROSSHAIR",0.5)
	end
end