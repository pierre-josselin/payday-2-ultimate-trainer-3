if inGame() and isPlaying() and not inChat() then
	if isHost() then
		if not extentedkeyhost then
		extentedkeyhost = true
			
			BindKey("0x31", "ULTIMATE_TRAINER/1 - AMMO BAG.lua") -- 1
			BindKey("0x32", "ULTIMATE_TRAINER/2 - DOCTOR BAG.lua") -- 2
			BindKey("0x33", "ULTIMATE_TRAINER/3 - TRIPMINE.lua") -- 3
			BindKey("0x34", "ULTIMATE_TRAINER/4 - ECM.lua") -- 4
			BindKey("0x35", "ULTIMATE_TRAINER/5 - SENTRY.lua") -- 5
			BindKey("0x36", "ULTIMATE_TRAINER/6 - SMOKE.lua") -- 6
			BindKey("0x37", "ULTIMATE_TRAINER/7 - FLASH.lua") -- 7
			BindKey("0x38", "ULTIMATE_TRAINER/8 - EXPLODE.lua") -- 8
			BindKey("0x39", "ULTIMATE_TRAINER/9 - EFFECT SPAWNER.lua") -- 9
			
			if is_french then
				ShowHint("HACKS 1 à 9 ACTIVÉS (MODE CLIENT)",3)
			else
				ShowHint("HACKS 1 TO 9 ENABLED (CLIENT MODE)",3)
			end
			
		else
		extentedkeyhost = false
			
			BindKey("0x31", "ULTIMATE_TRAINER/1 (H) - GRENADE CASE.lua") -- 1
			BindKey("0x32", "ULTIMATE_TRAINER/2 (H) - BODYBAG SPAWNER.lua") -- 2
			BindKey("0x33", "ULTIMATE_TRAINER/3 (H) - SPAWN PACKAGES.lua") -- 3
			BindKey("0x34", "ULTIMATE_TRAINER/4 (H) - LOOT TO PICK UP.lua") -- 4
			BindKey("0x35", "ULTIMATE_TRAINER/5 (H) - RANDOM VEHICLE SPAWNER.lua") -- 5
			BindKey("0x36", "ULTIMATE_TRAINER/6 (H) - PROJET X MODE.lua") -- 6
			BindKey("0x37", "ULTIMATE_TRAINER/7 (H) - CLONE CROSSHAIR.lua") -- 7
			BindKey("0x38", "ULTIMATE_TRAINER/8 (H) - HELICOPTERE LAUNCHER.lua") -- 8
			BindKey("0x39", "ULTIMATE_TRAINER/9 (H) - LOOT SPAWNER.lua") -- 9
			
			if is_french then
				ShowHint("HACKS 1 à 9 ACTIVÉS (MODE HOST)",3)
			else
				ShowHint("HACKS 1 TO 9 ENABLED (HOST MODE)",3)
			end
			
		end
	else
		if not extentedkey then
		extentedkey = true
		
			BindKey("0x31", "ULTIMATE_TRAINER/1 - AMMO BAG.lua") -- 1
			BindKey("0x32", "ULTIMATE_TRAINER/2 - DOCTOR BAG.lua") -- 2
			BindKey("0x33", "ULTIMATE_TRAINER/3 - TRIPMINE.lua") -- 3
			BindKey("0x34", "ULTIMATE_TRAINER/4 - ECM.lua") -- 4
			BindKey("0x35", "ULTIMATE_TRAINER/5 - SENTRY.lua") -- 5
			BindKey("0x36", "ULTIMATE_TRAINER/6 - SMOKE.lua") -- 6
			BindKey("0x37", "ULTIMATE_TRAINER/7 - FLASH.lua") -- 7
			BindKey("0x38", "ULTIMATE_TRAINER/8 - EXPLODE.lua") -- 8
			BindKey("0x39", "ULTIMATE_TRAINER/9 - EFFECT SPAWNER.lua") -- 9

			if is_french then
				ShowHint("HACKS 1 à 9 ACTIVÉS",3)
			else
				ShowHint("HACKS 1 TO 9 ENABLED",3)
			end
		
		else
		extentedkey = false
		
			BindKey("0x31", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 1
			BindKey("0x32", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 2
			BindKey("0x33", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 3
			BindKey("0x34", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 4
			BindKey("0x35", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 5
			BindKey("0x36", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 6
			BindKey("0x37", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 7
			BindKey("0x38", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 8
			BindKey("0x39", "ULTIMATE_TRAINER/UNBINDKEYS.lua") -- 9

			if is_french then
				ShowHint("HACKS 1 à 9 DÉSACTIVÉS",3)
			else
				ShowHint("HACKS 1 TO 9 DISABLED",3)
			end
		
		end
	end
end