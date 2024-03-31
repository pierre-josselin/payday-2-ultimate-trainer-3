if inGame() and isPlaying() and isHost() then
	-- CONVERTIR TOUS LES ENEMIS (BY INFORMATIXA)
	-- INFINITE CONVERSIONS
	if not _upgradeValueIntimidate then _upgradeValueIntimidate = PlayerManager.upgrade_value end function PlayerManager:upgrade_value( category, upgrade, default ) if category == "player" and upgrade == "convert_enemies" then return true elseif category == "player" and upgrade == "convert_enemies_max_minions" then return 99999999 else return _upgradeValueIntimidate(self, category, upgrade, default) end end

	-- CONVERTIR TOUS LES ENNEMIS
	for _, data in pairs(managers.enemy:all_enemies()) do
		if Network:is_server() then
			managers.groupai:state():convert_hostage_to_criminal(data.unit)
		else
			managers.network:session():send_to_host('sync_interacted', data.unit, data.unit:id(), 'hostage_convert')
		end
	end
	if is_french then
	ShowHint("CONVERTIR TOUS LES ENNEMIS",3)
	else
	ShowHint("CONVERT ALL ENEMIES",3)
	end
else
	if is_french then
	ShowHint("CONVERTIR TOUS LES ENNEMIS (HOST UNIQUEMENT)",3)
	else
	ShowHint("CONVERT ALL ENEMIES (HOST ONLY)",3)
	end
end