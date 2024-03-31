-- SPAWN EXPLOSION AU CROSSHAIR
-- By Slynderdale
-- SYNC PROBLEMS

if inGame() and isPlaying() and not inChat() then
	local player = managers.player:player_unit()
	local ray = get_crosshair_ray()
	if not ray then return end
	--------------------------------------------------------------
	local damage_size = tweak_data.weapon.trip_mines.damage_size * managers.player:upgrade_value( "trip_mine", "explosion_size_multiplier", 1 ) * managers.player:upgrade_value( "trip_mine", "damage_multiplier", 1 )
	local damage = tweak_data.weapon.trip_mines.damage * managers.player:upgrade_value( "trip_mine", "damage_multiplier", 1 )
	---------------
	World:effect_manager():spawn( { effect = Idstring( "effects/particles/explosions/explosion_grenade" ), position = ray.position, normal = ray.normal } )
	local sound_source = SoundDevice:create_source( "TripMineBase" )
	sound_source:set_position( ray.position )
	sound_source:post_event( "trip_mine_explode" )
	---------------
	local slotmask = managers.slot:get_mask( "bullet_impact_targets" )
	local bodies = World:find_bodies( "intersect", "cylinder", ray.position, ray.normal, damage_size, slotmask )
	local amount = 0
	local characters_hit = {}
	---------------
	for _, hit_body in ipairs( bodies ) do
	  local character = hit_body:unit():character_damage() and hit_body:unit():character_damage().damage_explosion
	  local apply_dmg = hit_body:extension() and hit_body:extension().damage
	  local dir, ray_hit
	  if character and not characters_hit[ hit_body:unit():key() ] then
		  local com = hit_body:center_of_mass()
		  local ray_from = math.point_on_line( ray.position, ray.normal, com )
		  ray_hit = not World:raycast( "ray", ray_from, com, "slot_mask", slotmask, "ignore_unit", { hit_body:unit() }, "report" )
		  if ray_hit then
			  characters_hit[ hit_body:unit():key() ] = true
		  end
	  elseif apply_dmg or hit_body:dynamic() then
		  ray_hit = true
	  end
	  if ray_hit then
		  dir = hit_body:center_of_mass()
		  mvector3.direction( dir, ray.position, dir )
		  if apply_dmg then
		local normal = dir
			  hit_body:extension().damage:damage_explosion( player, normal, hit_body:position(), dir, damage )
				hit_body:extension().damage:damage_damage( player, normal, hit_body:position(), dir, damage )
				if hit_body:unit():id() ~= -1 then
					if player then
						managers.network:session():send_to_peers_synched( "sync_body_damage_explosion", hit_body, player, normal, hit_body:position(), dir, damage )
					else
						managers.network:session():send_to_peers_synched( "sync_body_damage_explosion_no_attacker", hit_body, normal, hit_body:position(), dir, damage )
					end
				end
			end
			if hit_body:unit():in_slot( managers.game_play_central._slotmask_physics_push ) then
				hit_body:unit():push( 5, dir * 500 )
			end
			if character then
				TripMineBase:_give_explosion_damage( ray, hit_body:unit(), damage )
				amount = amount + 1
			end
		end
	end
	if managers.network:session() then
	  managers.network:session():send_to_peers_synched( "sync_trip_mine_explode_no_user", nil, ray.position, ray.normal, damage_size, damage )
	end
end