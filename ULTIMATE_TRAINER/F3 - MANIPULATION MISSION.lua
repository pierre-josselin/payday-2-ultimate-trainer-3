-- ENABLE INTERACTION WITH ANYTHING
enableinteract = enableinteract or function()
	function BaseInteractionExt:_has_required_upgrade() return true 
	end
	function BaseInteractionExt:_has_required_deployable() return true 
	end
	function BaseInteractionExt:can_interact(player) return true 
	end
	function PlayerManager:remove_equipment( equipment_id ) 
	end
end

if inGame() then
	if not _hasUpgrade then _hasUpgrade = BaseInteractionExt._has_required_upgrade end
	if not _hasDeploy then _hasDeploy = BaseInteractionExt._has_required_deployable end
	if not _canInteract then _canInteract = BaseInteractionExt.can_interact end
	if not _infEquip then _infEquip = PlayerManager.remove_equipment end
end

-- DISABLE INTERACTION WITH ANYTHING
disableinteract = disableinteract or function()
	if _infEquip then 
		PlayerManager.remove_equipment = _infEquip
		_infEquip = nil
	end
	if _hasUpgrade then 
		BaseInteractionExt._has_required_upgrade = _hasUpgrade
		_hasUpgrade = nil
	end
	if _hasDeploy then 
		BaseInteractionExt._has_required_deployable = _hasDeploy
		_hasDeploy = nil
	end
	if _canInteract then 
		BaseInteractionExt.can_interact = _canInteract
		_canInteract = nil
	end
end

-- OPEN ATMS
instantatms = instantatms or function()
enableinteract()
	local instantopenatms = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@IDc403e02" then
				table.insert(instantopenatms, v:interaction())
			end
		end
	end
	for _,v in pairs(instantopenatms) do
		v:interact(managers.player:player_unit())
	end
disableinteract()
takeatms()
end

-- TAKE ATMS
takeatms = takeatms or function()
	local instanttakeatms = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@ID44ceafc" then
				table.insert(instanttakeatms, v:interaction())
			end
		end
	end
	for _,v in pairs(instanttakeatms) do
		v:interact(managers.player:player_unit())
	end
end

-- ANSWER INFINITE PAGERS (HOST)
infpager = infpager or function()
	if isHost() then
		function GroupAIStateBase:on_successful_alarm_pager_bluff() end
	end
end

-- INSTANT PAGER + MAKE BODYBAGS
instantpager = instantpager or function()
	infpager()
	local instantrepager = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
            if id == "@ID5f999cd"
            or id == "@IDbc5cb61"
            or id == "@IDec389a6"
            or id == "@ID251fa9a"
            or id == "@ID12c8ead"
            or id == "@ID70001a6"
            or id == "@IDf948122"    
            or id == "@ID37b151e" 
            or id == "@ID1cb5b43" 
            or id == "@ID04d05fd" 
            or id == "@ID74750f7" 
            or id == "@IDb608290"
            or id == "@ID0c32627" 
            or id == "@IDb3c7b54" 
            or id == "@IDb3098c7" 
            or id == "@IDdce5cb6" then
				table.insert(instantrepager, v:interaction())
			end
		end
	end
	for _,v in pairs(instantrepager) do
		v:interact(managers.player:player_unit())
end
end
	


-- BOARD UP WINDOWS
instaboardst = instaboardst or function()
	enableinteract()
		local boardwin = {}
		local id
		for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
		id = string.sub(v:interaction()._unit:name():t(), 1, 10)
		if id == "@IDb71bf75" 
		or id == "@IDb71bf75" 
		or id == "@IDb55faf1"  
		or id == "@IDb55faf1"		
		or id == "@ID4738b25"
		or id == "@IDb524e47" then
		table.insert(boardwin, v:interaction())
		end
		end
		end
		for _,v in pairs(boardwin) do
		v:interact(managers.player:player_unit())
		end
	disableinteract()
end
	
-- ANSWER PHONECALLS
callcentert = callcentert or function()
	local phoney = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@IDd5e1a53"
			or id == "@ID6dbc2f1"
			or id == "@IDba2c036" then
					table.insert(phoney, v:interaction())
			end
		end
	end
	for _,v in pairs(phoney) do
		v:interact(managers.player:player_unit())
end
end
	
-- PLACE DRILL ON DOORS / RESTART DRILL
thrilldrillt = thrilldrillt or function()
	local drilldo = {} --interacting while looping invalidates the table, so we have to build a list
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@ID584bea0"
				or id == "@ID1f6a50d"
				or id == "@ID51001ab"
				or id == "@IDf594e56" then
					table.insert(drilldo, v:interaction())
			end
		end
	end
	for _,v in pairs(drilldo) do
		v:interact(managers.player:player_unit())
	end
end

