if inGame() and isPlaying() then
	-- TOGGLE SLOWMO
	SLOWMO_WORLD_ONLY = nil -- possible values 'nil' or 'true'
	if string.find(game_state_machine:current_state_name(), "game") then
		our_id = "_MaskOn_Peer"..tostring( managers.network:session():local_peer():id() )
		slowmo_id_world = "world" .. our_id
		slowmo_id_player = "player" .. our_id
		if not _timeEffectExpired then
			-- Enable
			_timeEffectExpired = TimeSpeedManager._on_effect_expired
			function TimeSpeedManager:_on_effect_expired( effect_id )
				local ret = _timeEffectExpired(self, effect_id)
				-- Check if we are in-game
				if string.find(game_state_machine:current_state_name(), "game") then
					-- Restart each effect
					if effect_id == slowmo_id_world then
						managers.time_speed:play_effect( slowmo_id_world, tweak_data.timespeed.mask_on )
					elseif effect_id == slowmo_id_player and not SLOWMO_WORLD_ONLY then
						managers.time_speed:play_effect( slowmo_id_player, tweak_data.timespeed.mask_on_player )
					end
				end
				return ret
			end
			tweak_data.timespeed.mask_on.fade_in_delay = 0
			tweak_data.timespeed.mask_on.fade_out = 0
			tweak_data.timespeed.mask_on_player.fade_in_delay = 0
			tweak_data.timespeed.mask_on_player.fade_out = 0
			managers.time_speed:play_effect( slowmo_id_world, tweak_data.timespeed.mask_on )
			if not SLOWMO_WORLD_ONLY then 
				managers.time_speed:play_effect( slowmo_id_player, tweak_data.timespeed.mask_on_player ) 
			end
			ShowHint("SLOWMOTION ON",0.5)
		else
			-- Disable
			TimeSpeedManager._on_effect_expired = _timeEffectExpired
			_timeEffectExpired = nil

			if managers.time_speed._playing_effects then
				for id,_ in pairs(managers.time_speed._playing_effects) do
					if string.find(id, our_id) then
						managers.time_speed:stop_effect(id)
					end
				end
			end
			SoundDevice:set_rtpc( "game_speed", 1 )
			ShowHint("SLOWMOTION OFF",2)
		end
	end
end