---------------------------------------------
------- AUTO LOOT SPAWN v2.1b ---------------
------- By: SirGoodsmoke and Hejoro ---------
------- Inspired By: PierreDjays ------------
------- Interaction Fix: Hejoro, LazyOzzy ---
------- Helped/Added Positions: Maelform ----
---------------------------------------------
if inChat() then return end
randrot = randrot or function()
        local rr = math.random(-360,360)
        local rot = Rotation(rr)
        return rot
end
bank = bank or function()
        local id_brandomloot = {
                Idstring("units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing"),
                false, false
        }
       
        local rand = id_brandomloot[math.random(#id_brandomloot)]
       
        local randloot = math.random(3)
        if randloot == 1 then local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 717, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 750, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 123.450) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 127.999) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 772, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 123.520) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 127.999) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 131.999) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 794, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-257.969, 2713.74, 75.0786) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end end
       
        if randloot == 2 then local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 717, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 750, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 119.499) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end end
       
        if randloot == 3 then local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 717, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 119.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 123.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 127.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 131.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 728, 135.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 739, 119.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 750, 119.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 750, 123.499) ),
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 123.450) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 127.999) ),
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 761, 131.999) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 772, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 119.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 123.520) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 127.999) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 131.999) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 783, 135.999) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 794, 119.499) ),        
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 794, 123.499) ),
               
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-2331, 794, 127.499) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-257.969, 2713.74, 75.0786) )          
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end end
       
        local objects = {
                rand and World:spawn_unit( rand,
                Vector3(-1965, 49, 0), Rotation(-90) )
        }
        for k,v in pairs(objects) do if v then v:base():activate() end end
end
 
diamondstore = diamondstore or function()
        local id_dsrandomloot = {
                Idstring("units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing"),
                false, false
        }
        local id_dsrandomloot1 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_05x05_titan/gen_interactable_sec_safe_05x05_titan"),
                false, false
        }
        local rand = id_dsrandomloot[math.random(#id_dsrandomloot)]
        local rand1 = id_dsrandomloot[math.random(#id_dsrandomloot)]
        local rand2 = id_dsrandomloot[math.random(#id_dsrandomloot)]
        local rand4 = id_dsrandomloot1[math.random(#id_dsrandomloot1)]
        local rand5 = id_dsrandomloot1[math.random(#id_dsrandomloot1)]
 
        local spawns = {
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/item_money_bundle" ),
                Vector3(1727.56, -972.974, 482.00), randrot()),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/item_money_bundle" ),
                Vector3(1275.75, -1095.61, 477), Rotation(46) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/item_money_bundle" ),
                Vector3(1269.04, -1087.36, 477), Rotation(46) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/item_money_bundle" ),
                Vector3(1260.04, -1081.36, 477), Rotation(46) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/item_money_bundle" ),
                Vector3(1665.36, -1036.66, 480.46), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashbox/com_prop_store_cashbox" ),
                Vector3(1817, -2552, 69), Rotation(103) ),
 
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
 
        local objects = {
                rand and World:spawn_unit( rand,
                Vector3(447, -2686, 0), Rotation(-90) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(447, 367, 0), Rotation(-90) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(2354, -3219, 0), Rotation(90) )
        }
        for k,v in pairs(objects) do if v then v:base():activate() end end
 
        autoloot_containers = {}
        local randcontents = math.random(2)
                if rand4 and randcontents == 1 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand4,
                Vector3(1600, -1149, 500), Rotation(360) ),
                        "door_opened"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money" ),'
                .. 'Vector3(1570, -1174, 508), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
                if rand4 and randcontents == 2 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand4,
                Vector3(1600, -1149, 500), Rotation(360) ),
                        "door_opened"
                },
        }) end
        if rand5 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand5,
                Vector3(1475, -1012, 500), Rotation(180) ),
                        "door_opened"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money" ),'
                .. 'Vector3(1505, -989, 508), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
 
gobank = gobank or function()
        local id_gbrandomloot = {
                Idstring("units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing"),
                false
        }
        local rand = id_gbrandomloot[math.random(#id_gbrandomloot)]
        local rand1 = id_gbrandomloot[math.random(#id_gbrandomloot)]
        local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1086, -1481, 38.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1086, -1481, 42.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1086, -1481, 46.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1086, -1481, 50.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1086, -1481, 54.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1073, -1481, 38.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1073, -1481, 42.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-690, -1481, 38.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-690, -1481, 42.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-690, -1481, 46.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-676, -1481, 38.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-676, -1481, 42.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-676, -1481, 46.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-676, -1481, 50.1733), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(-859.464, 1625.68, 42), Rotation(186.5) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(-35, -3894, 36), Rotation(180) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(-362, -4053, 36), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(3654, -237, 40), Rotation(-90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(3853, -237, 40), Rotation(-90) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
 
        local objects = {
                rand and World:spawn_unit( rand,
                Vector3(3571, 196, -66), Rotation(90) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(64, -5195, -71.1), Rotation(-90) ),
        }
        for k,v in pairs(objects) do if v then v:base():activate() end end
end
 
firestarterd2 = firestarterd2 or function()
        local id_fsd2randomloot = {
                Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
                Idstring("units/payday2/pickups/gen_pku_money/gen_pku_money"),
                false, false
        }
        local id_fsd2randomloot1 = {
                Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
                false
        }
        local id_fsd2randomloot2 = {
                Idstring("units/payday2/pickups/gen_pku_gold/gen_pku_gold"),
                false, false, false
        }
        local fsd2pos1 = {Vector3(50, -326, 156), Vector3(50, -326, 0)}
        local rand1 = id_fsd2randomloot[math.random(#id_fsd2randomloot)]
        local rand2 = id_fsd2randomloot[math.random(#id_fsd2randomloot)]
        local rand3 = id_fsd2randomloot[math.random(#id_fsd2randomloot)]
        local rand4 = id_fsd2randomloot[math.random(#id_fsd2randomloot)]
        local rand5 = id_fsd2randomloot[math.random(#id_fsd2randomloot)]
        local rand6 = id_fsd2randomloot1[math.random(#id_fsd2randomloot1)]
        local rand7 = id_fsd2randomloot1[math.random(#id_fsd2randomloot1)]
        local rand8 = id_fsd2randomloot2[math.random(#id_fsd2randomloot2)]
        local spawns = {
                rand6 and World:spawn_unit( rand6,
                Vector3(50, -130, 48) ),
 
                rand7 and World:spawn_unit( rand7,
                Vector3(50, -130, 102) ),
 
                rand1 and World:spawn_unit( rand1,
                fsd2pos1[math.random(1,2)], Rotation(-90) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(50, -426, 156), Rotation(-90) ),
 
                rand3 and World:spawn_unit( rand3,
                Vector3(400, -397, 156) ),
 
                rand4 and World:spawn_unit( rand4,
                Vector3(400, -302, 156) ),
 
                rand5 and World:spawn_unit( rand5,
                Vector3(400, -302, 0), Rotation(-90) ),
 
                rand8 and World:spawn_unit( rand8,
                Vector3(400, -217, 14), Rotation(-170) )
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
end
 
ratsday2 = ratsday2 or function()
        local id_rd2randomloot = {
                Idstring("units/payday2/pickups/gen_pku_money/gen_pku_money"),
                false
        }
        local id_rd2randomloot1 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_1x1/gen_interactable_sec_safe_1x1"),
                false, false
        }
        local rand = id_rd2randomloot[math.random(#id_rd2randomloot)]
        local rand1 = id_rd2randomloot[math.random(#id_rd2randomloot)]
        local rand2 = id_rd2randomloot[math.random(#id_rd2randomloot)]
        local rand3 = id_rd2randomloot1[math.random(#id_rd2randomloot1)]
        local spawns = {
                rand and World:spawn_unit( rand,
                Vector3(2124.36, 721.045, 71.4853), randrot() ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(555.447, 2171.96, 120.5), Rotation(90) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(710.592, 1700.15, 19.5101) )
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
 
        autoloot_containers = {}
        local randcontents = math.random(3)
        if rand3 and randcontents == 1 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand3,
                Vector3(2470, 2297, 0), Rotation(360) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(2432, 2227, 7), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(2432, 2268, 7), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(2425, 2227, 49), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(2435, 2257, 49), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(2435, 2267, 49), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(2435, 2277, 49), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
                if rand3 and randcontents == 2 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand3,
                Vector3(2470, 2297, 0), Rotation(360) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(2432, 2227, 7), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(2432, 2268, 7), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
                if rand3 and randcontents == 3 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand3,
                Vector3(2470, 2297, 0), Rotation(360) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(2425, 2227, 49), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(2435, 2257, 49), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(2435, 2267, 49), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(2435, 2277, 49), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
 
ratsday3 = ratsday3 or function()
        local spawns = {
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_money_luggage/gen_pku_money_luggage"),
                Vector3(10899.1, 23901, 2065.99), Rotation(-90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_money_luggage/gen_pku_luggage_money_pile"),
                Vector3(10899.1, 23901, 2065.99), Rotation(-90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_money_luggage/gen_pku_money_luggage"),
                Vector3(10899.1, 23747, 2065.99), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_money_luggage/gen_pku_luggage_money_pile"),
                Vector3(10899.1, 23747, 2065.99), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_money_luggage/gen_pku_money_luggage"),
                Vector3(10810.9, 23746, 2063.26), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_money_luggage/gen_pku_luggage_money_pile"),
                Vector3(10810.9, 23746, 2063.26), Rotation(90) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
end
 
fourstores = fourstores or function()
        local id_fsrandomloot = {
                Idstring("units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing"),
                false
        }
        local id_fsrandomloot1 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_2x05/gen_interactable_sec_safe_2x05"),
                false, false
        }
        local id_fsrandomloot2 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_05x05/gen_interactable_sec_safe_05x05"),
                false
        }
        local rand = id_fsrandomloot[math.random(#id_fsrandomloot)]
        local rand1 = id_fsrandomloot1[math.random(#id_fsrandomloot1)]
        local rand2 = id_fsrandomloot2[math.random(#id_fsrandomloot2)]
        local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(1469.53, -6262.85, 61.0976), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(1372.47, -6229.6, 53.1498), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-568.64, -5735.98, 98.2283), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-605.937, -5733.94, 98.2283), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashbox/com_prop_store_cashbox" ),
                Vector3(-362, -5010, 125), Rotation(-90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashbox/com_prop_store_cashbox" ),
                Vector3(560, -4734, 14), Rotation(180) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashbox/com_prop_store_cashbox" ),
                Vector3(560, -4804, 14), Rotation(180) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
 
        local objects = {
                rand and World:spawn_unit( rand,
                Vector3(285, -4182, 25), Rotation(-90) ),
        }
        for k,v in pairs(objects) do if v then v:base():activate() end end
 
        autoloot_containers = {}
        if rand1 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand1,
                 Vector3(-921, -5461, 26), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_01" ),'
                .. 'Vector3(-883, -5500, 110), Rotation(180,65,0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(-905, -5487, 33.1028), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_a" ),'
                .. 'Vector3(-890, -5487, 33.1028), Rotation(-90) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        if rand2 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand2,
                 Vector3(-462, -1099, 102), Rotation(349) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_e" ),'
                .. 'Vector3(-501.572, -1118, 109.103), Rotation(349) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
 
ukranianjob = ukranianjob or function()
        local id_ukrandomloot1 = {
                Idstring("units/world/props/luxury_props/luxury_necklace_box_1"),
                Idstring("units/world/props/luxury_props/luxury_necklace_box_2")
        }
        local id_ukrandomloot2 = {
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_a"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_b"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_c")
        }
        local id_ukrandomloot3 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_1x1/gen_interactable_sec_safe_1x1"),
                false, false
        }
        local id_ukrandomloot4 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_05x05/gen_interactable_sec_safe_05x05"),
                false, false
        }
        id_ukrandomloot5 = {
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_01"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_02"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_03"),
                false
        }
        local rand = id_ukrandomloot3[math.random(#id_ukrandomloot3)]
        local rand1 = id_ukrandomloot4[math.random(#id_ukrandomloot4)]
        local rand2 = id_ukrandomloot5[math.random(#id_ukrandomloot5)]
        local rand3 = id_ukrandomloot5[math.random(#id_ukrandomloot5)]
        local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-697.64, -1114.36, 100), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-739.765, -1127.37, 100), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-852.138, -1114.8, 100), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(450.692, -1336.07, 114.476), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(561.633, -369.788, 143.055), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(221.756, 660.496, 125.055), randrot() ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(240, -1765, 125), randrot() ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(806, 612, 149), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(806, 654, 149), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(806, -50, 149), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(806, -50, 201), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, -292, 200.1), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, -292, 150), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 347, 114), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 302, 114), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 247, 114), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 200, 114), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 247, 150), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 200, 150), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 347, 150), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(803, 302, 150), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 347, 184), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 302, 216.5), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 247, 216.5), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 200, 216.5), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 347, 216.5), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 302, 184), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 247, 184), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(803, 200, 184), Rotation(360) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 110, 184), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 154, 184), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349., 110, 150), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349, 154, 150), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349., 110, 114), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349, 154, 114), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349., 210, 114), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349, 255, 114), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349., 210, 150), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-349, 255, 150), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 110, 216.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 154, 216.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 210, 184), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 210, 216.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 255, 184), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-349, 255, 216.5), Rotation(180) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(-1040, -1056, 127.5), Rotation(180) ),
 
                rand3 and World:spawn_unit( rand3,
                Vector3(-756, -845, 114.524), Rotation(90) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 545, 150), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 651, 150), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 651, 200.1), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 699, 150), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 699, 200.1), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 751, 150), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, 751, 200.1), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(-353, -49, 200.1), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(599.5, -585, 148), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot2[math.random(3)],
                Vector3(599.5, -585, 198), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(353, -1776, 144.5), Rotation (-187) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(439, -1770, 114.1), Rotation (180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-410, -839, 125), Rotation(-90) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(498, -1028, 94.5), Rotation(0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(450, -1028, 94.5), Rotation(0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(498, -1028, 62.5), Rotation(0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(450, -1028, 62.5), Rotation(0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(498, -1028, 31.5), Rotation(0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(450, -1028, 31.5), Rotation(0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-783, -823, 115), Rotation (0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(-687, -823, 115), Rotation (0) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(292, -1765, 94.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(244, -1765, 94.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(292, -1765, 62.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(244, -1765, 62.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(292, -1765, 31.5), Rotation(180) ),
 
                World:spawn_unit( id_ukrandomloot1[math.random(2)],
                Vector3(244, -1765, 31.5), Rotation(180) ),
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
 
        autoloot_containers = {}
        local randcontents = math.random(4)
        if rand and randcontents == 1 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
 
                'local rand4 = id_ukrandomloot5[math.random(#id_ukrandomloot5)]'
                ..'\nlocal unit = rand4 and World:spawn_unit('
                .. 'rand4,'
                .. 'Vector3(715, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
 
                'local rand5 = id_ukrandomloot5[math.random(#id_ukrandomloot5)]'
                ..'\nlocal unit = rand5 and World:spawn_unit('
                .. 'rand5,'
                .. 'Vector3(665, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(675, -1720, 75), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -1720, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -1710, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(685, -1730, 32), Rotation(360) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
       
        if rand and randcontents == 2 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
 
                'local rand4 = id_ukrandomloot5[math.random(#id_ukrandomloot5)]'
                ..'\nlocal unit = rand4 and World:spawn_unit('
                .. 'rand4,'
                .. 'Vector3(715, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
 
                'local rand5 = id_ukrandomloot5[math.random(#id_ukrandomloot5)]'
                ..'\nlocal unit = rand5 and World:spawn_unit('
                .. 'rand5,'
                .. 'Vector3(665, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
        }) end
       
        if rand and randcontents == 3 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(675, -1720, 75), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -17420, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -1710, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(685, -1730, 32), Rotation(360) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
       
        if rand and randcontents == 4 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(685, -1730, 32), Rotation(360) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
       
        if rand1 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand1,
                 Vector3(-525, -1550, 125), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 132.103), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 132.103), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 132.103), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 136.503), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 136.503), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 136.503), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 140.903), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 140.903), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 140.903), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 145.303), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 145.303), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 145.303), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 149.703), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 149.703), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 149.703), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 154.103), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 154.103), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 154.103), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-490, -1568.9, 158.503), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-499.7, -1568.9, 158.503), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(-509.4, -1568.9, 158.503), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
        })
        end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
 
 
