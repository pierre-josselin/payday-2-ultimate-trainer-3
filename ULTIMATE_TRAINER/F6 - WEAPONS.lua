if inGame() and isPlaying() then

	if not waeponoverkill then
	waeponoverkill = true
		
		-- WEAPON RECOIL
		if not _oldRayCastRecoil then _oldRayCastRecoil = NewRaycastWeaponBase.recoil_multiplier end
		NewRaycastWeaponBase.recoil_multiplier = function(self) return 0 end
		
		-- WEAPON RELOAD SPEED
		if not _oldRayCastReload then _oldRayCastReload = NewRaycastWeaponBase.reload_speed_multiplier end
		NewRaycastWeaponBase.reload_speed_multiplier = function(self) return 1000 end
		
		-- WEAPON SPREAD
		if not _oldRayCastSpread then _oldRayCastSpread = NewRaycastWeaponBase._get_spread end
		NewRaycastWeaponBase._get_spread = function(self) return 0 end
		
		-- WEAPON FIRE RATE
		if not _oldRayCastFrate then _oldRayCastFrate = NewRaycastWeaponBase.fire_rate_multiplier end
		NewRaycastWeaponBase.fire_rate_multiplier = function(self) return 50 end
		
		-- WEAPON SWAP SPEED
		if not _oldRayCastSwap then _oldRayCastSwap = PlayerStandard._get_swap_speed_multiplier end
		PlayerStandard._get_swap_speed_multiplier = function(self) return 1000 end
		
		-- INFINITE AMMO
		if not _onReload then _onReload = RaycastWeaponBase.on_reload end
		function RaycastWeaponBase:on_reload()
			if managers.player:player_unit() == self._setup.user_unit then
				self.set_ammo(self, 1.0)
			else
				_onReload(self)
			end
		end
		if not _fireWep then _fireWep = NewRaycastWeaponBase.fire end
			function NewRaycastWeaponBase:fire( from_pos, direction, dmg_mul, shoot_player, spread_mul, autohit_mul, suppr_mul, target_unit )
			local result = _fireWep( self, from_pos, direction, dmg_mul, shoot_player, spread_mul, autohit_mul, suppr_mul, target_unit )
			if managers.player:player_unit() == self._setup.user_unit and self:get_ammo_total() == 0 then
				self.set_ammo(self, 1.0)
			end
			return result
		end
		-- INFINITE SAW AMMO
		if not _fireSaw then _fireSaw = SawWeaponBase.fire end
			function SawWeaponBase:fire( from_pos, direction, dmg_mul, shoot_player, spread_mul, autohit_mul, suppr_mul, target_unit )
			_fireSaw( self, from_pos, direction, dmg_mul, shoot_player, spread_mul, autohit_mul, suppr_mul, target_unit )
			if managers.player:player_unit() == self._setup.user_unit then
				self.set_ammo(self, 1.0)
			end
		end
		
		-- SHOWHINT
		if is_french then
		ShowHint("ARMES OVERKILL MODE (ON)",3)
		else
		ShowHint("WEAPONS OVERKILL MODE (ON)",3)
		end
	
	else
	waeponoverkill = false
	
		-- WEAPON RECOIL NORMAL
		if _oldRayCastRecoil then 
			NewRaycastWeaponBase.recoil_multiplier = _oldRayCastRecoil
			_oldRayCastRecoil = nil
		end
		-- WEAPON RELOAD NORMAL
		if _oldRayCastReload then 
			NewRaycastWeaponBase.reload_speed_multiplier = _oldRayCastReload
			_oldRayCastReload = nil
		end
		-- WEAPON SPREAD NORMAL
		if _oldRayCastSpread then 
			NewRaycastWeaponBase._get_spread = _oldRayCastSpread
			_oldRayCastSpread = nil
		end
		-- WEAPON FIRE RATE NORMAL
		if _oldRayCastFrate then 
			NewRaycastWeaponBase.fire_rate_multiplier = _oldRayCastFrate
			_oldRayCastFrate = nil
		end
		-- WEAPON SWAP SPEED NORMAL
		if _oldRayCastSwap then 
			PlayerStandard._get_swap_speed_multiplier = _oldRayCastSwap
			_oldRayCastSwap = nil
		end
		
		-- UNLIMITED AMMO OFF
		if _onReload then 
			RaycastWeaponBase.on_reload = _onReload
			_onReload = nil
		end
		-- UNLIMITED SAW OFF
		if _fireSaw then 
			SawWeaponBase.fire = _fireSaw
			_fireSaw = nil
		end

		-- SHOWHINT
		if is_french then
		ShowHint("ARMES OVERKILL MODE (OFF)",3)
		else
		ShowHint("WEAPONS OVERKILL MODE (OFF)",3)
		end
		
	end
	
end