-- Bankbuster v2
bankbuster = bankbuster or function()
		local depositboxes = {}
		local id
		for _,v in pairs(managers.interaction._interactive_objects) do
			if v.interaction then
				id = string.sub(v:interaction()._unit:name():t(), 1, 10)
                if id == "@ID7999172" -- Harvest Bank
                or id == "@IDe4bc870" or id == "@ID51da6d6" or id == "@ID8d8c766" or id == "@ID50aac55" or id == "@ID5dcd177" --Armoured Transport
                or id == "@IDa95e021" -- The Big Bank
                or id == "@IDe93c9b2" then -- GO Bank
						table.insert(depositboxes, v:interaction())
				end
			end
		end
		for _,v in pairs(depositboxes) do
			v:interact(managers.player:player_unit())
		end
end
	
-- HACK COMPUTERS AND KEYPADS
		instahackzt = instahackzt or function()
		local h4x0r = {} 
		local id
		for _,v in pairs(managers.interaction._interactive_objects) do
			if v.interaction then
				id = string.sub(v:interaction()._unit:name():t(), 1, 10)
				if id == "@ID58cb6c4" 
				or id == "@ID2721ad0"
				or id == "@ID5a95fe8" then
				table.insert(h4x0r, v:interaction())
				end
			end
		end
		for _,v in pairs(h4x0r) do
			v:interact(managers.player:player_unit())
		end
end
	
	-- OPEN ALL DOORS
	picklockst = picklockst or function()
		local locksmith = {}
		local id
		for _,v in pairs(managers.interaction._interactive_objects) do
			if v.interaction then
				id = string.sub(v:interaction()._unit:name():t(), 1, 10)
				if id == "@IDe653b95"
					or id == "@ID18a7cac"
					or id == "@IDa25106d"
					or id == "@IDb025e83"
					or id == "@ID08a3353"
					or id == "@ID851f323"
					or id == "@ID8e70272"
					or id == "@ID1d283db"
					or id == "@ID5a95fe8"
					or id == "@ID622b34c"
					or id == "@ID1e56fe5"
					or id == "@IDa096513"
					or id == "@IDcfb8d38"
					or id == "@IDb68beff" 
					or id == "@IDcfb8d38"
					or id == "@ID31ccfa0" 
					or id == "@IDe653b95"
					or id == "@IDd40d72e" then
					table.insert(locksmith, v:interaction())
				end
			end
		end
		for _,v in pairs(locksmith) do
			v:interact(managers.player:player_unit())
		end
	end
	
	-- USE KEYCARD
	usekeycardt = usekeycardt or function()
	enableinteract()
		local usekey = {}
		local id
		for _,v in pairs(managers.interaction._interactive_objects) do
			if v.interaction then
				id = string.sub(v:interaction()._unit:name():t(), 1, 10)
				if id == "@ID15d846f"
					or id == "@ID2a72308" then
					table.insert(usekey, v:interaction())
				end
			end
		end
		for _,v in pairs(usekey) do
			v:interact(managers.player:player_unit())
		end
	disableinteract()
	end
	
	-- TIE ALL CIVs
	instanttie = instanttie or function()
	tweak_data.player.max_nr_following_hostages = 0
	for var=0, 10 do
	managers.player:add_special( { name = "cable_tie", silent = true, amount = 6 } )
		local instanttieciv = {}
		local id
		for _,v in pairs(managers.interaction._interactive_objects) do
			if v.interaction then
				id = string.sub(v:interaction()._unit:name():t(), 1, 10)
            if id == "@ID893a2aa"
            or id == "@ID865aa97"
            or id == "@IDe7f916e"
            or id == "@ID56274e2"
            or id == "@IDf4e9df0"
            or id == "@ID7dfc5ad"
            or id == "@ID4ee3cfd"
            or id == "@ID2dcc26b"
            or id == "@IDc612514"
            or id == "@IDb72d492"
            or id == "@ID73b42c5"
            or id == "@ID8082fc9" 
            or id == "@IDf671c5b"
            or id == "@IDfabac6a"
            or id == "@ID65a4d37"
            or id == "@ID82c1367"
            or id == "@IDd2cd406"
            or id == "@IDf5bf094"
            or id == "@IDe6dc508"
            or id == "@ID37f340c"
            or id == "@ID3977a65"
            or id == "@IDd32946c"
            or id == "@ID0a36b0e"
            or id == "@ID874bd00"
            or id == "@IDf580340"
            or id == "@IDf8a42d5"
            or id == "@ID8e3b805"
            or id == "@ID2d92fc5"
            or id == "@ID8bf66ca"
            or id == "@ID154e120"
            or id == "@ID968e895"
            or id == "@ID4ac6f5c"
            or id == "@IDe7f916e"
            or id == "@ID56274e2"
            or id == "@IDc3287f9"
            or id == "@ID20be7dd"
            or id == "@ID9b7d4a5"
            or id == "@ID60dc40c"
            or id == "@ID3365ded"
            or id == "@ID034cb33"
            or id == "@IDc33b54b"
            or id == "@IDa52aab4"
            or id == "@IDb780676"
            or id == "@ID088fb46"
            or id == "@ID2f41fce"
            or id == "@ID75aade3"
            or id == "@IDd1bb1dd"
            or id == "@IDd441d40"
            or id == "@ID2819d79"
            or id == "@ID5c583b9" then
					table.insert(instanttieciv, v:interaction())
				end
			end
		end
		for _,v in pairs(instanttieciv) do
			v:interact(managers.player:player_unit())
		end
	end
	tweak_data.player.max_nr_following_hostages = 100
	end
	
