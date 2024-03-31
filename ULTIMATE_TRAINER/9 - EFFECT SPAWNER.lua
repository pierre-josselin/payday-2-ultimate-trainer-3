--------------------------------------
------- EFFECT SPAWNER ---------------
------- By PierreDjays -- v1.0 -------
--------------------------------------

if inChat() then return end
if inGame() and isPlaying() then

	if initeffect then
		World:effect_manager():spawn( { effect = Idstring( effet ), position = get_crosshair_ray().hit_position, rotation = managers.player:player_unit():rotation() } )
	end

	if not initeffect then

		effects = effects or class()

		loadeffect = { }

		loadeffect[1] = function()
		-- if is_french then
			-- ShowHint("EXPLOSIONS MUNITIONS",2)
		-- else
			ShowHint("AMMO BAGS EXPLOSIONS",2)
		-- end
			effet = "effects/payday2/particles/explosions/bag_explosion"
		end
		loadeffect[2] = function()
		-- if is_french then
			-- ShowHint("FUMÉE PERSISTENTE",2)
		-- else
			ShowHint("PERSISTENT SMOKE",2)
		-- end
			effet = "effects/particles/explosions/smoke_grenade_smoke"
		end
		loadeffect[3] = function()
		-- if is_french then
			-- ShowHint("ÉLECTRICITÉ 1",2)
		-- else
			ShowHint("ELECTRICITY 1",2)
		-- end
			effet = "effects/payday2/particles/character/taser_hittarget"
		end
		loadeffect[4] = function()
		-- if is_french then
			-- ShowHint("ÉLECTRICITÉ 2",2)
		-- else
			ShowHint("ELECTRICITY 2",2)
		-- end
			effet = "effects/payday2/particles/character/taser_thread"
		end
		loadeffect[5] = function()
		-- if is_french then
			-- ShowHint("LAMPE VERTE",2)
		-- else
			ShowHint("GREEN LIGHT",2)
		-- end
			effet = "effects/particles/weapons/flashlight_spooky/flashlight"
		end
		loadeffect[6] = function()
		-- if is_french then
			-- ShowHint("LAMPE BLANCHE",2)
		-- else
			ShowHint("WHITE LIGHT",2)
		-- end
			effet = "effects/particles/weapons/flashlight/flashlight"
		end
		loadeffect[7] = function()
		-- if is_french then
			-- ShowHint("EXPLOSION MINE",2)
		-- else
			ShowHint("TRIPMINE EXPLOSION",2)
		-- end
			effet = "effects/particles/explosions/explosion_grenade"
		end
		loadeffect[8] = function()
		-- if is_french then
			-- ShowHint("EXPLOSION C4",2)
		-- else
			ShowHint("C4 EXPLOSION",2)
		-- end
			effet = "effects/payday2/particles/explosions/shapecharger_explosion"
		end
		loadeffect[9] = function()
		-- if is_french then
			-- ShowHint("EXPLOSION GRENADE",2)
		-- else
			ShowHint("GRENADE EXPLOSION",2)
		-- end
			effet = "effects/particles/explosions/explosion_grenade_launcher"
		end
		-- loadeffect[10] = function()
		-- -- if is_french then
			-- -- ShowHint("GRENADE FLASH",2)
		-- -- else
			-- ShowHint("FLASH GRENADE",2)
		-- -- end
			-- effet = "effects/particles/explosions/explosion_flash_grenade"
		-- end
		loadeffect[10] = function()
		-- if is_french then
			-- ShowHint("PETIT FEU",2)
		-- else
			ShowHint("SMALL FIRE",2)
		-- end
			effet = "effects/particles/fire/small_light_fire"
		end
		loadeffect[11] = function()
		-- if is_french then
			-- ShowHint("ÉTINCELLES",2)
		-- else
			ShowHint("SPARKS",2)
		-- end
			effet = "effects/payday2/particles/explosions/sparks/sparks"
		end
		loadeffect[12] = function()
		-- if is_french then
			-- ShowHint("FUMÉE TOXIQUE",2)
		-- else
			ShowHint("TOXIC SMOKE",2)
		-- end
			effet = "effects/payday2/particles/dye_pack/dye_pack_smoke"
		end
		loadeffect[13] = function()
		-- if is_french then
			-- ShowHint("SANG",2)
		-- else
			ShowHint("BLOOD",2)
		-- end
			effet = "effects/payday2/particles/impacts/blood/blood_collection_a"
		end
		loadeffect[14] = function()
		-- if is_french then
			-- ShowHint("PAPIER",2)
		-- else
			ShowHint("PAPER",2)
		-- end
			effet = "effects/payday2/particles/impacts/paper_impact_pd2"
		end
		loadeffect[15] = function()
		-- if is_french then
			-- ShowHint("FUMÉE",2)
		-- else
			ShowHint("SMOKE",2)
		-- end
			effet = "effects/payday2/particles/explosions/smoke_explosion/dark_smoke_big"
		end

		function TimeSpeedManager:update()
			if self._playing_effects then
				self:_update_playing_effects()
			end

			function effects:change_effect()
				loadeffect[effects.new_effect]()
			end

			if Input:mouse():pressed( Idstring("mouse wheel down") ) then 
				effects.new_effect = effects.new_effect and effects.new_effect + 1 or 1
				
				if effects.new_effect > #loadeffect then
					effects.new_effect = 1
				end
				
				effects:change_effect()
			end   

			if Input:mouse():pressed( Idstring("mouse wheel up") ) then 
				effects.new_effect = effects.new_effect and effects.new_effect - 1 or 1
				
				if effects.new_effect < 1 then
					effects.new_effect = #loadeffect
				end
				
				effects:change_effect()
			end
		end
		
		if is_french then
		ShowHint("EFFETS SPAWNER ACTIVÉ (MOLETTE SOURIS)",5)
		else
		ShowHint("EFFECTS SPAWNER ENABLED (MOUSE WHEEL)",5)
		end
		
		effet = "effects/payday2/particles/explosions/bag_explosion"
		
		initeffect = true
		
	end
	
end