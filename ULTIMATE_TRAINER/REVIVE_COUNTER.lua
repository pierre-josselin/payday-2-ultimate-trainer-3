	-- START REVIVE COUNTE
	if not HUDTeammate.set_health2 then
	HUDTeammate.set_health2 = HUDTeammate.set_health                  
	local teammate_panel = managers.hud._teammate_panels[ managers.hud.PLAYER_PANEL ]:panel():child( "player" )
	local radial_health_panel = teammate_panel:child( "radial_health_panel" )
	local revives_left = radial_health_panel:text( { name = "revives_left", visible = true, text= "  ", layer = 4, alpha = 0.9, color = Color.white, w = radial_health_panel:w(), x = 0, y = 0, h = radial_health_panel:h(), vertical = "center", align = "center", font_size = 28, font = tweak_data.hud_players.ammo_font } )
	end
	function HUDTeammate:set_health( data )
	local teammate_panel = self._panel:child( "player" )
	local radial_health_panel = teammate_panel:child( "radial_health_panel" )
	local revives_left = radial_health_panel:child( "revives_left" )
	
	if revives_left then
			local revives = data.revives or 1
			local text = "  "
			if( revives >= 1 ) then
					text = "x" .. tostring(revives-1)
			end
			revives_left:set_text( text )
	end
	self:set_health2( data )
	end