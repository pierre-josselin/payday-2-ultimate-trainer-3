-- GODMODE TOOGLE BY PIERREDJAYS

if inGame() and isPlaying() then
	if invulerability then
	-- GOD MODE OFF
	managers.player:player_unit():character_damage():set_god_mode( false )
	invulerability = false
		if is_french then
		ShowHint("MODE DIEU DÉSACTIVÉ",3)
		else
		ShowHint("GODMODE DISABLED",3)
		end
	else
	-- GOD MODE ON
	managers.player:player_unit():character_damage():set_god_mode( true )
	invulerability = true
		if is_french then
		ShowHint("MODE DIEU ACTIVÉ",3)
		else
		ShowHint("GODMODE ENABLED",3)
		end
	end
end