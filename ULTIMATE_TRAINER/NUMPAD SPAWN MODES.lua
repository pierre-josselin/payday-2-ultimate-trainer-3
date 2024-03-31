--------------------------------
--- NUMPAD SPAWN MODES V3.1 ----
-------- BY PIERREDJAYS --------
--------------------------------

-- LOAD FUNCTIONS
dofiles("ULTIMATE_TRAINER/NUMPAD SPAWN MODES/SPAWN_FUNCTIONS.lua")

if not load_data then
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
spawn_crosshair = true
load_data = true
end

function spawn_enemy()
managers.blackmarket:preload_equipped_weapons()
data_se = true
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_enemy_special()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = true
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_enemy_elitegensec()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = true
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_allied()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = true
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_allied_special()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = true
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_allied_elitegensec()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = true
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_bag()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = true
data_sbs = false
data_sr = false
data_srs = false
data_off = false
end

function spawn_bag_special()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = true
data_sr = false
data_srs = false
data_off = false
end

function spawn_rainbag()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = true
data_srs = false
data_off = false
end

function spawn_rainbag_special()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = true
data_off = false
end

function disable_numpad_spawn()
managers.blackmarket:preload_equipped_weapons()
data_se = false
data_ses = false
data_seeg = false
data_sa = false
data_sas = false
data_saeg = false
data_sb = false
data_sbs = false
data_sr = false
data_srs = false
data_off = true
end

function spawn_on_crosshair()
spawn_crosshair = true
end

function spawn_on_self()
spawn_crosshair = false
end

numpad_host = {}
if is_french then
	numpad_host[#numpad_host+1] = { text = "SPAWN LES UNITÉS SUR SOI", callback = spawn_on_self }
	numpad_host[#numpad_host+1] = { text = "SPAWN LES UNITÉS A LA CROIX", callback = spawn_on_crosshair }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN ENNEMIS", callback = spawn_enemy }
	numpad_host[#numpad_host+1] = { text = "(SPÉCIAUX) SPAWN ENNEMIS", callback = spawn_enemy_special }
	numpad_host[#numpad_host+1] = { text = "(ÉLITE GENSEC) SPAWN ENNEMIS", callback = spawn_enemy_elitegensec }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN ALLIÉS", callback = spawn_allied }
	numpad_host[#numpad_host+1] = { text = "(SPÉCIAUX) SPAWN ALLIÉS", callback = spawn_allied_special }
	numpad_host[#numpad_host+1] = { text = "(ÉLITE GENSEC) SPAWN ALLIÉS", callback = spawn_allied_elitegensec }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN SACS", callback = spawn_bag }
	numpad_host[#numpad_host+1] = { text = "(SPÉCIAUX) SPAWN SACS", callback = spawn_bag_special }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN PLUIE DE SACS", callback = spawn_rainbag }
	numpad_host[#numpad_host+1] = { text = "(SPÉCIAUX) SPAWN PLUIE DE SACS", callback = spawn_rainbag_special }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "DÉSACTIVER LES NUMPAD MODES", callback = disable_numpad_spawn }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "RETOUR", is_cancel_button = true }
else
	numpad_host[#numpad_host+1] = { text = "SPAWN UNITS ON SELF", callback = spawn_on_self }
	numpad_host[#numpad_host+1] = { text = "SPAWN UNITS ON CROSSHAIR", callback = spawn_on_crosshair }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN ENEMIES", callback = spawn_enemy }
	numpad_host[#numpad_host+1] = { text = "(SPECIALS) SPAWN ENEMIES", callback = spawn_enemy_special }
	numpad_host[#numpad_host+1] = { text = "(ÉLITE GENSEC) SPAWN ENEMIES", callback = spawn_enemy_elitegensec }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN ALLIES", callback = spawn_allied }
	numpad_host[#numpad_host+1] = { text = "(SPECIALS) SPAWN ALLIES", callback = spawn_allied_special }
	numpad_host[#numpad_host+1] = { text = "(ÉLITE GENSEC) SPAWN ALLIES", callback = spawn_allied_elitegensec }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN BAGS", callback = spawn_bag }
	numpad_host[#numpad_host+1] = { text = "(SPECIALS) SPAWN BAGS", callback = spawn_bag_special }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "SPAWN BAGS RAIN", callback = spawn_rainbag }
	numpad_host[#numpad_host+1] = { text = "(SPECIALS) SPAWN BAGS RAIN", callback = spawn_rainbag_special }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "DISABLE NUMPAD MODES", callback = disable_numpad_spawn }
	numpad_host[#numpad_host+1] = { text = "", is_cancel_button = true }
	numpad_host[#numpad_host+1] = { text = "EXIT", is_cancel_button = true }
end
if not call_numpad_host then
call_numpad_host = SimpleMenu:new("NUMPAD SPAWN MODES MENU", "By PierreDjays", numpad_host)
end

if inChat() then return end
if inGame() and isPlaying() and isHost() then
	call_numpad_host:show()
else
	if is_french then
	Showhint("NUMPAD SPAWN MODES MENU (HOST UNIQUEMENT)",3)
	else
	Showhint("NUMPAD SPAWN MODES MENU (HOST ONLY)",3)
	end
end