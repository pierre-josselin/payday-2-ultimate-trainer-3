if not GLOBALS_FUNCTIONS then

	-- SIMPLE MENU
	if not SimpleMenu then
		SimpleMenu = class()

		function SimpleMenu:init(title, message, options)
			self.dialog_data = { title = title, text = message, button_list = {},
								 id = tostring(math.random(0,0xFFFFFFFF)) }
			self.visible = false
			for _,opt in ipairs(options) do
				local elem = {}
				elem.text = opt.text
				opt.data = opt.data or nil
				opt.callback = opt.callback or nil
				elem.callback_func = callback(self, self, "_do_callback",
											  { data = opt.data,
												callback = opt.callback})
				elem.cancel_button = opt.is_cancel_button or false
				if opt.is_focused_button then
					self.dialog_data.focus_button = #self.dialog_data.button_list+1
				end
				table.insert(self.dialog_data.button_list, elem)
			end
			return self
		end

		function SimpleMenu:_do_callback(info)
			if info.callback then
				if info.data then
					info.callback(info.data)
				else
					info.callback()
				end
			end
			self.visible = false
		end

		function SimpleMenu:show()
			if self.visible then
				return
			end
			self.visible = true
			managers.system_menu:show(self.dialog_data)
		end

		function SimpleMenu:hide()
			if self.visible then
				managers.system_menu:close(self.dialog_data.id)
				self.visible = false
				return
			end
		end
	end
	patched_update_input = patched_update_input or function (self, t, dt )
		if self._data.no_buttons then
			return
		end
		
		local dir, move_time
		local move = self._controller:get_input_axis( "menu_move" )

		if( self._controller:get_input_bool( "menu_down" )) then
			dir = 1
		elseif( self._controller:get_input_bool( "menu_up" )) then
			dir = -1
		end
		
		if dir == nil then
			if move.y > self.MOVE_AXIS_LIMIT then
				dir = 1
			elseif move.y < -self.MOVE_AXIS_LIMIT then
				dir = -1
			end
		end

		if dir ~= nil then
			if( ( self._move_button_dir == dir ) and self._move_button_time and ( t < self._move_button_time + self.MOVE_AXIS_DELAY ) ) then
				move_time = self._move_button_time or t
			else
				self._panel_script:change_focus_button( dir )
				move_time = t
			end
		end

		self._move_button_dir = dir
		self._move_button_time = move_time
		
		local scroll = self._controller:get_input_axis( "menu_scroll" )
		-- local sdir
		if( scroll.y > self.MOVE_AXIS_LIMIT ) then
			self._panel_script:scroll_up()
			-- sdir = 1
		elseif( scroll.y < -self.MOVE_AXIS_LIMIT ) then
			self._panel_script:scroll_down()
			-- sdir = -1
		end
	end
	if managers and managers.system_menu then
		managers.system_menu.DIALOG_CLASS.update_input = patched_update_input
		managers.system_menu.GENERIC_DIALOG_CLASS.update_input = patched_update_input
	end

	-- LANGUAGE CHECKER (INFORMATIXA)
	if SystemInfo then
		if SystemInfo:language():key() == Idstring("french"):key() then
			is_french = true
		end
	end
	
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
	
	-- HOST CHECK
	function isHost()
		if not Network then return false end
		return not Network:is_client()
	end
	
	-- SHOWHINT
	function ShowHint(message,duration)
		if managers and managers.hud then
			managers.hud:show_hint({text = message,time = duration})
		end
	end
	
	-- MIDTEXT	
	function MidText( message, message_title, duration )
		if managers and managers.hud then
			if not duration then duration = 3 end
			managers.hud:present_mid_text( { text = message_title, title = message, time = duration } )
		end
	end
	
	-- FADING
	function Fading(message,color)
		if managers and managers.mission then
			if not color then color = Color.red end
			managers.mission._fading_debug_output:script().log(message,color)
		end
	end
	
	-- CHATMSG	
	function ChatMsg(username,message,color)
		if not managers or not managers.chat or not message then return end
		if not username then username = managers.network.account:username() end
		managers.chat:receive_message_by_name(1, username, message, color)
	end
	
	--  GET XHAIR POS
	function get_crosshair_pos(penetrate, from_pos, mvec_to)
		local ray = get_crosshair_ray(penetrate, from_pos, mvec_to)
		if not ray then return false end
		return ray.hit_position
	end

	-- IN CROSSHAIR	
	function get_crosshair_ray(penetrate, slotMask)
	  if not slotMask then slotMask = "bullet_impact_targets" end
	  local player = managers.player:player_unit()
	  local fromPos = player:camera():position()
	  local mvecTo = Vector3()
	  mvector3.set(mvecTo, player:camera():forward())
	  mvector3.multiply(mvecTo, 20000)
	  mvector3.add(mvecTo, fromPos)
	  local colRay = World:raycast("ray", fromPos, mvecTo, "slot_mask", managers.slot:get_mask(slotMask))
	  if colRay and penetrate then
			  local offset = Vector3()
					mvector3.set(offset, player:camera():forward())
					mvector3.multiply(offset, 100)
			  mvector3.add(colRay.hit_position, offset)
	  end
	  return colRay
	end
	
	-- COLOR CONVERSION
	function rPad(str, len, char)
	  if len - #str <= 0 then return str end
	  return str .. string.rep(char, len - #str)
	end
	 
	function lPad(str, len, char)
	  if len - #str <= 0 then return str end
	  return string.rep(char, len - #str) .. str
	end
	 
	function HexToDec(Hex) return tonumber("0x"..Hex) end
	function HexToRGB(Hex)
	  Hex = rPad(Hex:gsub("#",""), 6, '0')
	  return { tonumber("0x"..Hex:sub(1,2)), tonumber("0x"..Hex:sub(3,4)), tonumber("0x"..Hex:sub(5,6)) }
	end
	function DecToHex(num)
			if type(num) == "string" then num = tonumber(num) end
			return string.format("%02X", num)
	end
	function toInt(num) return num*255 end
	function toDec(num) return num/255 end
	function HexToVector(Hex)
	  Hex = HexToRGB(Hex)
	  return Vector3(toDec(Hex[1]), toDec(Hex[2]), toDec(Hex[3]))
	end
	function VectorToHex(v)
	  local RGB = { toInt(v.x), toInt(v.y), toInt(v.z) }
	  return DecToHex(RGB[1])..DecToHex(RGB[2])..DecToHex(RGB[3])
	end
	
	-- SAFEHOUSE MULTIPLAYERS (By nd4spd)
	if not MenuCallbackHandler then return end
	function MenuCallbackHandler:play_safehouse( params )
	local yes_func = function()
		managers.job:activate_job ( "branchbank_cash" )
		Global.game_settings.level_id = "safehouse"
		Global.game_settings.mission = managers.job:current_mission()
		Global.game_settings.difficulty = "overkill_145"
		Global.mission_manager.has_played_tutorial = true
		local level_id = tweak_data.levels:get_index_from_level_id( Global.game_settings.level_id )
		local job_id = tweak_data.narrative:get_index_from_job_id( managers.job:current_job_id() )
		managers.network.matchmake:create_lobby( { numbers = { job_id, "overkill_145", "friends_only", nil, nil, 1, 1, 1 } } )
	end
    if params.skip_question then
        yes_func()
        return 
    end
    managers.menu:show_play_safehouse_question( { yes_func = yes_func } )
	end
	
	-- THEME SOMBRE PAYDAY 2
	if World:unit_manager():get_units() then
		local units = World:unit_manager():get_units()
		for _,u in ipairs( units ) do
		  if u:name() == Idstring( "units/menu/menu_scene/menu_cylinder_pattern" ) then
		  u:set_slot( 0 )
		  end
		end
	end
	
	-- HACK VERSION
	Color.red_piratehooking = Color("9F0002")
	if MenuNodeMainGui then
		function MenuNodeMainGui:_setup_item_rows(node)
			MenuNodeMainGui.super._setup_item_rows(self, node)
			if alive(self._version_string) then
				self._version_string:parent():remove(self._version_string)
				self._version_string = nil
			end
			self._version_string = self.ws:panel():text({
				name = "version_string",
				text = "PAYDAY 2 ULTIMATE TRAINER v3.2\nBY PIERREDJAYS (PIRATEHOOKING.COM)", -- text = Application:version(),
				font = tweak_data.menu.pd2_small_font,
				font_size = tweak_data.menu.pd2_small_font_size,
				color = Color.red_piratehooking,
				align = SystemInfo:platform() == Idstring("WIN32") and "right" or "left",
				vertical = "bottom",
				alpha = 1
			})
		end
	end
	
	-- OUTPUT
	function output( message )
		local outputMessage = "[" .. os.date("%H:%M:%S").. "] " .. message .. "\n"
		local logFile = io.open("output.log", "a")
		io.write(outputMessage)
		logFile:write(outputMessage)
		logFile:close()
	end

	-- -- CUSTOM RSS
	-- if NewsFeedGui then
		-- function NewsFeedGui:make_news_request()
		-- Steam:http_request( "http://", callback( self, self, "news_result" ) )
		-- end
	-- end

	-- CONSOLE TEXT
	function Console( text )
		io.stderr:write(text .. "\n")
	end

	-- IS SINGLEPLAYER
	function isSinglePlayer()
		return Global.game_settings.single_player or false
	end
	
	-- IN STEELSIGHT
	function inSteelsight()
		local player = managers.player:local_player()
		local in_steelsight = false
		if player and alive( player ) then
			in_steelsight = player:movement() and player:movement():current_state() and player:movement():current_state():in_steelsight() or false
		end
		return in_steelsight
	end
	
	-- IN TABLE
	function in_table( table, value )
		if table ~= nil then 
			for i,x in pairs(table) do 
				if x == value then 
					return true 
				end
			end
		end
		return false
	end
	
	-- ISHOSTAGE CHECK
	function isHostage(unit)
		if unit and alive(unit) and
			((unit.brain and unit:brain().is_hostage and unit:brain():is_hostage()) or
			(unit.anim_data and (unit:anim_data().tied or unit:anim_data().hands_tied))) then
			return true
		end
	return false
	end
	
	-- INCHAT CHECK
	function inChat()
		if managers.hud._chat_focus == true then
			return true
		end
	end
	
	-- DISABLE ANTICHEAT
	if not PlayerManager then return end
	if not NetworkMember then return end
	function PlayerManager:verify_carry (peer_id, carry_id) return true end
	function NetworkMember:place_deployable(id) return true end
	function NetworkMember:place_bag (carry_id, amount) return true end
	function NetworkMember:set_grenade (value) return true end
	function PlayerManager:verify_equipment(peer_id, equipment_id) return true end
	function PlayerManager:verify_grenade(peer_id) return true end
	function PlayerManager:register_grenade(peer_id) return true end
	

GLOBALS_FUNCTIONS = true
end