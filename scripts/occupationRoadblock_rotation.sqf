/*
   Load the Script on Server Start
   @ExileServer/addons/a3_exile_occupation/init.sqf
   [] execVM "\a3_exile_occupation\scripts\occupationRoadblock_rotation.sqf";
   
   Register It in config.sqf (If Needed)
   Location: @ExileServer/addons/a3_exile_occupation/config.sqf

   If we want better control over how this new script works, add a setting to toggle it ON/OFF:
   This ensures the script loads as part of Exile Occupation’s startup process.

   SC_occupyRoadblocks = true;  // Set to false to disable AI roadblocks

   Now, modify init.sqf to only run if roadblocks are enabled:
      if (SC_occupyRoadblocks) then {
          [] execVM "\a3_exile_occupation\scripts\occupationRoadblock_rotation.sqf";
      };
   
   Registering it as a DMS Mission (instead of execVM)
   If using DMS, we can call occupationRoadblock_rotation.sqf as a mission, allowing more control over AI spawn behavior.
   ["occupationRoadblock_rotation", "DMS_STATIC"] call DMS_fnc_MissionRequest;
*/
while {true} do {
    private _activeRoadblocks = [];
    
    // Deactivate all roadblocks
    SC_staticBandits = [];

    // Select a random number of roadblocks to activate
    private _roadblocksToActivate = selectRandom [3, 5, 7];  // 3 to 7 active at any time
    for "_i" from 1 to _roadblocksToActivate do {
        private _roadblock = selectRandom SC_allRoadblocks; // Pull from master list
        _activeRoadblocks pushBack _roadblock;
    };

    // Update SC_staticBandits with only the selected roadblocks
    SC_staticBandits = _activeRoadblocks;

    // Broadcast new roadblock locations
    publicVariable "SC_staticBandits";

    // Wait X minutes before rotating roadblocks
    sleep (30 * 60); // 30 minutes
};
