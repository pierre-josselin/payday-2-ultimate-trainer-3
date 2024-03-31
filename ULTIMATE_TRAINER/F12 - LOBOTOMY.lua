-- LOBOTOMY DIRTY SCRIPT
if inGame() and isPlaying() and isHost() then
	if not _actionRequest then _actionRequest = CopMovement.action_request end
	function CopMovement:action_request( action_desc )
		if action_desc.variant == "run" then return false end
		return _actionRequest(self, action_desc)
	end
	function GroupAIStateBase:on_police_called( called_reason ) end 
	function GroupAIStateBase:on_police_weapons_hot( called_reason ) end 
	function GroupAIStateBase:on_gangster_weapons_hot( called_reason ) end 
	function GroupAIStateBase:on_enemy_weapons_hot( is_delayed_callback ) end 
	function GroupAIStateBase:add_alert_listener( id, clbk, filter_num, types, m_pos ) end
	function GroupAIStateBase:criminal_spotted( unit ) end 
	function GroupAIStateBase:report_aggression( unit ) end 
	function GroupAIStateBase:propagate_alert( alert_data ) end
	function GroupAIStateBase:on_criminal_suspicion_progress( u_suspect, u_observer, status ) end
	function PlayerMovement:on_suspicion( observer_unit, status ) end 
	function SecurityCamera:_upd_suspicion( t ) end 
	function SecurityCamera:_sound_the_alarm( detected_unit ) end 
	function SecurityCamera:_set_suspicion_sound( suspicion_level ) end
	function CopMovement:on_suppressed( state ) end
	function CopLogicBase._get_logic_state_from_reaction( data, reaction ) return "idle" end
	function CopLogicIdle.on_alert( data, alert_data ) end
	function CopMovement:set_cool( state, giveaway ) end
	function GroupAIStateBase:set_whisper_mode( enabled ) end
	function CopBrain:set_objective( new_objective ) end
		if is_french then
			ShowHint("IA LOBOTOMOISÉES",3)
		else
			ShowHint("AI LOBOTOMIZED",3)
		end
else	
		if is_french then
			ShowHint("LOBOTOMISER LES IA (HOST UNIQUEMENT)",3)
		else
			ShowHint("LOBOTOMIZED AI (HOST ONLY)",3)
		end
end