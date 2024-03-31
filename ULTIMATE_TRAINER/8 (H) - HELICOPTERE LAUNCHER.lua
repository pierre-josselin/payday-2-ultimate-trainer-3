------------------------------------------------
--------- HELICOPTERE LAUNCHER -----------------
--------- By PierreDjays -- v2.0 ---------------
------------------------------------------------

-- REMOVE HELICOPTERE
function removehelico()
   local units = World:unit_manager():get_units()
   for _,u in ipairs( units ) do
      if u:name() == Idstring( "units/payday2/vehicles/air_vehicle_blackhawk/vehicle_blackhawk" ) then
      u:set_slot( 0 )
      end
   end
end

-- LAUNCH HELICOPTERE
function launchhelico()
	dofiles("ULTIMATE_TRAINER/8 (DATA) - HELICOPTERE.luac")
end

if inChat() then return end
if inGame() and isPlaying() and isHost() then
	
	-- BANK HEIST
	if managers.job:current_level_id() == "branchbank"
	
	-- GO BANK
	or managers.job:current_level_id() == "roberts"
	
	-- WATCHDOGS
	or managers.job:current_level_id() == "watchdogs_2"
	
	-- FIRESTARTER
	or managers.job:current_level_id() == "firestarter_1"
	or managers.job:current_level_id() == "firestarter_3"
	
	-- BIG OIL
	or managers.job:current_level_id() == "welcome_to_the_jungle_2"
	
	-- FRAMING FRAME
	or managers.job:current_level_id() == "framing_frame_1"
	
	-- ELECTION DAY
	or managers.job:current_level_id() == "election_day_1"
	or managers.job:current_level_id() == "election_day_2"
	
	-- TRAIN HEIST
	or managers.job:current_level_id() == "arm_for" then
	
		if helicomodeon then
		helicomodeon = false
		
			Control.stop = true
			removehelico()
			
		else
		helicomodeon = true
		
			launchhelico()
		
			if Control.stop then
				Control.stop = false
			end
			
			if PlayerManager then
				function PlayerManager:verify_carry (peer_id, carry_id) return true end
			end
		
			function CoreEnvironmentControllerManager:set_flashbang( flashbang_pos, line_of_sight, travel_dis, linear_dis ) end
			
			if is_french then
				ShowHint("HÉLICOPTÈRE MODE (CONTROLES: TOUCHES FLÈCHES & DÉFILEMENT, SHIFT)",5)
			else
				ShowHint("HELICOPTERE MODE (CONTROLS: SCROLLS & ARROWS KEYS, SHIFT)",5)
			end
		
		end
	
else
	
	if is_french then
		ShowHint("HÉLICOPTÈRE MODE (INDISPONIBLE ICI)",3)
	else
		ShowHint("HELICOPTERE MODE (UNAVAILABLE HERE)",3)
	end
	
	end
	
end