-- INSTANT REVIVE ALL PLAYERS
helpplayers = helpplayers or function()
	local helpallplayers = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@ID548b003" -- JOUEURS
			or id == "@IDfd9d02c" -- IA 1
			or id == "@ID297d2df" -- IA 2
			or id == "@IDb4d6124" -- IA 3
			or id == "@ID7490829" -- IA 4
			then
					table.insert(helpallplayers, v:interaction())
			end
		end
	end
	for _,v in pairs(helpallplayers) do
		v:interact(managers.player:player_unit())
	end
end

-- INSTANT TAKE BODYBAGS
takebodybags = takebodybags or function()
for var=0, 2 do
	local instanttakebodybags = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@IDa163786" then
					table.insert(instanttakebodybags, v:interaction())
			end
		end
	end
	for _,v in pairs(instanttakebodybags) do
		v:interact(managers.player:player_unit())
	end
end
end

-- INSTANT OPEN & HACK VOTES MACHINES
instantmachines = instantmachines or function()
managers.player:add_special( { name = "crowbar", silent = true, amount = 1 } )
	local instanthackmachines = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@IDd90bf4a"
			or id == "@ID0275b3e"	then
					table.insert(instanthackmachines, v:interaction())
			end
		end
	end
	for _,v in pairs(instanthackmachines) do
		v:interact(managers.player:player_unit())
end
end

-- INSTANT GRAB ALL COURIER PACKAGES
grabcourier = grabcourier or function()
	local grabcourierpackages = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@ID05956ff"
			or id == "@IDc90378a"
			or id == "@ID96504eb"
			or id == "@IDb3cc2ab"
			or id == "@IDe8088e3"	then
					table.insert(grabcourierpackages, v:interaction())
			end
		end
	end
	for _,v in pairs(grabcourierpackages) do
		v:interact(managers.player:player_unit())
	end
end

-- COUCHER TOUS LES CIVILS (BY INFORMATIXA)
civilsdown = civilsdown or function()
	for _, data in pairs(managers.enemy:all_civilians()) do
		data.unit:brain():on_intimidated(100, managers.player:player_unit())
	end
end

-- TAKE SMALL LOOT/JEWELRY (SIRGOODSMOKE)
takesmloot = takesmloot or function()
    local instanttakesmloot = {}
    local id
    for _,v in pairs(managers.interaction._interactive_objects) do
        if v.interaction then
            id = string.sub(v:interaction()._unit:name():t(), 1, 10)
            if id == "@IDd6fc428" 
                or id =="@ID769ac9a"
                or id =="@IDf736cdb"
                or id =="@ID641e583"
                or id =="@ID0e428c3" 
                or id =="@IDdd18732"
                or id =="@IDea013ef"
                or id =="@IDe194346" 
				or id =="@ID8c6bb6d" 
                or id =="@IDb432d06" 
                or id =="@ID7e650b9"
                or id =="@IDb1a8cbf" 
                or id =="@ID775261e" 
                or id =="@ID4a0b869"
				or id =="@ID8c6bb6d" 
                or id =="@ID6b344f6"
                or id =="@ID92c7be1"
                or id =="@ID825640d"
                or id =="@ID9abf89f"
                or id =="@ID676ca75"
                or id =="@IDc7452f7"
                or id =="@ID2d997f1"
                or id =="@IDde0a426"
                or id =="@ID32d0ad9"
                or id =="@ID34542ba" then
                table.insert(instanttakesmloot, v:interaction())
            end
        end
    end
    for _,v in pairs(instanttakesmloot) do
        v:interact(managers.player:player_unit())
    end
end

-- OUVRIR LES COFFRES (HORS TITAN)
openvaults = openvaults or function()
enableinteract()
	local openallvaults = {}
	local id
	for _,v in pairs(managers.interaction._interactive_objects) do
		if v.interaction then
			id = string.sub(v:interaction()._unit:name():t(), 1, 10)
			if id == "@ID3e96491"
			or id == "@IDd2e9092"
			or id == "@ID8834e3a" then
				table.insert(openallvaults, v:interaction())
			end
		end
	end
	for _,v in pairs(openallvaults) do
		v:interact(managers.player:player_unit())
	end
