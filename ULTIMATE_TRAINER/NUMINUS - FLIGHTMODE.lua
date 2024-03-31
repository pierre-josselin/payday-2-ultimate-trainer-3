-- FLIGHT MODE TOOGLE
-- By PierreDjays

if inChat() then return end
if inGame() and isPlaying() then

	if not loadflightmode then
		flightmode = false
		loadflightmode = true
	end
	
	function resetspeedflight()
		-- FLIGHT MODE OVER
		managers.player:player_unit():mover():set_velocity( Vector3(0,0,0) )
		managers.player:player_unit():mover():set_gravity( Vector3( 0, 0,-1500 ) )
		managers.player:player_unit():mover():jump()
	end
	
	if not flightmode then
		if is_french then
			ShowHint("MODE VOL SUR LA SOURIS ACTIVÉ",3)
		else
			ShowHint("FLIGHT MODE ON MOUSE ENABLED",3)
		end
		flightmode = true
	else
		if is_french then
			ShowHint("MODE VOL SUR LA SOURIS DÉSACTIVÉ",3)
		else
			ShowHint("FLIGHT MODE ON MOUSE DISABLED",3)
		end
		resetspeedflight()
		flightmode = false
	end
end