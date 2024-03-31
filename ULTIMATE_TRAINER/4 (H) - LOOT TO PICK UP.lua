------------------------------------------------
--------- RANDOM LOOT TO PICK UP ---------------
--------- By PierreDjays -- v1.3 ---------------
------------------------------------------------

spawn01 = spawn01 or function(id)
	local id_table =
{	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"), -- CASH
    Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_gold"), -- GOLD
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a"), -- LINGOT OR
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_b"), -- BOITE DE MEDAILLES
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_c"), -- BAGUE
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_d"), -- COLLIERS ET BIJOUX
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_e"), -- BILLETS ENROULES
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,7)], pos, rot )
end

spawn02 = spawn02 or function(id)
  	local id_table =
	{
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_01"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_02"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_03"),
	-- Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_a"),
	-- Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_b"),
	-- Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_c"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,3)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn03 = spawn03 or function(id)
	local id_table =
{	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"), -- CASH
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_c"), -- BAGUE
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_d"), -- COLLIERS ET BIJOUX
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_e"), -- BILLETS ENROULES
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,4)], pos, rot )
end

spawn04 = spawn04 or function(id)
	local id_table =
{
	-- Idstring("units/payday2/props/com_prop_christmas_gifts/com_prop_christmas_gift_1"),
	-- Idstring("units/payday2/props/com_prop_christmas_gifts/com_prop_christmas_gift_2"),
	-- Idstring("units/payday2/props/com_prop_christmas_gifts/com_prop_christmas_gift_3"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"), -- CASH
    Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_gold"), -- GOLD
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a"), -- LINGOT OR
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_b"), -- BOITE DE MEDAILLES
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_c"), -- BAGUE
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_d"), -- COLLIERS ET BIJOUX
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_e"), -- BILLETS ENROULES
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,7)], pos, rot )
end

spawn05 = spawn05 or function(id)
	local id_table =
{	Idstring("units/payday2/props/gen_prop_methlab_meth/gen_prop_methlab_meth"),
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,1)], pos, rot )
end

spawn06 = spawn06 or function(id)
	local id_table =
{	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"),
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,1)], pos, rot )
end

spawn07 = spawn07 or function(id)
	local id_table =
{	Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,1)], pos, rot )
end

spawn08 = spawn08 or function(id)
	local id_table =
{	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"),
	Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
	Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,3)], pos, rot )
end

spawn09 = spawn09 or function(id)
	local id_table =
	{
	Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
	Idstring("units/payday2/pickups/gen_pku_gold/gen_pku_gold"),
	Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,3)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn10 = spawn10 or function(id)
	local id_table =
{	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a"), -- LINGOT OR
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_b"), -- BOITE DE MEDAILLES
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_c"), -- BAGUE
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_d"), -- COLLIERS ET BIJOUX
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_e"), -- BILLETS ENROULES
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,5)], pos, rot )
end

spawn11 = spawn11 or function(id)
  	local id_table =
	{
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_01"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_02"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_04"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_a"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_b"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_c"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_d"),
	Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_e"),
	-- Idstring("units/world/props/bank/money_wrap/money_wrap_single_bundle"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,8)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn12 = spawn12 or function(id)
	local id_table =
{	Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,1)], pos, rot )
end

spawn13 = spawn13 or function(id)
    local id_table =
{	Idstring("units/payday2/pickups/gen_pku_money_luggage/gen_pku_luggage_money_pile")
}
  local pos = get_crosshair_pos()
  local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
  if not pos or not rot then
    return
  end
  World:spawn_unit(id_table[id or math.random(1,1)], pos, rot )
end

