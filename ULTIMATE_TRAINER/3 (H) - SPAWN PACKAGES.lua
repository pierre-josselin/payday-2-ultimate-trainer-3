-- BY BALDWIN
if inGame() and isPlaying() and isHost() and not inChat() then
	SpawnGagePackage = SpawnGagePackage or function(id) --Don't pass any argument for random package
	  function tweak_data.gage_assignment:get_num_assignment_units() --Patches limit on spawning units. World:spawn_unit somehow obey this value.
		return 99999
	  end
	  local id_table = {
		Idstring("units/pd2_dlc_gage_jobs/pickups/gen_pku_gage_green/gen_pku_gage_green"),
		Idstring("units/pd2_dlc_gage_jobs/pickups/gen_pku_gage_yellow/gen_pku_gage_yellow"),
		Idstring("units/pd2_dlc_gage_jobs/pickups/gen_pku_gage_red/gen_pku_gage_red"),
		Idstring("units/pd2_dlc_gage_jobs/pickups/gen_pku_gage_blue/gen_pku_gage_blue"),
		Idstring("units/pd2_dlc_gage_jobs/pickups/gen_pku_gage_purple/gen_pku_gage_purple"),
	}
	  local pos = get_crosshair_pos()
	  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	  if not pos or not rot then return end
	  World:spawn_unit(id_table[id or math.random(1,5)], pos, rot )
	end
SpawnGagePackage()
end