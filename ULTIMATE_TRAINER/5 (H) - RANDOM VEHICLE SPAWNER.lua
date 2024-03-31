---------------------------------
-- RANDOM VEHICLE SPAWNER - V1.1-
------ By SirGoodsmoke ----------
---------------------------------    
spwnvehicleb = spwnvehicleb or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehiclecsgb = spwnvehiclecsgb or function()
    local id_table =
{    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/cara_82hatchback"),
    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/cara_84sedan"),
    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/cara_95sedan"),
    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/flatnose_truck"),
    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/pickup_truck_2004"),
    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/suv_2001"),
    Idstring("units/pd2_dlc2/csgo_models/props_vehicles/van"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(7)], pos, randvrot )
end

spwnvehicleds = spwnvehicleds or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_sport/str_vehicle_car_sport2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_sport/str_vehicle_car_sport_showroom")
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()  
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(4)], pos, randvrot )
end

spwnvehiclejs = spwnvehiclejs or function()
   local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/payday2/vehicles/str_vehicle_car_ford/str_vehicle_car_ford"),
    Idstring("units/payday2/vehicles/str_vehicle_pickuptruck_sportcab/str_vehicle_pickuptruck_sportcab"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(5)], pos, randvrot )
end

spwnvehicletc = spwnvehicletc or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_taxi/str_vehicle_car_taxi"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_compact_open/str_vehicle_car_compact_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_ford_open/str_vehicle_car_ford_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_modernsedan2_open/str_vehicle_car_modernsedan2_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_taxi_open/str_vehicle_car_taxi_open"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()  
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(8)], pos, randvrot )
end

spwnvehicletd = spwnvehicletd or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_compact_open/str_vehicle_car_compact_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_ford_open/str_vehicle_car_ford_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_modernsedan2_open/str_vehicle_car_modernsedan2_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_taxi_open/str_vehicle_car_taxi_open"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(7)], pos, randvrot )
end

spwnvehicletp = spwnvehicletp or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_compact_open/str_vehicle_car_compact_open"),
    Idstring("units/payday2/vehicles/str_vehicle_car_sport/str_vehicle_car_sport_showroom"),
    Idstring("units/payday2/vehicles/str_vehicle_car_ford/str_vehicle_car_ford"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_ford_open/str_vehicle_car_ford_open"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_modernsedan2_open/str_vehicle_car_modernsedan2_open"),
    Idstring("units/payday2/vehicles/str_vehicle_pickuptruck_sportcab/str_vehicle_pickuptruck_sportcab"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(8)], pos, randvrot )
end

spwnvehicletu = spwnvehicletu or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_compact_open/str_vehicle_car_compact_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_ford_open/str_vehicle_car_ford_open"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_modernsedan2_open/str_vehicle_car_modernsedan2_open"),
    Idstring("units/pd2_dlc1/vehicles/str_vehicle_car_taxi_open/str_vehicle_car_taxi_open"),
    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/payday2/vehicles/str_vehicle_truck_ambulance/str_vehicle_truck_ambulance"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(8)], pos, randvrot )
end

spwnvehiclefs1 = spwnvehiclefs1 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/air_truck_baggage/air_truck_baggage"),
    Idstring("units/payday2/vehicles/air_vehicle_truck_firetruck/air_vehicle_truck_firetruck"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(4)], pos, randvrot )
end

spwnvehiclefs2 = spwnvehiclefs2 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_taxi/str_vehicle_car_taxi"),
    Idstring("units/payday2/vehicles/str_vehicle_suburban_fbi/str_vehicle_suburban_fbi"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehicler1 = spwnvehicler1 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/str_vehicle_car_ford_graffiti/str_vehicle_car_ford_graffiti"),
    Idstring("units/payday2/vehicles/str_vehicle_pickup_truck/str_vehicle_pickup_truck"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehicler2 = spwnvehicler2 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_ford_graffiti/str_vehicle_car_ford_graffiti"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(1)], pos, randvrot )
end

spwnvehicler3 = spwnvehicler3 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_taxi/str_vehicle_car_taxi"),
    Idstring("units/payday2/vehicles/str_vehicle_pickup_truck/str_vehicle_pickup_truck"),
    Idstring("units/payday2/vehicles/str_vehicle_suburban_fbi/str_vehicle_suburban_fbi"),
    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/payday2/vehicles/str_vehicle_bus_metro/str_vehicle_bus_metro"),    
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(8)], pos, randvrot )
end

spwnvehiclewd1 = spwnvehiclewd1 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/payday2/vehicles/str_vehicle_car_ford/str_vehicle_car_ford"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(2)], pos, randvrot )
end