mallcrasher = mallcrasher or function()
        World:spawn_unit( Idstring(
        "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bracelet_hanger" ),
        Vector3(-1745, -427, 501), Rotation(180) )
 
        World:spawn_unit( Idstring(
        "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bracelet_hanger" ),
        Vector3(-1494, -21, 501), Rotation(90) )
 
        World:spawn_unit( Idstring(
        "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bracelet_hanger"),
        Vector3(-1504.99, -282.52, 501), Rotation(360) )
 
        local id_mcrandomloot1 = {
                Idstring("units/payday2/props/com_prop_jewelry_bag/jewelry_necklace_box_1"),
                Idstring("units/payday2/props/com_prop_jewelry_bag/jewelry_necklace_box_2")
        }
        local id_mcrandomloot2 = {
                Idstring("units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing"),
                false
        }
        local rand = id_mcrandomloot2[math.random(#id_mcrandomloot2)]
        local rand1 = id_mcrandomloot2[math.random(#id_mcrandomloot2)]
        local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-1311.34, -266.751, 501), Rotation(90) ),
 
                World:spawn_unit( id_mcrandomloot1[math.random(1,2)],
                Vector3(-1500, -340, 470), Rotation(-50) ),
 
                World:spawn_unit( id_mcrandomloot1[math.random(1,2)],
                Vector3(-1500, -429, 470), Rotation(-125) ),
 
                World:spawn_unit( id_mcrandomloot1[math.random(1,2)],
                Vector3(-1295, -340, 470), Rotation(50) ),
 
                World:spawn_unit( id_mcrandomloot1[math.random(1,2)],
                Vector3(-1295, -429, 470), Rotation(125) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bracelet" ),
                Vector3(-1504.99, -282.52, 501), Rotation(360) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bracelet" ),
                Vector3(-1494, -21, 501), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bracelet" ),
                Vector3(-1745, -427, 501), Rotation(180) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
 
        local objects = {
                rand and World:spawn_unit( rand,
                Vector3(-914, -1599, 0), Rotation(-90) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(368, -26, -9), Rotation(90) )
        }
        for k,v in pairs(objects) do if v then v:base():activate() end end
end
 
bigoilday1 = bigoilday1 or function()
        local id_bo1randomloot = {
                Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
                Idstring("units/payday2/pickups/gen_pku_money/gen_pku_money"),
                false, false
        }
        local id_bo1randomloot1 = {
                Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
                false
        }
        local rand = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand1 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand2 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand3 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand4 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand5 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand6 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand7 = id_bo1randomloot[math.random(#id_bo1randomloot)]
        local rand8 = id_bo1randomloot1[math.random(#id_bo1randomloot1)]
        local rand9 = id_bo1randomloot1[math.random(#id_bo1randomloot1)]
        local rand10 = id_bo1randomloot1[math.random(#id_bo1randomloot1)]
        local rand11 = id_bo1randomloot1[math.random(#id_bo1randomloot1)]
        local bo1pos1 = {Vector3(2774, -3013, 302), Vector3(2774, -3013, 356)}
        local bo1pos2 = {Vector3(2774, -2910, 302), Vector3(2774, -2910, 356)}
        local spawns = {
                rand8 and World:spawn_unit( rand8,
                Vector3(503, -6814, 15), Rotation(180) ),
 
                rand9 and World:spawn_unit( rand9,
                Vector3(98, -6361.088, 81), Rotation(0) ),
 
                rand10 and World:spawn_unit( rand10,
                Vector3(98, -6247, 81), Rotation(0) ),
 
                rand11 and World:spawn_unit( rand11,
                Vector3(2503, -6673, 10), Rotation(0) ),
 
                rand and World:spawn_unit( rand,
                Vector3(2503, -6558, 80), Rotation(90) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(2503, -6673, 80), Rotation(90) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(2774, -2910, 248), Rotation(90) ),
 
                rand3 and World:spawn_unit( rand3,
                Vector3(2774, -3013, 248), Rotation(90) ),
 
                rand4 and World:spawn_unit( rand4,
                bo1pos1[math.random(2)], Rotation(90) ),
 
                rand5 and World:spawn_unit( rand5,
                bo1pos2[math.random(2)], Rotation(90) ),
 
                rand6 and World:spawn_unit( rand6,
                Vector3(3177, -2723, 650), Rotation(0) ),
 
                rand7 and World:spawn_unit( rand7,
                Vector3(2977, -27196, 600), randrot() )
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
end
 
bigoilday2 = bigoilday2 or function()
        local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/luxury_props/luxury_necklace_box_1" ),
                Vector3(-1510.13, -2361.65, 445.266), Rotation(180) ),
 
                World:spawn_unit( Idstring(
                "units/world/props/luxury_props/luxury_necklace_box_1" ),
                Vector3(-1074.48, -2242.82, 502.499), Rotation(-90) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
end
 
jewels = jewels or function()
        local rr = math.random(-180,180)
        local rot = Rotation(rr)
        local id_jsrandomloot1 = {
                Idstring("units/world/props/luxury_props/luxury_necklace_box_1"),
                Idstring("units/world/props/luxury_props/luxury_necklace_box_2")
        }
        local id_jsrandomloot2 = {
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_a"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_b"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_bust_c")
        }
        id_jsrandomloot3 = {
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_01"),
                Idstring("units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_02"),
                false
        }
        local id_jsrandomloot4 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_1x1/gen_interactable_sec_safe_1x1"),
                false, false
        }
        local rand = id_jsrandomloot4[math.random(#id_jsrandomloot4)]
        local spawns = {
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(458.885, -1353.05, 114.476), rot ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(498.444, -1316.81, 114.476), rot ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-742.608, -1142.51, 100), rot ),
 
                World:spawn_unit( Idstring(
                "units/world/props/bank/money_wrap/money_wrap_single_bundle" ),
                Vector3(-782.136, -1151.92, 100), rot ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(-355, 176, 200.1), Rotation (180) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(-355, 425, 200.1), Rotation (180) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(-355, 472, 200.1), Rotation (180) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(-355, 524, 200.1), Rotation (180) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(-355, 320, 150), Rotation (180) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(-355, 524, 150), Rotation (180) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(505, -1018, 200.1), Rotation (90) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(505, -1020, 150), Rotation (90) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(700, -1020, 200.1), Rotation (90) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(700, -1018, 150), Rotation (90) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(345, -1018, 150), Rotation (90) ),
 
                World:spawn_unit( id_jsrandomloot2[math.random(1,3)],
                Vector3(302, -1018, 150), Rotation (90) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(356, -1771, 144.5), Rotation (-187) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(439, -1770, 114.1), Rotation (-180) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(-737, -823, 115), Rotation (0) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(-791, -823, 115), Rotation (0) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(-679, -823, 115), Rotation (0) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(-400, -1475, 125), Rotation (-90) ),
 
                World:spawn_unit( id_jsrandomloot1[math.random(1,2)],
                Vector3(-450, -1576, 125), Rotation (180) ),
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
 
        autoloot_containers = {}
        local randcontents = math.random(4)
        if rand and randcontents == 1 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
 
                'local rand4 = id_jsrandomloot3[math.random(#id_jsrandomloot3)]'
                ..'\nlocal unit = rand4 and World:spawn_unit('
                .. 'rand4,'
                .. 'Vector3(715, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
 
                'local rand5 = id_jsrandomloot3[math.random(#id_jsrandomloot3)]'
                ..'\nlocal unit = rand5 and World:spawn_unit('
                .. 'rand5,'
                .. 'Vector3(665, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(675, -1720, 75), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -1720, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -1710, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(685, -1730, 32), Rotation(360) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
       
        if rand and randcontents == 2 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
 
                'local rand4 = id_jsrandomloot3[math.random(#id_jsrandomloot3)]'
                ..'\nlocal unit = rand4 and World:spawn_unit('
                .. 'rand4,'
                .. 'Vector3(715, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
 
                'local rand5 = id_jsrandomloot3[math.random(#id_jsrandomloot3)]'
                ..'\nlocal unit = rand5 and World:spawn_unit('
                .. 'rand5,'
                .. 'Vector3(665, -1740, 75), Rotation(180) )'
                .. '\nif unit then unit:interaction():set_active(true, true) end',
        }) end
       
        if rand and randcontents == 3 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(675, -1720, 75), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -17420, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(647, -1710, 32), Rotation(0) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(685, -1730, 32), Rotation(360) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
       
        if rand and randcontents == 4 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(625, -1680, 25), Rotation(90) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(685, -1730, 32), Rotation(360) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
 
       
 
nightclub = nightclub or function(id)
        local id_ncrandomloot = {
                        Idstring("units/payday2/pickups/gen_pku_money/gen_pku_money"),
                        false, false, false
        }
        local id_ncrandomloot1 = {
                        Idstring("units/payday2/equipment/gen_interactable_sec_safe_1x1/gen_interactable_sec_safe_1x1"),
                        false, false
        }
        local id_ncrandomloot2 = {
                        Idstring("units/payday2/props/com_prop_store_cashbox/com_prop_store_cashbox"),
                        false, false
        }
        local id_ncrandomloot3 = {
                        Idstring("units/world/props/bank/money_wrap/money_wrap_single_bundle"),
                        false, false
        }
        local id_ncrandomloot4 = {
                        Idstring("units/world/props/bank/money_wrap/money_wrap_single_bundle"),
                        Idstring("units/world/props/bank/money_wrap/money_wrap_single_bundle"),
                        false
        }
        local rand = id_ncrandomloot1[math.random(#id_ncrandomloot1)]
        local rand1 = id_ncrandomloot[math.random(#id_ncrandomloot)]
        local rand2 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand3 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand4 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand5 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand6 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand7 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand8 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand9 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand10 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand11 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand12 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand13 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand14 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand15 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand16 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand17 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand18 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand19 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand20 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand21 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand22 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand23 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand24 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand25 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand26 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand27 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand28 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand29 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand30 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand31 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand32 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand33 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand34 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand35 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand36 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand37 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand38 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand39 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand40 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand41 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand42 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand43 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand44 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand45 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand46 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand47 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand48 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand49 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand50 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand51 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand52 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand53 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand54 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand55 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand56 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand57 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand58 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand59 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand60 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand61 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand62 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand63 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand64 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand65 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand66 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand67 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand68 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand69 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand70 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand71 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand72 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand73 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand74 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand75 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand76 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand77 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand78 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand79 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand80 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand81 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand82 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand83 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand84 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand85 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand86 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand87 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand88 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand89 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand90 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand91 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand92 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand93 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand94 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand95 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand96 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand97 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand98 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand99 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand100 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand101 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand102 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand103 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand104 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand105 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand106 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand107 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand108 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand109 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand110 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand111 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand112 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand113 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand114 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand115 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand116 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand117 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand118 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand119 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand120 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand121 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand122 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand123 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand124 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand125 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand126 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand127 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand128 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand129 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand130 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand131 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand132 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand133 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand134 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand135 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand136 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand137 = id_ncrandomloot2[math.random(#id_ncrandomloot2)]
        local rand138 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand139 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand140 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand141 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand142 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand143 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand144 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand145 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand146 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand147 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand148 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand149 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local rand150 = id_ncrandomloot3[math.random(#id_ncrandomloot3)]
        local group1 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
        local group2 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
        local group3 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
        local group4 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
        local group5 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
        local group6 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
        local group7 = id_ncrandomloot4[math.random(#id_ncrandomloot4)]
   
   
        local spawns = {
                        rand1 and World:spawn_unit( rand1,
                        Vector3(3211.48, -5498.88, 475), randrot() ),
                   
                        rand2 and World:spawn_unit( rand2,
                        Vector3(2479, -6471, 17.83), Rotation(270) ),
                   
                        rand3 and World:spawn_unit( rand3,
                        Vector3(2279, -6471, 17.83), Rotation(270) ),
                   
                        rand4 and World:spawn_unit( rand4,
                        Vector3(1980, -6471, 42.83), Rotation(270) ),
                   
                        rand5 and World:spawn_unit( rand5,
                        Vector3(2279, -6471, 17.83), Rotation(270) ),
                   
                        rand6 and World:spawn_unit( rand6,
                        Vector3(2180, -6471, 17.83), Rotation(270) ),
                   
                        rand7 and World:spawn_unit( rand7,
                        Vector3(2180, -6471, 42.83), Rotation(270) ),
                   
                        rand8 and World:spawn_unit( rand8,
                        Vector3(2080, -6471, 17.83), Rotation(270) ),
                   
                        rand9 and World:spawn_unit( rand9,
                        Vector3(2080, -6471, 42.83), Rotation(270) ),
                   
                        rand10 and World:spawn_unit( rand10,
                        Vector3(604, -4767, 493.83), Rotation(270) ),
                   
                        rand11 and World:spawn_unit( rand11,
                        Vector3(604, -4767, 468.83), Rotation(270) ),
                   
                        rand12 and World:spawn_unit( rand12,
                        Vector3(704, -4767, 493.83), Rotation(270) ),
                   
                        rand13 and World:spawn_unit( rand13,
                        Vector3(704, -4767, 468.83), Rotation(270) ),
                   
                        rand14 and World:spawn_unit( rand14,
                        Vector3(804, -4767, 468.83), Rotation(270) ),
                   
                        rand15 and World:spawn_unit( rand15,
                        Vector3(904, -4767, 493.83), Rotation(270) ),
                   
                        rand16 and World:spawn_unit( rand16,
                        Vector3(904, -4767, 468.83), Rotation(270) ),
                   
                        rand17 and World:spawn_unit( rand17,
                        Vector3(595, -4985, 546), Rotation(90) ),
                   
                        rand18 and World:spawn_unit( rand18,
                        Vector3(552, -4985, 546), Rotation(90) ),
                   
                        rand19 and World:spawn_unit( rand19,
                        Vector3(2282, -6683, 95), Rotation(90) ),
                   
                        rand20 and World:spawn_unit( rand20,
                        Vector3(2239, -6683, 95), Rotation(90) ),
                   
                        rand21 and World:spawn_unit( rand21,
                        Vector3(2196, -6683, 95), Rotation(90) ),
                   
                        rand22 and World:spawn_unit( rand22,
                        Vector3(709, -4879.5, 43.83), Rotation(180) ),
                   
                        rand23 and World:spawn_unit( rand23,
                        Vector3(709, -4879.5, 18.83), Rotation(180) ),
                   
                        rand24 and World:spawn_unit( rand24,
                        Vector3(2361, -6472, 94.94), randrot() ),
                   
                        rand25 and World:spawn_unit( rand25,
                        Vector3(2500, -6484, -8), randrot() ),
                   
                        rand26 and World:spawn_unit( rand26,
                        Vector3(2300, -6484, -8), randrot() ),
                   
                        rand27 and World:spawn_unit( rand27,
                        Vector3(2200, -6484, -8), randrot() ),
                   
                        rand28 and World:spawn_unit( rand28,
                        Vector3(2100, -6484, -8), randrot() ),
                   
                        rand29 and World:spawn_unit( rand29,
                        Vector3(2000, -6484, -8), randrot() ),
                   
                        rand30 and World:spawn_unit( rand30,
                        Vector3(1263, -7250, 156.181), randrot() ),
                   
                        rand31 and World:spawn_unit( rand31,
                        Vector3(1166, -8169, -25), randrot() ),
                   
                        rand32 and World:spawn_unit( rand32,
                        Vector3(1262, -8616, -25), randrot() ),
                   
                        rand33 and World:spawn_unit( rand33,
                        Vector3(1438, -9508, 25), randrot() ),
                   
                        rand34 and World:spawn_unit( rand34,
                        Vector3(3419, -8181, 38.73), randrot() ),
                   
                        rand35 and World:spawn_unit( rand35,
                        Vector3(3437, -7781, 156.181), randrot() ),
                   
                        rand36 and World:spawn_unit( rand36,
                        Vector3(3118, -7485, 205), Rotation(97) ),
                   
                        rand37 and World:spawn_unit( rand37,
                        Vector3(3118, -7566, 25), Rotation(84) ),
                   
                        rand38 and World:spawn_unit( rand38,
                        Vector3(3426, -7054, -19.75), randrot() ),
                   
                        rand39 and World:spawn_unit( rand39,
                        Vector3(3403, -8736, -25), randrot() ),
                   
                        rand40 and World:spawn_unit( rand40,
                        Vector3(3009, -6068, 525.9), Rotation(70) ),
                   
                        rand41 and World:spawn_unit( rand41,
                        Vector3(3024, -6074, 480.25), randrot() ),
                   
                        rand42 and World:spawn_unit( rand42,
                        Vector3(3448, -6253, 594.938), randrot() ),
                   
                        rand43 and World:spawn_unit( rand43,
                        Vector3(3448, -6092, 594.938), randrot() ),
                   
                        rand44 and World:spawn_unit( rand44,
                        Vector3(3121, -7026, 480.25), randrot() ),
                   
                        rand45 and World:spawn_unit( rand45,
                        Vector3(3134, -6854, 576.5), randrot() ),
                   
                        rand46 and World:spawn_unit( rand46,
                        Vector3(3269, -6854, 576.5), randrot() ),
                   
                        rand47 and World:spawn_unit( rand47,
                        Vector3(3458, -7086, 476.3), randrot() ),
                   
                        rand48 and World:spawn_unit( rand48,
                        Vector3(3479, -6660, 709.5), Rotation(84) ),
                   
                        rand49 and World:spawn_unit( rand49,
                        Vector3(3118, -7363, 208), Rotation(84) ),
                   
                        rand50 and World:spawn_unit( rand50,
                        Vector3(3480, -6488.5, 684), Rotation(90, 0, 46) ),
                   
                        rand51 and World:spawn_unit( rand51,
                        Vector3(3454, -5757, 581.6), randrot() ),
                   
                        rand52 and World:spawn_unit( rand52,
                        Vector3(3454, -5694, 581.6), randrot() ),
                   
                        rand53 and World:spawn_unit( rand53,
                        Vector3(3170, -5267, 615), Rotation(12) ),
                   
                        rand54 and World:spawn_unit( rand54,
                        Vector3(3053, -5267, 705), Rotation(12) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3315.3, -5263, 536.4), Rotation(0, 0, 110) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3310.6, -5263, 536.4), Rotation(0, 0, 110) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3305.9, -5263, 536.4), Rotation(0, 0, 110) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3300.5, -5263, 536.4), Rotation(0, 0, 114) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3294.9, -5263, 536.4), Rotation(0, 0, 118) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3289.3, -5263, 536.3), Rotation(0, 0, 121) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3283.3, -5263, 536.2), Rotation(0, 0, 125) ),
                   
                        group1 and World:spawn_unit( group1,
                        Vector3(3276.7, -5263, 536), Rotation(0, 0, 130) ),
                   
                        group2 and World:spawn_unit( group2,
                        Vector3(3088, -5482, 550.079), Rotation(94) ),
                   
                        group2 and World:spawn_unit( group2,
                        Vector3(3076, -5482, 557), Rotation(7, 0, 164.5) ),
                   
                        group2 and World:spawn_unit( group2,
                        Vector3(3096, -5482, 552.5), Rotation(94, 30) ),
                   
                        rand55 and World:spawn_unit( rand55,
                        Vector3(3043, -5553, 550.079), randrot() ),
                   
                        rand56 and World:spawn_unit( rand56,
                        Vector3(3004, -6191, 475), randrot() ),
                   
                        rand57 and World:spawn_unit( rand57,
                        Vector3(3157, -6844, 474), randrot() ),
                   
                        rand58 and World:spawn_unit( rand58,
                        Vector3(2696, -8284, 125.311), randrot() ),
                   
                        rand59 and World:spawn_unit( rand59,
                        Vector3(1913, -8687, 123), randrot() ),
                   
                        rand60 and World:spawn_unit( rand60,
                        Vector3(1898, -8762, 74.6), randrot() ),
                   
                        rand61 and World:spawn_unit( rand61,
                        Vector3(1761, -8882, 135.522), randrot() ),
                   
                        rand62 and World:spawn_unit( rand62,
                        Vector3(1741, -8937, 25), randrot() ),
                   
                        group3 and World:spawn_unit( group3,
                        Vector3(1727, -7636, 52.9), Rotation(170) ),
                   
                        group3 and World:spawn_unit( group3,
                        Vector3(1727, -7636, 57.3), Rotation(174) ),
                   
                        group3 and World:spawn_unit( group3,
                        Vector3(1727, -7636, 61.7), Rotation(166) ),
                   
                        group4 and World:spawn_unit( group4,
                        Vector3(1760, -7614, 52.9), Rotation(164) ),
                   
                        group4 and World:spawn_unit( group4,
                        Vector3(1760, -7614, 57.3), Rotation(158) ),
                   
                        group5 and World:spawn_unit( group5,
                        Vector3(1743, -7570, 52.9), Rotation(0) ),
                   
                        group5 and World:spawn_unit( group5,
                        Vector3(1743, -7570, 57.3), Rotation(-6) ),
                   
                        group5 and World:spawn_unit( group5,
                        Vector3(1743, -7570, 61.7), Rotation(4) ),
 
                        group6 and World:spawn_unit( group6,
                        Vector3(1754, -7586, 52.9), Rotation(106) ),
                   
                        group6 and World:spawn_unit( group6,
                        Vector3(1754, -7586, 57.3), Rotation(100) ),
                   
                        group6 and World:spawn_unit( group6,
                        Vector3(1754, -7586, 61.7), Rotation(110) ),
                   
                        group7 and World:spawn_unit( group7,
                        Vector3(1718, -7535, 52.9), Rotation(55) ),
                   
                        group7 and World:spawn_unit( group7,
                        Vector3(1718, -7535, 57.3), Rotation(49) ),
                   
                        group7 and World:spawn_unit( group7,
                        Vector3(1718, -7535, 61.7), Rotation(59) ),
                   
                        rand63 and World:spawn_unit( rand63,
                        Vector3(1749, -7534, 52.9), randrot() ),
                   
                        rand64 and World:spawn_unit( rand64,
                        Vector3(1781, -7574, 52.9), randrot() ),
                   
                        rand65 and World:spawn_unit( rand65,
                        Vector3(1709, -7578, 52.9), randrot() ),
                   
                        rand66 and World:spawn_unit( rand66,
                        Vector3(2733, -8233, 130.2), Rotation(23, 90) ),
                   
                        rand67 and World:spawn_unit( rand67,
                        Vector3(2861, -7173, -21.5), randrot() ),
                   
                        rand68 and World:spawn_unit( rand68,
                        Vector3(3066, -7426, -25), Rotation(70) ),
                   
                        rand69 and World:spawn_unit( rand69,
                        Vector3(3442, -8085, 130.2), Rotation(83, 90) ),
                   
                        rand70 and World:spawn_unit( rand70,
                        Vector3(2761, -7782, -25), randrot() ),
                   
                        rand71 and World:spawn_unit( rand71,
                        Vector3(2115, -7608, -25), randrot() ),
                   
                        rand72 and World:spawn_unit( rand72,
                        Vector3(2092, -6783, -25), randrot() ),
                   
                        rand73 and World:spawn_unit( rand73,
                        Vector3(2102, -7522, 85.4679), randrot() ),
                   
                        rand74 and World:spawn_unit( rand74,
                        Vector3(2002, -7169, 140.3), randrot() ),
                   
                        rand75 and World:spawn_unit( rand75,
                        Vector3(2746, -6909, 140.3), randrot() ),
                   
                        rand76 and World:spawn_unit( rand76,
                        Vector3(1883, -7184, -20), Rotation(81, 90) ),
                   
                        rand77 and World:spawn_unit( rand77,
                        Vector3(2821, -5755, 185), randrot() ),
                   
                        rand78 and World:spawn_unit( rand78,
                        Vector3(1249, -5587, -25), randrot() ),
                   
                        rand79 and World:spawn_unit( rand79,
                        Vector3(1231, -6241, -25), randrot() ),
                   
                        rand80 and World:spawn_unit( rand80,
                        Vector3(1375, -6203, -19.75), randrot() ),
                   
                        rand81 and World:spawn_unit( rand81,
                        Vector3(1670, -6128, 85.282), randrot() ),
                   
                        rand82 and World:spawn_unit( rand82,
                        Vector3(1648, -5682, -25), randrot() ),
                   
                        rand83 and World:spawn_unit( rand83,
                        Vector3(1895, -5510, -25), randrot() ),
                   
                        rand84 and World:spawn_unit( rand84,
                        Vector3(1481, -4950, -18), randrot() ),
                   
                        rand85 and World:spawn_unit( rand85,
                        Vector3(2107, -7231, 52.288), randrot() ),
                   
                        rand86 and World:spawn_unit( rand86,
                        Vector3(2119, -7372, 72), randrot() ),
                   
                        rand87 and World:spawn_unit( rand87,
                        Vector3(2443, -7399, 72), randrot() ),
                   
                        rand88 and World:spawn_unit( rand88,
                        Vector3(2531, -7773, 91.3), randrot() ),
                   
                        rand89 and World:spawn_unit( rand89,
                        Vector3(2703, -7377, 198.546), randrot() ),
                   
                        rand90 and World:spawn_unit( rand90,
                        Vector3(3486, -6805, 597.6), Rotation(0, 0, 101) ),
                   
                        rand91 and World:spawn_unit( rand91,
                        Vector3(2194, -4614, -25), randrot() ),
                   
                        rand92 and World:spawn_unit( rand92,
                        Vector3(2473, -4550, -25), randrot() ),
                   
                        rand93 and World:spawn_unit( rand93,
                        Vector3(2108, -5165, 28), randrot() ),
                   
                        rand94 and World:spawn_unit( rand94,
                        Vector3(1161, -6444.6, 72.6), Rotation(0, 103) ),
                   
                        rand95 and World:spawn_unit( rand95,
                        Vector3(2456, -5210, -17.7), randrot() ),
                   
                        rand96 and World:spawn_unit( rand96,
                        Vector3(2814, -4741, 179.263), randrot() ),
                   
                        rand97 and World:spawn_unit( rand97,
                        Vector3(3237, -4899, -25), randrot() ),
                   
                        rand98 and World:spawn_unit( rand98,
                        Vector3(2860, -5110, -25), randrot() ),
                   
                        rand99 and World:spawn_unit( rand99,
                        Vector3(2149, -6090, -17.7), randrot() ),
                   
                        rand100 and World:spawn_unit( rand100,
                        Vector3(2508, -6165, -25), randrot() ),
                   
                        rand101 and World:spawn_unit( rand101,
                        Vector3(333, -5544.5, 80), Rotation(90, 105, 90) ),
                   
                        rand102 and World:spawn_unit( rand102,
                        Vector3(402, -5544.5, 80), Rotation(90, 105, 90) ),
                   
                        rand103 and World:spawn_unit( rand103,
                        Vector3(506, -5544.5, 80), Rotation(90, 105, 90) ),
                   
                        rand104 and World:spawn_unit( rand104,
                        Vector3(553, -5544.5, 80), Rotation(90, 105, 90) ),
                   
                        rand105 and World:spawn_unit( rand105,
                        Vector3(620, -5468, 80), Rotation(90, 6, 90) ),
                   
                        rand106 and World:spawn_unit( rand106,
                        Vector3(344, -4756, 80), Rotation(90, 105, 90) ),
                   
                        rand107 and World:spawn_unit( rand107,
                        Vector3(390, -4756, 80), Rotation(90, 105, 90) ),
                   
                        rand108 and World:spawn_unit( rand108,
                        Vector3(989, -4985, 545.94), randrot() ),
                   
                        rand109 and World:spawn_unit( rand109,
                        Vector3(764, -4971, 674.17), randrot() ),
                   
                        rand110 and World:spawn_unit( rand110,
                        Vector3(969.5, -5000, 685), Rotation(90, 0, 90) ),
                   
                        rand111 and World:spawn_unit( rand111,
                        Vector3(565, -4398, 426), randrot() ),
                   
                        rand112 and World:spawn_unit( rand112,
                        Vector3(288, -4292, 426), randrot() ),
                   
                        rand113 and World:spawn_unit( rand113,
                        Vector3(356, -4594, 476.9), randrot() ),
                   
                        rand114 and World:spawn_unit( rand114,
                        Vector3(1174, -4287, 535), randrot() ),
                   
                        rand115 and World:spawn_unit( rand115,
                        Vector3(1490, -4270.2, 440), Rotation(0, 94) ),
                   
                        rand116 and World:spawn_unit( rand116,
                        Vector3(1525, -6430, 465), randrot() ),
                   
                        rand117 and World:spawn_unit( rand117,
                        Vector3(1483, -5778, 375), randrot() ),
                   
                        rand118 and World:spawn_unit( rand118,
                        Vector3(1131, -5747, 380.2), randrot() ),
                   
                        rand119 and World:spawn_unit( rand119,
                        Vector3(1580, -4747, 380.2), randrot() ),
                   
                        rand120 and World:spawn_unit( rand120,
                        Vector3(2698, -4817, 375), randrot() ),
                   
                        rand121 and World:spawn_unit( rand121,
                        Vector3(3256, -4686, 425), randrot() ),
                   
                        rand122 and World:spawn_unit( rand122,
                        Vector3(2960, -4270, 535), randrot() ),
                   
                        rand123 and World:spawn_unit( rand123,
                        Vector3(2737, -4420.3, 430.6), Rotation(0, 94) ),
                   
                        rand124 and World:spawn_unit( rand124,
                        Vector3(459, -7230, 605), Rotation(13) ),
                   
                        rand125 and World:spawn_unit( rand125,
                        Vector3(307, -7233, 586), Rotation(0) ),
                   
                        rand126 and World:spawn_unit( rand126,
                        Vector3(1198, -6896, -25), randrot() ),
                   
                        rand127 and World:spawn_unit( rand127,
                        Vector3(1508, -6817, 156.2), randrot() ),
                   
                        rand128 and World:spawn_unit( rand128,
                        Vector3(2453, -7298, -25), randrot() ),
                   
                        rand129 and World:spawn_unit( rand129,
                        Vector3(2057, -6940, -315), Rotation(210) ),
                   
                        rand130 and World:spawn_unit( rand130,
                        Vector3(1365, -7474, -245), randrot() ),
                   
                        rand131 and World:spawn_unit( rand131,
                        Vector3(1939, -8121, -350), Rotation(170) ),
                   
                        rand132 and World:spawn_unit( rand132,
                        Vector3(1382, -7986, -350), Rotation(13) ),
                   
                        rand133 and World:spawn_unit( rand133,
                        Vector3(1403, -8150, -199.7), randrot() ),
                   
                        rand134 and World:spawn_unit( rand134,
                        Vector3(2031, -7340, -307.2), randrot() ),
                   
                        rand135 and World:spawn_unit( rand135,
                        Vector3(354, -4945, 80), Rotation(90, 230, 90) ),
                   
                        rand136 and World:spawn_unit( rand136,
                        Vector3(384, -4945, 80), Rotation(90, 230, 90) ),
                   
                        rand137 and World:spawn_unit( rand137,
                        Vector3(-572, -1074, 25), randrot() ),
                   
                        rand138 and World:spawn_unit( rand138,
                        Vector3(-583, -2292, 25), randrot() ),
                   
                        rand139 and World:spawn_unit( rand139,
                        Vector3(238, -4396, 25), Rotation(94) ),
                   
                        rand140 and World:spawn_unit( rand140,
                        Vector3(2578, -2079, 30), Rotation(0, 90) ),
                   
                        rand141 and World:spawn_unit( rand141,
                        Vector3(2695, -1830, 170), Rotation(86, 90) ),
                   
                        rand142 and World:spawn_unit( rand142,
                        Vector3(2317, -622, 100), randrot() ),
                   
                        rand143 and World:spawn_unit( rand143,
                        Vector3(1713, -7153, -425), randrot() ),
                   
                        rand144 and World:spawn_unit( rand144,
                        Vector3(1706, -7246, -425), randrot() ),
                   
                        rand145 and World:spawn_unit( rand145,
                        Vector3(1614, -7295, -425), randrot() ),
                   
                        rand146 and World:spawn_unit( rand146,
                        Vector3(458.447, -6877, 450.079), randrot() ),
 
                        rand147 and World:spawn_unit( rand147,
                        Vector3(494.163, -6865.05, 450.079), randrot() ),
 
                        rand148 and World:spawn_unit( rand148,
                        Vector3(624.966, -6873.36, 450.079), randrot() ),
 
                        rand149 and World:spawn_unit( rand149,
                        Vector3(3219.16, -5530.47, 550.079), randrot() ),
 
                        rand150 and World:spawn_unit( rand150,
                        Vector3(3136.91, -5535.36, 550.079), randrot() ),
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
autoloot_containers = {}
        local randcontents = math.random(4)
                if rand and randcontents == 1 then table.insert(autoloot_containers, {
                        { World:spawn_unit( rand,
                        Vector3(1430, -7342, -425), Rotation(360) ),
                        "interact",
                        "door_opened"
                        },
                'local unit = World:spawn_unit( Idstring('                                                  
                .. '"units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine" ),'
                .. 'Vector3(1380, -7419, -417), Rotation(180) )',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine" ),'
                .. 'Vector3(1380, -7391, -417), Rotation(180) )',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine" ),'
                .. 'Vector3(1380, -7363, -417), Rotation(180) )',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(1380, -7412, -375), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(1380, -7371, -375), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        if rand and randcontents == 2 then table.insert(autoloot_containers, {
                        { World:spawn_unit( rand,
                        Vector3(1430, -7342, -425), Rotation(360) ),
                        "interact",
                        "door_opened"
                        },
                'local unit = World:spawn_unit( Idstring('                                          
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(1380, -7412, -375), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_money/gen_pku_money" ),'
                .. 'Vector3(1380, -7371, -375), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)',
           
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1386, -7393, -417.9), Rotation(43) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1380, -7374, -415), Rotation(48, 322) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1391, -7376, -414.5), Rotation(55, 0, 18) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1386, -7391, -413.5), Rotation(340) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1379, -7403, -414.5), Rotation(320, 42) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1390.5, -7406, -412), Rotation(332, 320, 15) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1400, -7385.2, -412.3), Rotation(346, 350, 27) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1403, -7400, -412.9), Rotation(320, 350, 23.3) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1384, -7385.5, -407.5), Rotation(290, 8, 7) )'
                .. 'unit:interaction():set_active(true, true)',
           
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1396, -7416.1, -417.9), Rotation(320) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1377, -7418, -417.9), Rotation(160) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1387, -7420, -413.5), Rotation(190) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1406.5, -7370, -417.9), Rotation(70) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1393.5, -7358.5, -417.9), Rotation(350) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1406, -7368, -413.5), Rotation(300) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1382, -7360, -413.3), Rotation(0, 352, 338) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        if rand and randcontents == 3 then table.insert(autoloot_containers, {
        { World:spawn_unit( rand,
        Vector3(1430, -7342, -425), Rotation(360) ),
        "interact",
        "door_opened"
        },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine" ),'          
                .. 'Vector3(1380, -7412, -375), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine" ),'
                .. 'Vector3(1380, -7371, -375), Rotation(180) )'
                .. 'unit:interaction():set_active(true, true)',
           
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1386, -7393, -417.9), Rotation(43) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1380, -7374, -415), Rotation(48, 322) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1391, -7376, -414.5), Rotation(55, 0, 18) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1386, -7391, -413.5), Rotation(340) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1379, -7403, -414.5), Rotation(320, 42) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1390.5, -7406, -412), Rotation(332, 320, 15) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1400, -7385.2, -412.3), Rotation(346, 350, 27) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1403, -7400, -412.9), Rotation(320, 350, 23.3) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1384, -7385.5, -407.5), Rotation(290, 8, 7) )'
                .. 'unit:interaction():set_active(true, true)',
           
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1396, -7416.1, -417.9), Rotation(320) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1377, -7418, -417.9), Rotation(160) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1387, -7420, -413.5), Rotation(190) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1406.5, -7370, -417.9), Rotation(70) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1393.5, -7358.5, -417.9), Rotation(350) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1406, -7368, -413.5), Rotation(300) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1382, -7360, -413.3), Rotation(0, 352, 338) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        if rand and randcontents == 4 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand,
                Vector3(1430, -7342, -425), Rotation(360) ),
                "interact",
                "door_opened"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1386, -7393, -417.9), Rotation(43) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1380, -7374, -415), Rotation(48, 322) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1391, -7376, -414.5), Rotation(55, 0, 18) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1386, -7391, -413.5), Rotation(340) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1379, -7403, -414.5), Rotation(320, 42) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1390.5, -7406, -412), Rotation(332, 320, 15) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1400, -7385.2, -412.3), Rotation(346, 350, 27) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1403, -7400, -412.9), Rotation(320, 350, 23.3) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1384, -7385.5, -407.5), Rotation(290, 8, 7) )'
                .. 'unit:interaction():set_active(true, true)',
           
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1396, -7416.1, -417.9), Rotation(320) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1377, -7418, -417.9), Rotation(160) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1387, -7420, -413.5), Rotation(190) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1406.5, -7370, -417.9), Rotation(70) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1393.5, -7358.5, -417.9), Rotation(350) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1406, -7368, -413.5), Rotation(300) )'
                .. 'unit:interaction():set_active(true, true)',
 
                'local unit = World:spawn_unit( Idstring('
                .. '"units/world/props/bank/money_wrap/money_wrap_single_bundle" ),'
                .. 'Vector3(1382, -7360, -413.3), Rotation(0, 352, 338) )'
                .. 'unit:interaction():set_active(true, true)',
        }) end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
 
