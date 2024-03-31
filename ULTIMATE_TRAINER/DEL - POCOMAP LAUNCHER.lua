if managers.job:current_level_id() == "big" then
	if is_french then
		ShowHint("POCOMAP (INDISPONIBLE ICI)",3)
	else
		ShowHint("POCOMAP (UNAVAILABLE HERE)",3)
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
		if not pocomapenabled then
		pocomapenabled = true
			dofiles("ULTIMATE_TRAINER/POCOMAP.luac")
			ShowHint("POCOMAP ON")
		else
		pocomapenabled = false
			dofiles("ULTIMATE_TRAINER/POCOMAP.luac")
			ShowHint("POCOMAP OFF")
		end
	end

end