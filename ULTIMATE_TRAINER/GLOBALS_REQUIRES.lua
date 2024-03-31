if RequiredScript == "lib/setups/setup" then
	core:import( "CoreFreeFlight" )
	Global.DEBUG_MENU_ON = true
--end
elseif RequiredScript == "lib/setups/gamesetup" then
	function GameSetup:_update_debug_input() end
end


