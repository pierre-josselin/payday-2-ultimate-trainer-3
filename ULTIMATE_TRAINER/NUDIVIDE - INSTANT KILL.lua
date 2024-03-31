if inChat() then return end
if inGame() and isPlaying() then
	function MoneyManager.get_civilian_deduction() return 0 end
	function MoneyManager.civilian_killed() return end
	function nukeunit(pawn)
		local col_ray = { }
		col_ray.ray = Vector3(1, 0, 0)
		col_ray.position = pawn.unit:position()
		local action_data = {}
		action_data.variant = "explosion"
		action_data.damage = 2000
		action_data.attacker_unit = managers.player:player_unit()
		action_data.col_ray = col_ray
		pawn.unit:character_damage():damage_explosion(action_data)
	end
	for u_key,u_data in pairs(managers.enemy:all_civilians()) do
		nukeunit(u_data)
	end
	for u_key,u_data in pairs(managers.enemy:all_enemies()) do
		u_data.char_tweak.has_alarm_pager = nil
		nukeunit(u_data)
	end
	if is_french then
	ShowHint("TUER TOUTES LES IA",2)
	else
	ShowHint("KILL ALL AI",2)
	end
end