electionwarehouse = electionwarehouse or function()
        local id_ewrandomloot = {
                Idstring("units/payday2/pickups/gen_pku_bucket_of_money/gen_pku_bucket_of_money"),
                false
        }
        local rand = id_ewrandomloot[math.random(#id_ewrandomloot)]
        local rand1 = id_ewrandomloot[math.random(#id_ewrandomloot)]
        local rand2 = id_ewrandomloot[math.random(#id_ewrandomloot)]
        local spawns = {
                rand and World:spawn_unit( rand,
                Vector3(-2644, -1325, 601.485), Rotation(-180) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(-1160.22, -964.71, 500), Rotation(-180) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(-2373.58, -2411.31, 575), Rotation(90) )
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
end
 
shadow = shadow or function()
        local id_srandomloot = {
                Idstring("units/payday2/pickups/gen_pku_cocaine/gen_pku_cocaine"),
                Idstring("units/payday2/equipment/ind_interactable_hardcase_loot/ind_interactable_hardcase_loot_gold"),
                Idstring("units/payday2/equipment/ind_interactable_hardcase_loot/ind_interactable_hardcase_loot_money"),
                false, false
        }
        local id_srandomloot1 = {
                Idstring("units/payday2/equipment/gen_interactable_weapon_case_2x1/gen_interactable_weapon_case_2x1"),
                false
        }
        local rand1 = id_srandomloot[math.random(#id_srandomloot)]
        local rand2 = id_srandomloot[math.random(#id_srandomloot)]
        local rand3 = id_srandomloot[math.random(#id_srandomloot)]
        local rand4 = id_srandomloot[math.random(#id_srandomloot)]
        local rand5 = id_srandomloot[math.random(#id_srandomloot)]
        local rand6 = id_srandomloot[math.random(#id_srandomloot)]
        local rand7 = id_srandomloot[math.random(#id_srandomloot)]
        local rand8 = id_srandomloot[math.random(#id_srandomloot)]
        local rand9 = id_srandomloot[math.random(#id_srandomloot)]
        local rand10 = id_srandomloot1[math.random(#id_srandomloot1)]
        local rand11 = id_srandomloot1[math.random(#id_srandomloot1)]
        local rand12 = id_srandomloot1[math.random(#id_srandomloot1)]
        local rand13 = id_srandomloot1[math.random(#id_srandomloot1)]
        local rand14 = id_srandomloot1[math.random(#id_srandomloot1)]
        local spawns = {
                rand10 and World:spawn_unit( rand10,
                Vector3(-2824.47, -5555.74, 1058.98), Rotation(180) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(-2948.14, -5625.3, 1057.59), Rotation(-180) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(-3126.01, -5625.3, 1057.59), Rotation(-180) ),
 
                rand11 and World:spawn_unit( rand11,
                Vector3(-3250.74, -4944.50, 1058.98), Rotation(360) ),
 
                rand12 and World:spawn_unit( rand12,
                Vector3(-2824.47, -4944.50, 1058.28), Rotation(180) ),
 
                rand3 and World:spawn_unit( rand3,
                Vector3(-2948.14, -4874.86, 1057.59), Rotation(180) ),
 
                rand4 and World:spawn_unit( rand4,
                Vector3(-1521.73, -5410.55, 1062.84), Rotation(90) ),
 
                rand13 and World:spawn_unit( rand13,
                Vector3(-972.55, -5567.1, 1401.17), Rotation(90) ),
 
                rand5 and World:spawn_unit( rand5,
                Vector3(-1902.55, -5591.68, 1401.17), Rotation(180) ),
 
                rand14 and World:spawn_unit( rand14,
                Vector3(-827.749, -4482.73, 975), Rotation(-90) ),
 
                rand6 and World:spawn_unit( rand6,
                Vector3(-1956.23, -3945.4, 1024.23), Rotation(90) ),
 
                rand7 and World:spawn_unit( rand7,
                Vector3(-3145.82, -4874, 1057.59), Rotation(90) ),
 
                rand8 and World:spawn_unit( rand8,
                Vector3(-3103.7, -4874, 1057.59), Rotation(90) ),
 
                rand9 and World:spawn_unit( rand9,
                Vector3(-3248.89, -5550.66, 1057.59), Rotation(0) ),
 
                World:spawn_unit( Idstring(
                "units/pd2_dlc1/equipment/ind_interactable_shipping_crate_2x1x1m/ind_interactable_shipping_crate_2x1x1m"),
                Vector3(-3378.53, -5402.14, 975), Rotation(-90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/pickups/gen_pku_artifact_statue/gen_pku_artifact_statue"),
                Vector3(-3378.53, -5402.14, 1005), Rotation(90) )
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
end
 
transportcross = transportcross or function()
        local spawns = {
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(-1579, 1556, 102.5), Rotation(90) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(1609, -1045, 100), Rotation(360) ),
 
                World:spawn_unit( Idstring(
                "units/payday2/props/com_prop_store_cashregister_low/com_prop_store_cashregister_low" ),
                Vector3(-1174, -1703, 119.2), Rotation(-90) )
        }
        for k,v in pairs(spawns) do v:interaction():set_active(true,true) end
 
        local objects = {
                World:spawn_unit( Idstring(
                "units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing" ),
                Vector3(751, 1621, -2.98023), Rotation(360) )
        }
        for k,v in pairs(objects) do v:base():activate() end
end
 
bigbank = bigbank or function()
        local id_bbrandomloot = {
                Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_f"),
                false
        }
        local id_bbrandomloot1 = {
                Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_g"),
                false
        }
        local id_bbrandomloot2 = {
                Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_h"),
                false
        }
        local id_bbrandomloot3 = {
                Idstring("units/payday2/props/bnk_prop_vault_loot_value_i/bnk_prop_vault_loot_value_i"),
                false
        }
        local id_bbrandomloot4 = {
                Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_j"),
                false
        }
        local id_bbrandomloot5 = {
                Idstring("units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_value_k"),
                false
        }
        local id_bbrandomloot6 = {
                Idstring("units/payday2/pickups/gen_pku_money/gen_pku_money"),
                false
        }
        local id_bbrandomloot7 = {
                Idstring("units/payday2/pickups/gen_pku_gold/gen_pku_gold"),
                false, false
        }
        local id_bbrandomloot8 = {
                Idstring("units/payday2/equipment/gen_interactable_sec_safe_05x05/gen_interactable_sec_safe_05x05"),
        }
        local rand = id_bbrandomloot[math.random(#id_bbrandomloot)]
        local rand1 = id_bbrandomloot[math.random(#id_bbrandomloot)]
        local rand2 = id_bbrandomloot[math.random(#id_bbrandomloot)]
        local rand3 = id_bbrandomloot[math.random(#id_bbrandomloot)]
        local rand4 = id_bbrandomloot[math.random(#id_bbrandomloot)]
        local rand5 = id_bbrandomloot1[math.random(#id_bbrandomloot1)]
        local rand6 = id_bbrandomloot1[math.random(#id_bbrandomloot1)]
        local rand7 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand8 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand9 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand10 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand11 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand12 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand13 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand14 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand15 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand16 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand17 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand18 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand19 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand20 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand21 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand22 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand23 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand24 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand25 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand26 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand27 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand28 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand29 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand30 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand31 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand32 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand33 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand34 = id_bbrandomloot2[math.random(#id_bbrandomloot2)]
        local rand35 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand36 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand37 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand38 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand39 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand40 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand41 = id_bbrandomloot3[math.random(#id_bbrandomloot3)]
        local rand42 = id_bbrandomloot4[math.random(#id_bbrandomloot4)]
        local rand43 = id_bbrandomloot4[math.random(#id_bbrandomloot4)]
        local rand44 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand45 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand46 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand47 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand48 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand49 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand50 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand51 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand52 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand53 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand54 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand55 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand56 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand57 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand58 = id_bbrandomloot5[math.random(#id_bbrandomloot5)]
        local rand59 = id_bbrandomloot7[math.random(#id_bbrandomloot6)]
        local rand60 = id_bbrandomloot7[math.random(#id_bbrandomloot6)]
        local rand61 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand62 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand63 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand64 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand65 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand66 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand67 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand68 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand69 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand70 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand71 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand72 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand73 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand74 = id_bbrandomloot7[math.random(#id_bbrandomloot7)]
        local rand75 = id_bbrandomloot8[math.random(#id_bbrandomloot8)]
 
        World:spawn_unit( Idstring(
        "units/payday2/props/bnk_prop_security_moneycounter/bnk_prop_security_moneycounter" ),
        Vector3(-2416, -371, -1000), Rotation(180) )
 
        World:spawn_unit( Idstring(
        "units/payday2/props/bnk_prop_security_moneycounter/bnk_prop_security_moneycounter" ),
        Vector3(-2346, -371, -1000), Rotation(180) )
 
        World:spawn_unit( Idstring(
        "units/payday2/props/bnk_prop_security_moneycounter/bnk_prop_security_moneycounter" ),
        Vector3(-2745, -38, -1000), Rotation(90) )
 
        local spawns = {
                rand and World:spawn_unit( rand,
                Vector3(1334, -1559, -551.624), Rotation(183) ),
 
                rand1 and World:spawn_unit( rand1,
                Vector3(1472, -1715, -46.7), Rotation(0) ),
 
                rand2 and World:spawn_unit( rand2,
                Vector3(1320, -2100, -51.7), Rotation(90) ),
 
                rand3 and World:spawn_unit( rand3,
                Vector3(789, -1910, -46.7), Rotation(0) ),
 
                rand4 and World:spawn_unit( rand4,
                Vector3(425, -1562, -51.7), Rotation(90) ),
 
                rand5 and World:spawn_unit( rand5,
                Vector3(316, -1678, -551.624), Rotation(42) ),
 
                rand6 and World:spawn_unit( rand6,
                Vector3(3240, 1947, -190), Rotation(0) ),
 
                rand7 and World:spawn_unit( rand7,
                Vector3(-3432, 198, -925), Rotation(0) ),
 
                rand8 and World:spawn_unit( rand8,
                Vector3(-2535, 1849, -511.7), Rotation(0) ),
 
                rand9 and World:spawn_unit( rand9,
                Vector3(-1800, 1175, -500.71), Rotation(0) ),
 
                rand10 and World:spawn_unit( rand10,
                Vector3(-3721, 1547, -911.7), Rotation(0) ),
 
                rand11 and World:spawn_unit( rand11,
                Vector3(-917, 1372, -500.886), Rotation(0) ),
 
                rand12 and World:spawn_unit( rand12,
                Vector3(-1062, 1372, -500.886), Rotation(0) ),
 
                rand13 and World:spawn_unit( rand13,
                Vector3(-1320, 1372, -500.886), Rotation(0) ),
 
                rand14 and World:spawn_unit( rand14,
                Vector3(-1461, 1372, -500.886), Rotation(0) ),
 
                rand15 and World:spawn_unit( rand15,
                Vector3(1490, -1770, -405.014), Rotation(270) ),
 
                rand16 and World:spawn_unit( rand16,
                Vector3(1490, -1790, -405.014), Rotation(270) ),
 
                rand17 and World:spawn_unit( rand17,
                Vector3(1490, -1810, -405.014), Rotation(270) ),
 
                rand18 and World:spawn_unit( rand18,
                Vector3(1490, -1830, -405.014), Rotation(270) ),
 
                rand19 and World:spawn_unit( rand19,
                Vector3(574, -1050, -524.699), Rotation(0) ),
 
                rand20 and World:spawn_unit( rand20,
                Vector3(3110, 1280, -900.639), Rotation(90) ),
 
                rand21 and World:spawn_unit( rand21,
                Vector3(3110, 1415, -900.639), Rotation(90) ),
 
                rand22 and World:spawn_unit( rand22,
                Vector3(875, 1353, -834.5), Rotation(0) ),
 
                rand23 and World:spawn_unit( rand23,
                Vector3(3962, -862, -551.374), Rotation(261) ),
 
                rand24 and World:spawn_unit( rand24,
                Vector3(2325, 1371, -924.696), Rotation(90) ),
 
                rand25 and World:spawn_unit( rand25,
                Vector3(2500, 1723, -924.696), Rotation(0) ),
 
                rand26 and World:spawn_unit( rand26,
                Vector3(1800, 1723, -924.696), Rotation(0) ),
 
                rand27 and World:spawn_unit( rand27,
                Vector3(148, -1125, -433.889), Rotation(90) ),
 
                rand28 and World:spawn_unit( rand28,
                Vector3(3270, -1067, -900.639), Rotation(180) ),
 
                rand29 and World:spawn_unit( rand29,
                Vector3(-3131, -2253, -511.6), Rotation(180) ),
 
                rand30 and World:spawn_unit( rand30,
                Vector3(1276, -2153, -834.5), Rotation(180) ),
 
                rand31 and World:spawn_unit( rand31,
                Vector3(-1001, -124.5, -980.598), Rotation(225) ),
 
                rand32 and World:spawn_unit( rand32,
                Vector3(-1598, 373, -980.598), Rotation(45) ),
 
                rand33 and World:spawn_unit( rand33,
                Vector3(-3980, 1388, -496.194), Rotation(90) ),
 
                rand34 and World:spawn_unit( rand34,
                Vector3(-3980, 1513, -496.194), Rotation(90) ),
 
                rand35 and World:spawn_unit( rand35,
                Vector3(3342, -1067, -900.639), Rotation(180) ),
 
                rand36 and World:spawn_unit( rand36,
                Vector3(3900, 1075, -551.373), Rotation(270) ),
 
                rand37 and World:spawn_unit( rand37,
                Vector3(800, -1827, -405.014), Rotation(270) ),
 
                rand38 and World:spawn_unit( rand38,
                Vector3(853, -12, -951.37), Rotation(90) ),
 
                rand39 and World:spawn_unit( rand39,
                Vector3(-1390, 1372, -588.5), Rotation(0) ),
 
                rand40 and World:spawn_unit( rand40,
                Vector3(-989, 1372, -588.5), Rotation(0) ),
 
                rand41 and World:spawn_unit( rand41,
                Vector3(478, -1053, -524.699), Rotation(0) ),
 
                rand42 and World:spawn_unit( rand42,
                Vector3(-1200, 937, -551.618), Rotation(180) ),
 
                rand43 and World:spawn_unit( rand43,
                Vector3(330, -1620, -551.624), Rotation(140) ),
 
                rand44 and World:spawn_unit( rand44,
                Vector3(-1197, 914, -589.52), Rotation(220) ),
 
                rand45 and World:spawn_unit( rand45,
                Vector3(-2370, -1844, -524.921), Rotation(220) ),
 
                rand46 and World:spawn_unit( rand46,
                Vector3(-3409, 1290, -524.921), Rotation(18) ),
 
                rand47 and World:spawn_unit( rand47,
                Vector3(562, -1893, -523.016), Rotation(101) ),
 
                rand48 and World:spawn_unit( rand48,
                Vector3(1286, -1906, -523.095), Rotation(98) ),
 
                rand49 and World:spawn_unit( rand49,
                Vector3(2721, 1360, -922.772), Rotation(188) ),
 
                rand50 and World:spawn_unit( rand50,
                Vector3(2046, 1362, -922.772), Rotation(192) ),
 
                rand51 and World:spawn_unit( rand51,
                Vector3(1960, 1429, -922.772), Rotation(30) ),
 
                rand52 and World:spawn_unit( rand52,
                Vector3(2457, 1892, -922.772), Rotation(11) ),
 
                rand53 and World:spawn_unit( rand53,
                Vector3(2337, 1345, -522.762), Rotation(-8) ),
 
                rand54 and World:spawn_unit( rand54,
                Vector3(1167, 1205, -522.762), Rotation(6) ),
 
                rand55 and World:spawn_unit( rand55,
                Vector3(2878, 1202, -522.762), Rotation(186) ),
 
                rand56 and World:spawn_unit( rand56,
                Vector3(1933, 1544, -522.762), Rotation(273) ),
 
                rand57 and World:spawn_unit( rand57,
                Vector3(2950, 708, -905), Rotation(274) ),
 
                rand58 and World:spawn_unit( rand58,
                Vector3(2343, 282, -891.116), Rotation(274) ),
 
                rand59 and World:spawn_unit( rand59,
                Vector3(-2546, 180, -906.8), Rotation(90) ),
 
                rand60 and World:spawn_unit( rand60,
                Vector3(-2744, -366, -906.8), Rotation(0) ),
 
                rand61 and World:spawn_unit( rand61,
                Vector3(-5069, -239, -916.215), Rotation(180) ),
 
                rand62 and World:spawn_unit( rand62,
                Vector3(-5069, -239, -866.215), Rotation(180) ),
 
                rand63 and World:spawn_unit( rand63,
                Vector3(-5069, -239, -516.215), Rotation(180) ),
 
                rand64 and World:spawn_unit( rand64,
                Vector3(-5069, -239, -466.215), Rotation(180) ),
 
                rand65 and World:spawn_unit( rand65,
                Vector3(-5130, -1761, -916.215), Rotation(0) ),
 
                rand66 and World:spawn_unit( rand66,
                Vector3(-5130, -1761, -866.215), Rotation(0) ),
 
                rand67 and World:spawn_unit( rand67,
                Vector3(-5130, -1761, -516.215), Rotation(0) ),
 
                rand68 and World:spawn_unit( rand68,
                Vector3(-5130, -1761, -466.215), Rotation(0) ),
 
                rand69 and World:spawn_unit( rand69,
                Vector3(-4010, -1870, -916.215), Rotation(270) ),
 
                rand70 and World:spawn_unit( rand70,
                Vector3(-4010, -1870, -866.215), Rotation(270) ),
 
                rand71 and World:spawn_unit( rand71,
                Vector3(-4010, -1870, -516.215), Rotation(270) ),
 
                rand72 and World:spawn_unit( rand72,
                Vector3(-4010, -1870, -466.215), Rotation(270) ),
 
                rand73 and World:spawn_unit( rand73,
                Vector3(-3631, -1761, -916.215), Rotation(0) ),
 
                rand74 and World:spawn_unit( rand74,
                Vector3(-3631, -1761, -866.215), Rotation(0) ),
        }
        for k,v in pairs(spawns) do if v then v:interaction():set_active(true,true) end end
 
        autoloot_containers = {}
        if rand75 then table.insert(autoloot_containers, {
                { World:spawn_unit( rand75,
                Vector3(1587, 885, -904), Rotation(360) ),
                        "door_opened",
                        "interact"
                },
                'local unit = World:spawn_unit( Idstring('
                .. '"units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money" ),'
                .. 'Vector3(1560, 858, -896), Rotation(90) )'
                .. 'unit:interaction():set_active(true, true)'
        }) end
        for k,v in ipairs(autoloot_containers) do if v then v[1][1]:base():activate() end end
end
----------------------
------- GAME ---------
----------------------
autoloot_containers = autoloot_containers or {}
id_ukrandomloot5 = id_ukrandomloot5 or {}
id_jsrandomloot3 = id_jsrandomloot3 or {}
CoreUnitDamage_run_sequence = CoreUnitDamage_run_sequence or CoreUnitDamage.run_sequence
function CoreUnitDamage:run_sequence( name, endurance_type, source_unit, dest_body, normal, position, direction, damage, velocity, params )
        for _,loot in ipairs(autoloot_containers) do
                if loot[1][1] == self._unit then
                        local continue = false
                        for _,spawns in ipairs(loot) do
                                if type(spawns) == "table" then
                                        for _,sequences in ipairs(spawns) do
                                                if sequences == name then continue = true end
                                        end
                                elseif continue == true and type(spawns) == "string" then
                                        local func = loadstring(spawns)
                                        func()
        end end end end
        CoreUnitDamage_run_sequence( self, name, endurance_type, source_unit, dest_body, normal, position, direction, damage, velocity, params )
end
 
if not autoLoot_runOnce and inGame() and isPlaying() and isHost() and not inChat() then
        autoLoot_runOnce = true
                autoloot_containers = {}
 
                if managers.job:current_level_id() == "branchbank" then bank()
 
                elseif managers.job:current_level_id() == "family" then diamondstore()
 
                elseif managers.job:current_level_id() == "roberts" then gobank()
 
                elseif managers.job:current_level_id() == "four_stores" then fourstores()
 
                elseif managers.job:current_level_id() == "mallcrasher" then mallcrasher()
 
                elseif managers.job:current_level_id() == "ukrainian_job" then ukranianjob()
 
                elseif managers.job:current_level_id() == "jewelry_store" then jewels()
 
                elseif managers.job:current_level_id() == "election_day_2" then electionwarehouse()
 
                elseif managers.job:current_level_id() == "firestarter_3" then bank()
 
                elseif managers.job:current_level_id() == "firestarter_2" then firestarterd2()
 
                elseif managers.job:current_level_id() == "alex_2" then ratsday2()
 
                elseif managers.job:current_level_id() == "alex_3" then ratsday3()
 
                elseif managers.job:current_level_id() == "welcome_to_the_jungle_1" then bigoilday1()
 
                elseif managers.job:current_level_id() == "welcome_to_the_jungle_2" then bigoilday2()
 
                elseif managers.job:current_level_id() == "nightclub" then nightclub()
 
                elseif managers.job:current_level_id() == "kosugi" then shadow()
 
                elseif managers.job:current_level_id() == "big" then bigbank()
 
                elseif managers.job:current_level_id() == "arm_cro" then transportcross()
 
                else
			if is_french then
				ShowHint("BUTIN SUPPLÉMENTAIRE SPAWNER (INDISPONIBLE ICI)",3)
			else
				ShowHint("EXTRA LOOT SPAWNER (UNAVAILABLE HERE)",3)
			end

                return
        end
        elseif not isHost() then
			if is_french then
				ShowHint("BUTIN SUPPLÉMENTAIRE SPAWNER (HOST UNIQUEMENT)",3)
			else
				ShowHint("EXTRA LOOT SPAWNER (HOST ONLY)",3)
			end
        return
        elseif autoLoot_runOnce then
			if is_french then
				ShowHint("BUTIN SUPPLÉMENTAIRE SPAWNER (BUTIN DÉJÀ SPAWN)",3)
			else
				ShowHint("EXTRA LOOT SPAWNER (LOOT ALREADY SPAWN)",3)
			end
        return
end    
if is_french then
	ShowHint("BUTIN SUPPLÉMENTAIRE SPAWNER (SPAWN RÉUSSI)",3)
else
	ShowHint("EXTRA LOOT SPAWNER (SPAWN SUCCESSFUL)",3)
end