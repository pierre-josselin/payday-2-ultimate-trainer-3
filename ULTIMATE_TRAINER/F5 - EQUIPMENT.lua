if inGame() and isPlaying() then

	if not infiniteequipment then
	infiniteequipment = true
		
		-- ENABLE INTERACT WITH ANYTHING
		if not _hasUpgrade then _hasUpgrade = BaseInteractionExt._has_required_upgrade end
		if not _hasDeploy then _hasDeploy = BaseInteractionExt._has_required_deployable end
		if not _canInteract then _canInteract = BaseInteractionExt.can_interact end
		function BaseInteractionExt:_has_required_upgrade() return true end
		function BaseInteractionExt:_has_required_deployable() return true end
		function BaseInteractionExt:can_interact(player) return true end
		
		-- ENABLE INFINITE EQUIPEMENT
		if not _infEquip then _infEquip = PlayerManager.remove_equipment end
		function PlayerManager:remove_equipment( equipment_id ) end
		
		-- ENABLE INFINITE CABLES TIE
		if not _infTies then _infTies = PlayerManager.remove_special end
		function PlayerManager:remove_special( name ) end
		
		-- ENABLE INFINITE GRENADES
		if not _infGrenades then _infGrenades = PlayerManager.on_throw_grenade end
		function PlayerManager:on_throw_grenade() self:add_grenade_amount( 0 ) end
		managers.player:add_grenade_amount(3)
		
		-- ENABLE INFINITE BODYBAGS
		if not _infBodybags then _infBodybags = IntimitateInteractionExt._interact_blocked end
		old_interact_blocked = old_interact_blocked or IntimitateInteractionExt._interact_blocked
		function IntimitateInteractionExt:_interact_blocked( ... )
			if self.tweak_data == "hostage_convert" then
				return not (managers.player:has_category_upgrade( "player", "convert_enemies" ) and not managers.player:chk_minion_limit_reached() )
			elseif self.tweak_data == "corpse_dispose" and not managers.player.carry_stack then
				if not managers.player:has_category_upgrade( "player", "corpse_dispose" ) or managers.player:is_carrying() then
					return true
				end
				return not managers.player:can_carry( "person" )
			else
				return old_interact_blocked(self, ...)
			end
		end
		managers.interaction._interact_blocked = IntimitateInteractionExt._interact_blocked
		
		-- SHOWHINT
		if is_french then
		ShowHint("EQUIPEMENT ILLIMITÉ (ON)",3)
		else
		ShowHint("UNLIMITED EQUIPMENT (ON)",3)
		end
		
	else
	infiniteequipment = false
	
		-- DISABLE INTERACT WITH ANYTHING
		if _hasUpgrade then 
			BaseInteractionExt._has_required_upgrade = _hasUpgrade
			_hasUpgrade = nil
		end
		if _hasDeploy then 
			BaseInteractionExt._has_required_deployable = _hasDeploy
			_hasDeploy = nil
		end
		if _canInteract then 
			BaseInteractionExt.can_interact = _canInteract
			_canInteract = nil
		end
		
		-- DISABLE INFINITE EQUIPEMENT
		if _infEquip then 
			PlayerManager.remove_equipment = _infEquip
			_infEquip = nil
		end
		
		-- DISABLE INFINITE CABLES TIE
		if _infTies then
			PlayerManager.remove_special = _infTies
			_infTies = nil
		end
		
		-- DISABLE INFINITE GRENADES
		if _infGrenades then
			PlayerManager.on_throw_grenade = _infGrenades
			_infGrenades = nil
		end
		
		-- DISABLE INFINITE BODYBAGS
		if _infBodybags then
			IntimitateInteractionExt._interact_blocked = _infBodybags
			_infBodybags = nil
		end

		-- SHOWHINT
		if is_french then
		ShowHint("EQUIPEMENT ILLIMITÉ (OFF)",3)
		else
		ShowHint("UNLIMITED EQUIPMENT (OFF)",3)
		end
		
	end
	
end