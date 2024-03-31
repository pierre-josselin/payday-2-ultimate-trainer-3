if inGame() and isPlaying() then

	if not instantinteraction then
	instantinteraction = true
		
		-- ENABLE INSTANT INTERACTION
		if not _getTimer then _getTimer = BaseInteractionExt._get_timer end
		function BaseInteractionExt:_get_timer() return 0.01 end
		
		-- ENABLE INSTANT DEPLOY
		if not _fastDeploy then _fastDeploy = PlayerManager.selected_equipment_deploy_timer end 
		PlayerManager.selected_equipment_deploy_timer = function(self) return 0.01 end
		
		-- ENABLE INSTANT PUT MASK
		if not _fastMask then _fastMask = tweak_data.player.put_on_mask_time end 
		tweak_data.player.put_on_mask_time = 0.01
		
		-- SHOWHINT
		if is_french then
		ShowHint("INTERACTION INSTANTANÉE (ON)",3)
		else
		ShowHint("INSTANT INTERACTION (ON)",3)
		end
	
	else
	instantinteraction = false
	
		-- DISABLE INSTANT INTERACTION
		if _getTimer then
			BaseInteractionExt._get_timer = _getTimer
			_getTimer = nil
		end
		
		-- DISABLE INSTANT DEPLOY
		if _fastDeploy then 
			PlayerManager.selected_equipment_deploy_timer = _fastDeploy
			_fastDeploy = nil
		end
		
		-- DISABLE INSTANT PUT MASK
		if _fastMask then 
			tweak_data.player.put_on_mask_time = _fastMask
			_fastMask = nil
		end
		
		-- SHOWHINT
		if is_french then
		ShowHint("INTERACTION INSTANTANÉE (OFF)",3)
		else
		ShowHint("INSTANT INTERACTION (OFF)",3)
		end
		
	end
	
end