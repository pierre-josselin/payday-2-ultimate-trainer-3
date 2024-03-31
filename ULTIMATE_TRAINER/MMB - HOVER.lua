-- FLIGHT MODE
-- By PierreDjays
if inGame() and isPlaying() then
	if flightmode then
		-- FLY MODE - HOVER
		managers.player:player_unit():mover():set_velocity(Vector3(0,0,0))
		managers.player:player_unit():mover():set_gravity( Vector3(0,0,0))
		managers.player:player_unit():mover():jump()
	else
		if is_french then
		ShowHint("POUR ACTIVER LE MODE VOL SUR LA SOURIS, APPUYEZ SUR NUMPAD -",3.5)
		else
		ShowHint("TO ENABLE FLIGHT MODE ON MOUSE PRESS NUMPAD -",3)
		end
	end
end