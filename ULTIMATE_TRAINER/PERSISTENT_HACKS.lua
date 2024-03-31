if not PERSISTENT_HACKS then
	PERSISTENT_HACKS = nil
	
	-- INGAME CHECK
	function inGame()
		if not game_state_machine then return false end
		return string.find(game_state_machine:current_state_name(), "game")
	end

	-- IS PLAYING CHECK
	function isPlaying()
		if not BaseNetworkHandler then return false end
		return BaseNetworkHandler._gamestate_filter.any_ingame_playing[ game_state_machine:last_queued_state_name() ]
	end
	
	-------------------------
	-- FONTIONS NOT INGAME --
	-------------------------
	
	if not inGame() and not _hacksnotingame then
	
		-- ACHETER CONTRATS GRATUITEMENT
		if MoneyManager then
		function MoneyManager:get_cost_of_premium_contract(job_id, difficulty) return 0 end
		end
		
		-- CONTRATS INFINIS
		if managers and managers.crimenet then
			managers.crimenet._NEW_JOB_MIN_TIME = 0
			managers.crimenet._NEW_JOB_MAX_TIME = 0
			managers.crimenet._MAX_ACTIVE_JOBS = 100
		end
		
	_hacksnotingame = true
	end
	
	------------------------------------
	-- FONCTIONS INGAME NOT ISPLAYING --
	------------------------------------
	
	if inGame() and not isPlaying() and not _hacksnotisplaying then
	
		-- ACHETER BIENS GRATUITEMENT
		if MoneyManager then
			function MoneyManager:on_buy_mission_asset( asset_id ) return 0 end
			function MoneyManager:get_mission_asset_cost() return 0 end
			function MoneyManager:get_mission_asset_cost_by_stars( stars ) return 0 end
			function MoneyManager:get_mission_asset_cost_by_id( id ) return 0 end
		end
		
		BindKey("0x31", "ULTIMATE_TRAINER/INFORMATION.lua") -- 1
		BindKey("0x32", "ULTIMATE_TRAINER/INFORMATION.lua") -- 2
		BindKey("0x33", "ULTIMATE_TRAINER/INFORMATION.lua") -- 3
		BindKey("0x34", "ULTIMATE_TRAINER/INFORMATION.lua") -- 4
		BindKey("0x35", "ULTIMATE_TRAINER/INFORMATION.lua") -- 5
		BindKey("0x36", "ULTIMATE_TRAINER/INFORMATION.lua") -- 6
		BindKey("0x37", "ULTIMATE_TRAINER/INFORMATION.lua") -- 7
		BindKey("0x38", "ULTIMATE_TRAINER/INFORMATION.lua") -- 8
		BindKey("0x39", "ULTIMATE_TRAINER/INFORMATION.lua") -- 9
		
	_hacksnotisplaying = true
	end
	
	----------------------
	-- FONCTIONS INGAME --
	----------------------

	if inGame() and isPlaying() and not _hacksisplaying then
	
	if isHost() then
		for _, job in pairs(tweak_data.levels) do
			job.max_bags = 999999
		end
	end
	
	-- FLASHBANGS
	function CoreEnvironmentControllerManager:set_flashbang( flashbang_pos, line_of_sight, travel_dis, linear_dis ) end
	
	-- COMPTEUR DE VIES RESTANTES
	dofiles("ULTIMATE_TRAINER/REVIVE_COUNTER.lua")
	
	-- DÉSACTIVER L'INVULNÉRABILITÉ
	managers.player:player_unit():character_damage():set_god_mode( false )
	
	-- DEPLACER PLUSIEURS CIVILS A LA FOIS
	if tweak_data and tweak_data.player then
		tweak_data.player.max_nr_following_hostages = 100
	end
	
	-- RECOMMENCER MISSIONS MULTI + MISSIONS PRO
	if not _oldIsProfessional then _oldIsProfessional = JobManager.is_current_job_professional end
	if not _newIsProfessional then _newIsProfessional = function(self) return false end end
	if not _lobbyStateEnter then _lobbyStateEnter = IngameLobbyMenuState.at_enter end
	function IngameLobbyMenuState:at_enter()
		JobManager.is_current_job_professional = _newIsProfessional
		_lobbyStateEnter(self)
		JobManager.is_current_job_professional = _oldIsProfessional
	end
	if not _lobbyContinue then _lobbyContinue = GameOverState.continue end
	function GameOverState:continue()
		JobManager.is_current_job_professional = _newIsProfessional
		_lobbyContinue(self)
		JobManager.is_current_job_professional = _oldIsProfessional
	end
	if not _lobbyShutDownNetwork then _lobbyShutDownNetwork = GameOverState._shut_down_network end
	function GameOverState:_shut_down_network( ... )
		JobManager.is_current_job_professional = _newIsProfessional
		_lobbyShutDownNetwork(self, ...)
		JobManager.is_current_job_professional = _oldIsProfessional
	end
	if not _lobbyLoadStartMenu then _lobbyLoadStartMenu = GameOverState._load_start_menu end
	function GameOverState:_load_start_menu( ... )
		JobManager.is_current_job_professional = _newIsProfessional
		_lobbyLoadStartMenu(self, ...)
		JobManager.is_current_job_professional = _oldIsProfessional
	end
	if not _lobbySetBtnText then _lobbySetBtnText = GameOverState._set_continue_button_text end
	function GameOverState:_set_continue_button_text()
		JobManager.is_current_job_professional = _newIsProfessional
		_lobbySetBtnText(self)
		JobManager.is_current_job_professional = _oldIsProfessional
	end
	function MenuCallbackHandler:singleplayer_restart()	return true end

	-- PAS DE PENALITE POUR TUER LES CIVILS
	function MoneyManager.get_civilian_deduction() return 0 end
	function MoneyManager.civilian_killed() return end
	
	-- METTRE LE MASQUE RAPIDEMENT
	tweak_data.player.put_on_mask_time = 1
	
	-- PAS DE DEGATS DE CHUTE
	function PlayerDamage:damage_fall( data )  end
	
	-- ÉTAT DE SAIGNEMENT AVEC N'IMPORTE QUELLE ARME
	if CopDamage then
	if not _copdamagebullet then _copdamagebullet = CopDamage.damage_bullet end
	function CopDamage:damage_bullet( attack_data )
	local result = _copdamagebullet(self, attack_data)
	if result and result.type == "death" and attack_data.attacker_unit == managers.player:player_unit() then
	if attack_data.attacker_unit:character_damage():bleed_out() then
	if not self:_type_civilian( self._unit:base()._tweak_table ) then
	if managers.player:has_category_upgrade( "player", "pistol_revive_from_bleed_out" ) then
	if attack_data.attacker_unit:character_damage():consume_messiah_charge() then
	attack_data.attacker_unit:character_damage():revive( true )
	end end end end end return result end end
	
	-- REGARDER AUTOUR DE SOI PENDANT UNE INTERACTION
	if not _intlookcat then _intlookcat = PlayerStandard._check_action_interact end 
	function PlayerStandard:_check_action_interact( t, input )
	local new_action,timer,interact_object
	local interaction_wanted = input.btn_interact_press
	self._unit:base():set_slot( self._unit, 4 )
	if interaction_wanted then
	local action_forbidden = self:chk_action_forbidden( "interact" ) 
	or self._unit:base():stats_screen_visible() 
	or self:_interacting() 
	or self._ext_movement:has_carry_restriction()
	or self:is_deploying()
	or self:_changing_weapon()
	if not action_forbidden then new_action,timer,interact_object = managers.interaction:interact( self._unit )
	if new_action then self:_play_interact_redirect( t, input ) end
	if timer then new_action = true
	self:_start_action_interact( t, input, timer, interact_object ) end
	new_action = new_action or self:_start_action_intimidate( t ) end end
	if input.btn_interact_release then self:_interupt_action_interact() end return new_action end
	
	-- PAS D'ATTENTE AVANT DE RAMASSER UN SAC
	function PlayerManager:carry_blocked_by_cooldown() return false end
	
	-- ENDURANCE INFINIE
	function PlayerMovement:_change_stamina( value ) end
	function PlayerMovement:is_stamina_drained() return false end
	
	-- CARRRY MODS
	speedcarry = speedcarry or function()
	local car_arr = { 'being', 'mega_heavy', 'heavy', 'medium', 'light', 'coke_light', 'very_heavy' }
	for i, name in ipairs(car_arr) do
	if not tweak_data.carry.types["__" .. name] then tweak_data.carry.types["__" .. name] = clone(tweak_data.carry.types[name])	end
	tweak_data.carry.types[ name ].throw_distance_multiplier = 1 -- DISTANCE DE LANCER DE SAC
	tweak_data.carry.types[ name ].move_speed_modifier = 1 -- VITESSE AVEC UN SAC
	tweak_data.carry.types[ name ].jump_modifier = 1 -- SAUT AVEC UN SAC
	tweak_data.carry.types[ name ].can_run = true -- COURIR AVEC N'IMPORTE QUEL SAC
	end end speedcarry()
	
	-- DOUBLE TAP TO THROW GRENADE (LazyOzzy)
	-- if not _PlayerStandard__check_action_throw_grenade then _PlayerStandard__check_action_throw_grenade = PlayerStandard._check_action_throw_grenade end
	-- function PlayerStandard:_check_action_throw_grenade(t, input)
		-- if input.btn_throw_grenade_press and managers.groupai:state():whisper_mode() and (not self._last_grenade_t or t > self._last_grenade_t + 0.25) then
			-- self._last_grenade_t = t
			-- return
		-- end
		
		-- return _PlayerStandard__check_action_throw_grenade(self, t, input)
	-- end
	
	-- CARRYSTACKER
	if not isHost() then return end
	_debugEnabled = false
	BagIcon = "pd2_loot"
	if not CarryStackerSetupDone then
		CarryStackerSetupDone = true
		if managers and managers.player and IntimitateInteractionExt and CarryInteractionExt then
			managers.player.carry_stack = {}
			managers.player.carrystack_lastpress = 0
			managers.player.drop_all_bags = false
			ofuncs = {
			  managers_player_set_carry = managers.player.set_carry,
			  managers_player_drop_carry = managers.player.drop_carry,
			  IntimitateInteractionExt__interact_blocked = IntimitateInteractionExt._interact_blocked,
			}
			
			function managers.player:refresh_stack_counter()
				local count = #self.carry_stack + (self:is_carrying() and 1 or 0)
				managers.hud:remove_special_equipment("carrystacker")
				if count > 0 then
					managers.hud:add_special_equipment({id = "carrystacker", icon = BagIcon, amount = count})
				end
			end
			
			function managers.player:rotate_stack(dir)
				if #managers.player.carry_stack < 1 or (#managers.player.carry_stack < 2 and not self:is_carrying()) then
					return
				end
				if self:is_carrying() then
					table.insert(self.carry_stack, self:get_my_carry_data())
				end
				if dir == "up" then
					table.insert(self.carry_stack, 1, table.remove(self.carry_stack))
				else
					table.insert(self.carry_stack, table.remove(self.carry_stack, 1))
				end
				local cdata = table.remove(self.carry_stack)
				if cdata then
					if self:is_carrying() then self:carry_discard() end
					ofuncs.managers_player_set_carry(self, cdata.carry_id, cdata.multiplier, cdata.dye_initiated, cdata.has_dye_pack, cdata.dye_value_multiplier, cdata.zipline_unit)
				end
			end

			-- pops an item from the stack when the player drops their carried item
			function managers.player:drop_carry(zipline_unit) 
				ofuncs.managers_player_drop_carry(self, zipline_unit)
				if #self.carry_stack > 0 then
					local cdata = table.remove(self.carry_stack)
					if cdata then
						self:set_carry(cdata.carry_id, cdata.multiplier or 1, cdata.dye_initiated, cdata.has_dye_pack, cdata.dye_value_multiplier, cdata.zipline_unit)
					end
				end
				self:refresh_stack_counter()
				if self.drop_all_bags then
					if #self.carry_stack > 0 or self:is_carrying() then
						self:drop_carry()
					end
					self.drop_all_bags = false
				end
			end

			-- saves the current item to the stack if we're already carrying something
			function managers.player:set_carry(carry_id, carry_multiplier, dye_initiated, has_dye_pack, dye_value_multiplier, zipline_unit)
				if self:is_carrying() and self:get_my_carry_data() then
					table.insert(self.carry_stack, self:get_my_carry_data())
				end
				ofuncs.managers_player_set_carry(self, carry_id, carry_multiplier, dye_initiated, has_dye_pack, dye_value_multiplier, zipline_unit)
				self:refresh_stack_counter()
			end

			-- new function to discard the currently carried item
			function managers.player:carry_discard()
				managers.hud:remove_teammate_carry_info( HUDManager.PLAYER_PANEL )
				managers.hud:temp_hide_carry_bag()
				self:update_removed_synced_carry_to_peers()
				if self._current_state == "carry" then
					managers.player:set_player_state( "standard" )
				end
			end

			-- overridden to prevent blocking us from picking up a dead body
			function IntimitateInteractionExt:_interact_blocked( player )
				if self.tweak_data == "corpse_dispose" then
					if not managers.player:has_category_upgrade( "player", "corpse_dispose" ) then
						return true
					end
					return not managers.player:can_carry( "person" )
				end
				return ofuncs.IntimitateInteractionExt__interact_blocked(self, player)
			end

			-- overridden to always allow us to pick up a carry item
			function CarryInteractionExt:_interact_blocked( player )
				return not managers.player:can_carry( self._unit:carry_data():carry_id() )
			end

			-- overridden to always allow us to select a carry item
			function CarryInteractionExt:can_select( player )
				return CarryInteractionExt.super.can_select( self, player )
			end

			-- custom function. Pushes a carried item to stack and discards it or pops one if we're not carrying anything.
			-- this function is called every time the script gets run.
			function managers.player:carry_stacker()
				if _debugEnabled then
					io.stderr:write("current stack size: ".. tostring(#managers.player.carry_stack) .. "\n")
					if #managers.player.carry_stack > 0 then
						for _,v in pairs(managers.player.carry_stack) do
							io.stderr:write("item: ".. v.carry_id .. "\n")
						end
					end
				end
				local cdata = self:get_my_carry_data()
				if self:is_carrying() and cdata then
					table.insert(self.carry_stack, self:get_my_carry_data())
					self:carry_discard()
					managers.hud:present_mid_text( { title = "Carry Stack", text = cdata.carry_id .. " Pushed", time = 1 } )
				elseif #self.carry_stack > 0 then
					cdata = table.remove(self.carry_stack)
					self:set_carry(cdata.carry_id, cdata.multiplier, cdata.dye_initiated, cdata.has_dye_pack, cdata.dye_value_multiplier, cdata.zipline_unit)
					managers.hud:present_mid_text( { title = "Carry Stack", text = cdata.carry_id .. " Popped", time = 1 } )
				else
					managers.hud:present_mid_text( { title = "Carry Stack", text = "Empty", time = 1 } )
				end
				if (Application:time() - self.carrystack_lastpress) < 0.3 and (self:is_carrying() or #self.carry_stack > 0) then
					self.drop_all_bags = true
					self:drop_carry()
				end
				self.carrystack_lastpress = Application:time()
				self:refresh_stack_counter()
			end
		end
	end
	
	_hacksisplaying = true
	end
end