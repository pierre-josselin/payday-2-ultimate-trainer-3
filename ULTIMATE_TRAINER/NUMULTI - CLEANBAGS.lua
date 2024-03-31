-- SWIPE BAGS
function bagswipe00()
	local dacollector = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@IDdd16274"
				or id == "@IDee6e754"
				or id == "@IDd8a5306"
				or id == "@ID03777a0"
				or id == "@ID853940b"
				or id == "@ID14f05c3" then
				table.insert(dacollector, v:interaction())
			end
		end
	end
	for _,v in pairs(dacollector) do
		v:interact(managers.player:player_unit())
	end
end

if inChat() then return end
if inGame() and isPlaying() then
bagswipe00()
	if isHost() then
		if is_french then
		ShowHint("PORTER TOUS LES SACS",2)
		else
		ShowHint("CARRY ALL BAGS",2)
		end
	else
		if is_french then
		ShowHint("SUPPRIMER TOUS LES SACS",2)
		else
		ShowHint("DELETE ALL BAGS",2)
		end
	end
end