if inChat() then return end
if inGame() and isPlaying() then
	if is_french then
		ShowHint("POUR ACTIVER LE HACK SUR CETTE TOUCHE, APPUYER SUR 0",3)
	else
		ShowHint("TO ENABLE HACK ON THIS KEY, PRESS 0",3)
	end
end