if inGame() and isPlaying() then
	if is_french then
	dofiles("ULTIMATE_TRAINER/F9 (FR) - FREEFLIGHT.lua")
	else
	dofiles("ULTIMATE_TRAINER/F9 (EN) - FREEFLIGHT.lua")
	end
end

-- if not freeflightloaded then
	-- if is_french then
		-- ShowHint("FREEFLIGHT CHARGÉ, APPUYEZ SUR F9",5)
	-- else
		-- ShowHint("FREEFLIGHT LOADED, PRESS F9",5)
	-- end
-- end