spwnvehiclewd2 = spwnvehiclewd2 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_suburban_fbi/str_vehicle_suburban_fbi"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
    Idstring("units/payday2/vehicles/gen_vehicle_cocaineboat/gen_vehicle_cocaineboat"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehiclebo1 = spwnvehiclebo1 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_suburban/str_vehicle_car_suburban"),
    Idstring("units/payday2/vehicles/str_vehicle_motorcycle_chopper/str_vehicle_motorcycle_chopper"),
    Idstring("units/payday2/vehicles/ind_vehicle_truck_forklift/ind_vehicle_truck_forklift"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehiclebo2 = spwnvehiclebo2 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_sport/str_vehicle_car_sport2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_sport/str_vehicle_car_sport1"),
    Idstring("units/payday2/vehicles/air_vehicle_cessna_206/air_vehicle_cessna_206"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehicleff1 = spwnvehicleff1 or function()
    local id_table =
{    Idstring("units/payday2/vehicles/sub_vehicle_train_seata_dmg/sub_vehicle_train_seata_dmg"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(1)], pos, randvrot )
end

spwnvehiclef = spwnvehicelf or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_compact/str_vehicle_car_compact"),
    Idstring("units/payday2/vehicles/str_vehicle_car_taxi/str_vehicle_car_taxi"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_ford/str_vehicle_car_ford"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(4)], pos, randvrot )
end

spwnvehiclemc = spwnvehiclemc or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(3)], pos, randvrot )
end

spwnvehiclenc = spwnvehiclenc or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_taxi/str_vehicle_car_taxi"),
    Idstring("units/payday2/vehicles/str_vehicle_car_charger/str_vehicle_car_charger"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan2/str_vehicle_car_modernsedan2"),
    Idstring("units/payday2/vehicles/str_vehicle_car_modernsedan/str_vehicle_car_modernsedan"),
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(4)], pos, randvrot )
end

spwnvehiclesr = spwnvehiclesr or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_car_ford_graffiti/str_vehicle_car_ford_graffiti"),
    Idstring("units/payday2/vehicles/ind_vehicle_truck_forklift/ind_vehicle_truck_forklift")
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(2)], pos, randvrot )
end

spwnvehiclebb = spwnvehiclebb or function()
    local id_table =
{    Idstring("units/payday2/vehicles/str_vehicle_van_player/str_vehicle_van_player")
}
    local rr = math.random(-360,360)
    local randvrot = Rotation(rr)
    local pos = get_crosshair_pos()
  if not pos or not randvrot then
    return
  end
  World:spawn_unit(id_table[math.random(1)], pos, randvrot )
end
----------------------
-------GAME-----------
----------------------
if inChat() then return end
if inGame() and isPlaying() and isHost() then

-- BANK HEIST
    if managers.job:current_level_id() == "branchbank" then
    spwnvehicleb()
-- GO BANK
    elseif managers.job:current_level_id() == "roberts" then
    spwnvehiclecsgb()
-- DIAMOND STORE
    elseif managers.job:current_level_id() == "family" then
    spwnvehicleds()
-- JEWELERY STORE
    elseif managers.job:current_level_id() == "jewelry_store" then
    spwnvehiclejs()
--TRANSPORT:CROSSROADS    
    elseif managers.job:current_level_id() == "arm_cro" then
    spwnvehicletc()
--TRANSPORT:DOWNTOWN
    elseif managers.job:current_level_id() == "arm_hcm" then
    spwnvehicletd()
--TRANSPORT:PARK
    elseif managers.job:current_level_id() == "arm_par" then
    spwnvehicletp()
--TRANSPORT:UNDERPASS
    elseif managers.job:current_level_id() == "arm_und" then
    spwnvehicletu()
--FIRESTARTER DAY 1
    elseif managers.job:current_level_id() == "firestarter_1" then
    spwnvehiclefs1()
--FIRESTARTER DAY 2
    elseif managers.job:current_level_id() == "firestarter_2" then
    spwnvehiclefs2()
--FIRESTARTER DAY 3
    elseif managers.job:current_level_id() == "firestarter_3" then
    spwnvehicleb()
--RATS DAY 1
    elseif managers.job:current_level_id() == "alex_1" then
    spwnvehicler1()
--RATS DAY 2
    elseif managers.job:current_level_id() == "alex_2" then
    spwnvehicler2()
--RATS DAY 3
    elseif managers.job:current_level_id() == "alex_3" then
    spwnvehicler3()
--WATCHDOGS DAY 1
    elseif managers.job:current_level_id() == "watchdogs_1" then
    spwnvehiclewd1()
--WATCHDOGS DAY 2
    elseif managers.job:current_level_id() == "watchdogs_2" then
    spwnvehiclewd2()
--BIGOIL DAY 1
    elseif managers.job:current_level_id() == "welcome_to_the_jungle_1" then
    spwnvehiclebo1()
--BIGOIL DAY 2
    elseif managers.job:current_level_id() == "welcome_to_the_jungle_2" then
    spwnvehiclebo2()
--FRAMING FRAME DAY 1
    elseif managers.job:current_level_id() == "framing_frame_1" then
    spwnvehicleff1()
--FOUR STORES
    elseif managers.job:current_level_id() == "four_stores" then
    spwnvehiclef()
--MALLCRASHER
    elseif managers.job:current_level_id() == "mallcrasher" then
    spwnvehiclemc()
--NIGHTCLUB
    elseif managers.job:current_level_id() == "nightclub" then
    spwnvehiclenc()
--UKRANIAN JOB
    elseif managers.job:current_level_id() == "ukrainian_job" then
    spwnvehiclejs()
--SHADOW RAID
    elseif managers.job:current_level_id() == "kosugi" then
    spwnvehiclesr()
--BIG BANK
    elseif managers.job:current_level_id() == "big" then
    spwnvehiclebb()
		else
			if is_french then
			ShowHint("VÉHICULE SPAWNER (INDISPONIBLE ICI)",3)
		else
			ShowHint("VEHICLE SPAWNER (UNAVAILABLE HERE)",3)
		end
    end
end  