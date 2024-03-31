if managers.job:current_level_id() == "big" then
	if is_french then
		ShowHint("POCOHUD (INDISPONIBLE ICI)",3)
	else
		ShowHint("POCOHUD (UNAVAILABLE HERE)",3)
	end

else
	
	if inGame() and isPlaying() then
		-- LOAD POCO
		if not pocoloaderenabled then
		pocoloaderenabled = true
			dofiles("ULTIMATE_TRAINER/POCOLOADER.luac")
			World:newgui():destroy_all_workspaces()
		end
		-- LAUNCH POCO MAP
		if not pocohudenabled then
		pocohudenabled = true
			dofiles("ULTIMATE_TRAINER/POCOHUD.luac")
			ShowHint("POCOHUD ON")
		else
		pocohudenabled = false
			dofiles("ULTIMATE_TRAINER/POCOHUD.luac")
			ShowHint("POCOHUD OFF")
		end
	end

end