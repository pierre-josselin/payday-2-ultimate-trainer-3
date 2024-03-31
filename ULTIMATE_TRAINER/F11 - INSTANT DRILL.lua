if inGame() and isPlaying() and isHost() then
	function TimerGui:_set_jamming_values() return end
	function TimerGui:start( timer )
	timer = 0.01
	if self._jammed then
		self:_set_jammed( false )
			return
		end
		
		if not self._powered then
			self:_set_powered( true )
			return
		end
		if self._started then
			return
		end
		self:_start( timer )
		if managers.network:session() then
			managers.network:session():send_to_peers_synched( "start_timer_gui", self._unit, timer )
		end
	end
	if is_french then
		ShowHint("PERçAGE/PIRATAGE INSTANTANÉ",3)
	else
		ShowHint("INSTANT DRILLING/HACKING",3)
	end
else
	if is_french then
		ShowHint("PERçAGE/PIRATAGE INSTANTANÉ (HOST UNIQUEMENT)",3)
	else
		ShowHint("INSTANT DRILLING/HACKING (HOST ONLY)",3)
	end
end