spawn14 = spawn14 or function(id)
	local id_table =
	{
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_1"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_2"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_3"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_4"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_5"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_6"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_7"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_8"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_9"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_10"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_11"),
	Idstring("units/payday2/pickups/gen_pku_fusion_reactor/gen_pku_fusion_reactor_12"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,12)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn15 = spawn15 or function(id)
	local id_table =
	{
	Idstring("units/payday2/pickups/gen_pku_gold/gen_pku_gold"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,1)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn16 = spawn16 or function(id)
	local id_table =
	{
	Idstring("units/payday2/pickups/gen_pku_gold/gen_pku_gold"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"),
	Idstring("units/payday2/pickups/gen_pku_bucket_of_money/gen_pku_bucket_of_money"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,3)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn17 = spawn17 or function(id)
	local id_table =
	{
	Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
	Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
	Idstring("units/payday2/props/ind_prop_murky_suitofarmor_pieces/ind_prop_murky_suitofarmor_piece_3"),
	Idstring("units/payday2/props/ind_prop_murky_suitofarmor_pieces/ind_prop_murky_suitofarmor_piece_2"),
	Idstring("units/payday2/props/ind_prop_murky_suitofarmor_pieces/ind_prop_murky_suitofarmor_piece_1"),
	Idstring("units/payday2/props/ind_prop_murky_suitofarmor_pieces/ind_prop_murky_suitofarmor_piece_4"),
	Idstring("units/payday2/equipment/ind_interactable_hardcase_loot/ind_interactable_hardcase_loot_gold"),
	Idstring("units/payday2/equipment/ind_interactable_hardcase_loot/ind_interactable_hardcase_loot_money"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,8)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

spawn18 = spawn18 or function(id)
	local id_table =
	{
	Idstring("units/payday2/pickups/gen_pku_gold/gen_pku_gold"),
    Idstring("units/payday2/pickups/gen_pku_money/gen_pku_money"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_f"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_g"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_h"),
	Idstring("units/payday2/props/bnk_prop_vault_loot_value_i/bnk_prop_vault_loot_value_i"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_j"),
	Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_k"),
	}
	local pos = get_crosshair_pos()
	local rot = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
	if not pos or not rot then return end
	local unit = World:spawn_unit( id_table[id or math.random(1,8)], pos, rot )
	if unit and unit:interaction() then
	unit:interaction():set_active(true, true)
	end
end

if inChat() then return end
if inGame() and isPlaying() and isHost() then
	
	-- BANK HEIST
	if managers.job:current_level_id() == "branchbank" then
	spawn01()
	
	elseif managers.job:current_level_id() == "jewelry_store" then
	spawn02()

	elseif managers.job:current_level_id() == "roberts" then
	spawn04()
	
	elseif managers.job:current_level_id() == "family" then
	spawn03()
	
	elseif managers.job:current_level_id() == "arm_hcm" then -- DOWNTOWN
	spawn01()
	
	elseif managers.job:current_level_id() == "arm_cro" then -- CROSSROADS
	spawn01()
	
	elseif managers.job:current_level_id() == "arm_fac" then -- HARBOR
	spawn01()
	
	elseif managers.job:current_level_id() == "arm_par" then -- PARK
	spawn01()
	
	elseif managers.job:current_level_id() == "arm_und" then -- UNDERPASS
	spawn01()
	
	elseif managers.job:current_level_id() == "alex_1" then
	spawn05()
	
	elseif managers.job:current_level_id() == "alex_2" then
	spawn06()
	
	elseif managers.job:current_level_id() == "alex_3" then
	spawn13()
	
	elseif managers.job:current_level_id() == "firestarter_1" then
	spawn07()
	
	elseif managers.job:current_level_id() == "firestarter_2" then
	spawn09()
	
	elseif managers.job:current_level_id() == "firestarter_3" then
	spawn01()
	
	elseif managers.job:current_level_id() == "welcome_to_the_jungle_1" then
	spawn08()
	
	elseif managers.job:current_level_id() == "welcome_to_the_jungle_2" then
	spawn14()
	
	elseif managers.job:current_level_id() == "election_day_2" then
	spawn16()
	
	elseif managers.job:current_level_id() == "election_day_3_skip1" then
	spawn06()
	
	elseif managers.job:current_level_id() == "election_day_3_skip2" then
	spawn06()
	
	elseif managers.job:current_level_id() == "mallcrasher" then
	spawn11()
	
	elseif managers.job:current_level_id() == "ukrainian_job" then
	spawn02()
	
	elseif managers.job:current_level_id() == "four_stores" then
	spawn10()
	
	elseif managers.job:current_level_id() == "nightclub" then
	spawn12()
	
	elseif managers.job:current_level_id() == "framing_frame_3" then
	spawn15()
	
	elseif managers.job:current_level_id() == "kosugi" then
	spawn17()
	
	elseif managers.job:current_level_id() == "big" then
	spawn18()
	
	else
	
	if is_french then
		ShowHint("BUTIN SPAWNER (INDISPONIBLE ICI)",3)
	else
		ShowHint("LOOT SPAWNER (UNAVAILABLE HERE)",3)
	end
	
	end
end