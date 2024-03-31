addallachievs = addallachievs or function()
	if managers.achievment then
		for id,_ in pairs(managers.achievment.achievments) do
			managers.achievment:award(id)
		end
	end
end

removeallachievs = removeallachievs or function()
	if managers.achievment then
		for id,_ in pairs(managers.achievment.achievments) do
			if managers.achievment:get_info( id ).awarded then
				managers.achievment:clear_steam(id)
			end
		end
	end
end

function giveitems( argumentTable )
    local itype = argumentTable["type"]
    local times = argumentTable["times"]
    
	local types = {"weapon_mods", "masks", "materials", "textures", "colors"}
	local skip = { masks = {"character_locked"}, materials = {"plastic"}, colors = {"nothing"}, textures = {"no_color_full_material","no_color_no_material"} }
	if not times then times = 1 end
		if type(itype) == "table" then types = itype end
		if itype == "all" or type(itype) == "table" then
		for i = 1, #types do giveitems({ ["type"] = types[i], ["times"] = times }) end
		return
	elseif not in_table(types, itype) then return end
	for i=1, times do
		for mat_id,_ in pairs(tweak_data.blackmarket[itype]) do
			if not in_table(skip[itype], mat_id) then
				local global_value = "normal"
				if _.global_value then
				global_value = _.global_value
				elseif _.infamous then
					global_value = "infamous"
				elseif _.dlcs or _.dlc then
				local dlcs = _.dlcs or {}
				if _.dlc then table.insert( dlcs, _.dlc ) end
					global_value = dlcs[ math.random( #dlcs ) ]
				end
				if _.unlocked == false then _.unlocked = true end
			managers.blackmarket:add_to_inventory(global_value, itype, mat_id, false)
			end
		end
    end
end

function clearitems( argumentTable )
    local itype = argumentTable["type"]
    local globalval = argumentTable["globalval"]

    local types = {"weapon_mods", "masks", "materials", "textures", "colors"}
    if not globalval then globalval = "all" end
    if type(itype) == "table" then types = itype end
    if itype == "all" or type(itype) == "table" then
      --for i = 1, #types do clearitems(types[i], globalval) end return
	  for i = 1, #types do clearitems({ ["type"] = types[i], ["globalval"] = globalval }) end

    elseif not in_table(types, itype) then return end
    for global_value, categories in pairs( Global.blackmarket_manager.inventory ) do
            if (globalval == "all" or globalval == global_value) and categories[itype] then
                  for id,amount in pairs( categories[itype] ) do
                -- Global.blackmarket_manager.inventory[global_value][itype][id] = 0
				Global.blackmarket_manager.inventory[global_value][itype][id] = nil
            end
        end
    end
end

resetlevel = resetlevel or function()
	managers.experience :_set_current_level(0)
end

setlevel25 = setlevel25 or function()
	managers.experience :_set_current_level(25)
end

setlevel50 = setlevel50 or function()
	managers.experience :_set_current_level(50)
end

setlevel75 = setlevel75 or function()
	managers.experience :_set_current_level(75)
end

setlevel100 = setlevel100 or function()
	managers.experience :_set_current_level(100)
end

setlevel101 = setlevel101 or function()
	managers.experience :_set_current_level(101)
end

setinfamie0 = setinfamie0 or function()
	managers.experience:set_current_rank(0)
end

setinfamie1 = setinfamie1 or function()
	managers.experience:set_current_rank(1)
end

setinfamie2 = setinfamie2 or function()
	managers.experience:set_current_rank(2)
end

setinfamie3 = setinfamie3 or function()
	managers.experience:set_current_rank(3)
end

setinfamie4 = setinfamie4 or function()
	managers.experience:set_current_rank(4)
end

setinfamie5 = setinfamie5 or function()
	managers.experience:set_current_rank(5)
end

setskill0 = setskill0 or function()
	managers.skilltree:_set_points(0)
end

setskill120 = setskill120 or function()
	managers.skilltree:_set_points(120)
end

setskill580 = setskill580 or function()
	managers.skilltree:_set_points(580)
end

setinfpoints0 = setinfpoints0 or function()
	managers.infamy:_set_points(0)
end

setinfpoints5 = setinfpoints5 or function()
	managers.infamy:_set_points(5)
end

add10kcash = function()
	managers.money : _add_to_total(5000000)
end

resetmoney = function()
	managers.money:_deduct_from_total(999999999999999999999)
	managers.money:_deduct_from_offshore(999999999999999999999)
end

progressmenu = {}
if is_french then
	-- progressmenu[#progressmenu+1] = { text = "AJOUTER TOUS LES SUCCES", callback = addallachievs }
	-- progressmenu[#progressmenu+1] = { text = "RETIRER TOUS LES SUCCES", callback = removeallachievs }
	-- progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET NIVEAU", callback = resetlevel }
	progressmenu[#progressmenu+1] = { text = "25 NIVEAU", callback = setlevel25 }
	progressmenu[#progressmenu+1] = { text = "50 NIVEAU", callback = setlevel50 }
	progressmenu[#progressmenu+1] = { text = "75 NIVEAU", callback = setlevel75 }
	progressmenu[#progressmenu+1] = { text = "100 NIVEAU", callback = setlevel100 }
	progressmenu[#progressmenu+1] = { text = "101 NIVEAU", callback = setlevel101 }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET INFAMIE", callback = setinfamie0 }
	progressmenu[#progressmenu+1] = { text = "I NIVEAU D'INFAMIE", callback = setinfamie1 }
	progressmenu[#progressmenu+1] = { text = "II NIVEAU D'INFAMIE", callback = setinfamie2 }
	progressmenu[#progressmenu+1] = { text = "III NIVEAU D'INFAMIE", callback = setinfamie3 }
	progressmenu[#progressmenu+1] = { text = "IV NIVEAU D'INFAMIE", callback = setinfamie4 }
	progressmenu[#progressmenu+1] = { text = "V NIVEAU D'INFAMIE", callback = setinfamie5 }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET POINTS DE COMP", callback = setskill0 }
	progressmenu[#progressmenu+1] = { text = "120 POINTS DE COMP", callback = setskill120 }
	progressmenu[#progressmenu+1] = { text = "580 POINTS DE COMP", callback = setskill580 }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET L'INVENTAIRE", callback = clearitems, data = { ["type"] = "all", ["globalval"] = "all"}}
	progressmenu[#progressmenu+1] = { text = "+1 POUR CHAQUE ITEM", callback = giveitems, data = { ["type"] = "all", ["times"] = nil} }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET TOUT L'ARGENT", callback = resetmoney }
	progressmenu[#progressmenu+1] = { text = "+1M CASH & +4M OFFSHORE", callback = add10kcash }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RETOUR", is_cancel_button = true }
else
	-- progressmenu[#progressmenu+1] = { text = "ADD ALL ACHIEVEMENTS", callback = addallachievs }
	-- progressmenu[#progressmenu+1] = { text = "REMOVE ALL ACHIEVEMENTS", callback = removeallachievs }
	-- progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET LEVEL", callback = resetlevel }
	progressmenu[#progressmenu+1] = { text = "25 LEVEL", callback = setlevel25 }
	progressmenu[#progressmenu+1] = { text = "50 LEVEL", callback = setlevel50 }
	progressmenu[#progressmenu+1] = { text = "75 LEVEL", callback = setlevel75 }
	progressmenu[#progressmenu+1] = { text = "100 LEVEL", callback = setlevel100 }
	progressmenu[#progressmenu+1] = { text = "101 LEVEL", callback = setlevel101 }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET INFAMY", callback = setinfamie0 }
	progressmenu[#progressmenu+1] = { text = "I INFAMY LEVEL", callback = setinfamie1 }
	progressmenu[#progressmenu+1] = { text = "II INFAMY LEVEL", callback = setinfamie2 }
	progressmenu[#progressmenu+1] = { text = "III INFAMY LEVEL", callback = setinfamie3 }
	progressmenu[#progressmenu+1] = { text = "IV INFAMY LEVEL", callback = setinfamie4 }
	progressmenu[#progressmenu+1] = { text = "V INFAMY LEVEL", callback = setinfamie5 }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET SKILLPOINTS", callback = setskill0 }
	progressmenu[#progressmenu+1] = { text = "120 SKILLPOINTS", callback = setskill120 }
	progressmenu[#progressmenu+1] = { text = "580 SKILLPOINTS", callback = setskill580 }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET INVENTORY", callback = clearitems, data = { ["type"] = "all", ["globalval"] = "all"}}
	progressmenu[#progressmenu+1] = { text = "+1 OF EACH ITEM", callback = giveitems, data = { ["type"] = "all", ["times"] = nil} }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "RESET ALL MONEY", callback = resetmoney }
	progressmenu[#progressmenu+1] = { text = "+1M CASH & +4M OFFSHORE", callback = add10kcash }
	progressmenu[#progressmenu+1] = { text = "", is_cancel_button = true }
	progressmenu[#progressmenu+1] = { text = "EXIT", is_cancel_button = true }
end

if not callprogressmenu then
	callprogressmenu = SimpleMenu:new("PROGRESSION MENU", "By PierreDjays", progressmenu)
end

if not inGame() then
callprogressmenu:show()
end