disableinteract()
end
	
actioninst = {}
if is_french then
	actioninst[#actioninst+1] = { text = "ALERTER / COUCHER LES CIVILS", callback = civilsdown }
	actioninst[#actioninst+1] = { text = "ATTACHER / BODYBAGER LES CIVILS", callback = instanttie }
	actioninst[#actioninst+1] = { text = "DÉMARRER / RÉDÉMARRER PERçEUSES", callback = thrilldrillt }
	actioninst[#actioninst+1] = { text = "RAMASSER LES PAQUETS GAGE COURRIER", callback = grabcourier }
	actioninst[#actioninst+1] = { text = "OUVRIR LES COFFRES (HORS TITAN)", callback = openvaults }
	actioninst[#actioninst+1] = { text = "PIRATER LES ORDINATEURS / PADS", callback = instahackzt }
	actioninst[#actioninst+1] = { text = "PAGERS / BODYBAGER LES GARDES", callback = instantpager }
	actioninst[#actioninst+1] = { text = "OUVRIR LES COFFRES DE SURETÉ", callback = bankbuster }
	actioninst[#actioninst+1] = { text = "OUVRIR LES PORTES / FENÊTRES", callback = picklockst }
	actioninst[#actioninst+1] = { text = "RAMASSER TOUT LE PETIT BUTIN", callback = takesmloot }
	actioninst[#actioninst+1] = { text = "BARRICADER LES FENÊTRES", callback = instaboardst }
	actioninst[#actioninst+1] = { text = "RÉPONDRE AU TÉLÉPHONE", callback = callcentert }
	actioninst[#actioninst+1] = { text = "INSÉRER LES KEYCARDS", callback = usekeycardt }
	actioninst[#actioninst+1] = { text = "RELEVER LES JOUEURS", callback = helpplayers }
	-- actioninst[#actioninst+1] = { text = "RÉCUPÉRER DES BODYBAGS", callback = takebodybags }
	actioninst[#actioninst+1] = { text = "OUVRIR LES ATMS", callback = instantatms }
	actioninst[#actioninst+1] = { text = "", is_cancel_button = true }
	actioninst[#actioninst+1] = { text = "RETOUR", is_cancel_button = true }
else
	actioninst[#actioninst+1] = { text = "ALERT / GET DOWN CIVILIANS", callback = civilsdown }
	actioninst[#actioninst+1] = { text = "TIE / BODYBAG CIVILIANS", callback = instanttie }
	actioninst[#actioninst+1] = { text = "START / RESTART DRILLS", callback = thrilldrillt }
	actioninst[#actioninst+1] = { text = "GRAB COURRIER PACKAGES", callback = grabcourier }
	actioninst[#actioninst+1] = { text = "OPEN CHESTS (NOT TITAN)", callback = openvaults }
	actioninst[#actioninst+1] = { text = "HACK COMPUTERS / PADS", callback = instahackzt }
	actioninst[#actioninst+1] = { text = "PAGER / BODYBAG GUARDS", callback = instantpager }
	actioninst[#actioninst+1] = { text = "OPEN DEPOSIT BOXES", callback = bankbuster }
	actioninst[#actioninst+1] = { text = "OPEN DOORS / WINDOWS", callback = picklockst }
	actioninst[#actioninst+1] = { text = "GRAB ALL SMALL LOOT", callback = takesmloot }
	actioninst[#actioninst+1] = { text = "BARRICADE WINDOWS", callback = instaboardst }
	actioninst[#actioninst+1] = { text = "INSERT KEYCARDS", callback = usekeycardt }
	actioninst[#actioninst+1] = { text = "REVIVE PLAYERS", callback = helpplayers }
	actioninst[#actioninst+1] = { text = "ANSWER PHONE", callback = callcentert }
	-- actioninst[#actioninst+1] = { text = "RÉCUPÉRER DES BODYBAGS", callback = takebodybags }
	actioninst[#actioninst+1] = { text = "OPEN ATMS", callback = instantatms }
	actioninst[#actioninst+1] = { text = "", is_cancel_button = true }
	actioninst[#actioninst+1] = { text = "EXIT", is_cancel_button = true }
end

if not actioninstmenu then
	if is_french then
	actioninstmenu = SimpleMenu:new("MANIPULATEUR DE MISSION MENU", "By PierreDjays", actioninst)
	else
	actioninstmenu = SimpleMenu:new("MISSION MANIPULATOR MENU", "By PierreDjays", actioninst)
	end
end

if inGame() then
	actioninstmenu:show()
else
	dofiles("ULTIMATE_TRAINER/F3  - PROGRESSION MENU.lua")
end