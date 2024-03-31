--DLC HACK by OJSimpson
--Community DLC weapons unlock
if not GenericDLCManager then return end
function GenericDLCManager:has_pd2_clan()
	return true
end
--RUN DURING INTRO MOVIE TO UNLOCK ALL DLC IN THE GAME
for dlc_name, dlc_data in pairs( Global.dlc_manager.all_dlc_data ) do
	dlc_name = { app_id = "218620", no_install = true }
	dlc_data.verified = true
end
-- FOR JSON
DLC_UNLOCKER = 0