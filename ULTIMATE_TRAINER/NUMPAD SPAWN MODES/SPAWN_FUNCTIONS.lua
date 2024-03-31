---------------------------------------------------------------------------
-- SPAWN CODES BY PIERREDJAYS & INFORMATIXA & SPAWN BAGS BY SIRGOODSMOKE --
----------------------------------------------------------------------------

-- SPAWN ENEMY ON CROSSHAIR
function spawn_enemy_crosshair(unit_name)
    if alive(managers.player:player_unit()) then
        local position = get_crosshair_pos() -- SPAWN ON CROSSHAIR
        local rotation = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
        if not position or not rotation then return end
        local unit = ''
        unit = 'units/payday2/characters/'.. unit_name ..'/'.. unit_name
        World:spawn_unit( Idstring(unit), position, rotation )
    end
end

-- SPAWN ENEMY ON SELF
function spawn_enemy_self(unit_name)
    if alive(managers.player:player_unit()) then
        local position = managers.player:player_unit():position() -- SPAWN ON SELF
        local rotation = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
        local unit = ''
        unit = 'units/payday2/characters/'.. unit_name ..'/'.. unit_name
        World:spawn_unit( Idstring(unit), position, rotation )
    end
end

-- INFINITE CONVERSIONS
if not _upgradeValueIntimidate then _upgradeValueIntimidate = PlayerManager.upgrade_value end
function PlayerManager:upgrade_value( category, upgrade, default )
    if category == "player" and upgrade == "convert_enemies" then
        return true
        elseif category == "player" and upgrade == "convert_enemies_max_minions" then
        return 9999
        else
        return _upgradeValueIntimidate(self, category, upgrade, default)
    end
end

-- SPAWN ALLIED ON CROSSHAIR
function spawn_allied_crosshair(unit_name)
    local position = get_crosshair_pos()
    local rotation = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
    if not position or not rotation then return end
    local unit = World:spawn_unit( Idstring('units/payday2/characters/'.. unit_name ..'/'.. unit_name..''), position, rotation )
    managers.groupai:state():convert_hostage_to_criminal( unit )
    managers.groupai:state():sync_converted_enemy( unit )
end

-- SPAWN ALLIED ON SELF
function spawn_allied_self(unit_name)
    local position = managers.player:player_unit():position() -- SPAWN ON SELF
    local rotation = Rotation(managers.player:local_player():movement():m_head_rot():yaw(),0,0)
    local unit = World:spawn_unit( Idstring('units/payday2/characters/'.. unit_name ..'/'.. unit_name..''), position, rotation )
    managers.groupai:state():convert_hostage_to_criminal( unit )
    managers.groupai:state():sync_converted_enemy( unit )
end

-- SPAWN BAG FUNCTION
function spawn_bag(bag_name, zipline_unit)
    if not alive (managers.player:player_unit()) then return end
    local camera_ext = managers.player:player_unit():camera()
    local carry_data = tweak_data.carry[ bag_name ]
    local dye_initiated = carry_data.dye_initiated
    local has_dye_pack = carry_data.has_dye_pack
    local dye_value_multiplier = carry_data.dye_value_multiplier
    if Network:is_client() then
        managers.network:session():send_to_host("server_drop_carry", bag_name, carry_data.multiplier, carry_data.dye_initiated, carry_data.has_dye_pack, carry_data.dye_value_multiplier, camera_ext:position(), camera_ext:rotation(), camera_ext:forward(), Vector3(0, 0, 0), zipline_unit)
    else
        managers.player:server_drop_carry(bag_name, carry_data.multiplier, carry_data.dye_initiated, carry_data.has_dye_pack, carry_data.dye_value_multiplier, camera_ext:position(), camera_ext:rotation(), camera_ext:forward(), Vector3(0, 0, 0), zipline_unit, managers.network:session():local_peer():id())
end end

-- BAG RAIN FUNCTION
function rain_bag(bag_name)
    for pl_key, pl_record in pairs( managers.groupai:state():all_player_criminals() ) do
        if pl_record.status ~= "dead" then
            local unit = managers.groupai:state():all_player_criminals()[ pl_key ].unit:position()
            local carry_data = tweak_data.carry[ bag_name ]
            local dye_initiated = carry_data.dye_initiated
            local has_dye_pack = carry_data.has_dye_pack
            local dye_value_multiplier = carry_data.dye_value_multiplier
            if Network:is_client() then
                managers.network:session():send_to_host( "server_drop_carry", "".. bag_name .."", carry_data.multiplier, carry_data.dye_initiated, carry_data.has_dye_pack, carry_data.dye_value_multiplier, unit, Rotation( math.UP, math.random() * 360 ), Vector3( 0,0,-100 ))
            else
                managers.player:server_drop_carry( "".. bag_name .."", carry_data.multiplier, carry_data.dye_initiated, carry_data.has_dye_pack, carry_data.dye_value_multiplier, unit, Rotation( math.UP, math.random() * 360 ), Vector3( 0,0,-100 ), managers.network:session():local_peer():id())
end end end end  