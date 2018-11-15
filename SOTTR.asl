state("SOTTR")
{
  bool Loading        : 0x14228A0;
  bool Loading2       : 0x1456370;
  // BAD LOADING. They should be updated but it would require a pointer which is actually hard to find :/
  // With the game updating so often, it isn't worth finding it again until updates stop
  bool InCutscene     : 0x145D930; // Doesn't remove Deaths at Trial of the Eagle (After Skip Falling down)
  string50 Area  : 0x3571AF8;
}

init // When the game is opened
{
  timer.IsGameTimePaused = false; // Unpause the timer
}

startup
{
  // === Splits List === //
  // These are for the Areas
  // 1st String = Settting ID and what the script checks for
  // 2nd String = Description for setting
  // 3rd String (If present) = What its parent is
  List<List<string>> Splits = new List<List<string>>
  {
    // === Cozumel Caves === //
      new List<string>{"pl_prologue","Beginning Cave", "CoC"},
      new List<string>{"cine_mayan_runout","Runout Sequence"},
    // === Cozumel === //
      new List<string>{"dd_day_of_the_dead_010", "Beginning of Cozumel", "Co"},
      new List<string>{"dd_day_of_the_dead_020", "Skull Cave"},
      new List<string>{"dd_day_of_the_dead_030", "Underwater Part"},
      new List<string>{"dd_day_of_the_dead_040", "Temple Puzzle"},
      new List<string>{"dd_day_of_the_dead_050", "Combat"},
      new List<string>{"tf_the_flood", "Flood Part"},
    // === Peruvian Jungle === //
      // Main Areas //
        new List<string>{"cine_plane_crash", "Plane Crash Cutscene", "PJMA"},
        new List<string>{"lj_lost_in_the_jungle_v2_01", "Jungle Beginning"},
        new List<string>{"lj_lost_in_the_jungle_v2_02", "Plane Crash Area"},
        new List<string>{"lj_lost_in_the_jungle_v2_03", "Jaguar Area"},
        new List<string>{"lj_lost_in_the_jungle_v2_04", "Before AIRWALKLESS Childhood Skip"},
        new List<string>{"lj_lost_in_the_jungle_v2_connector_out", "Connector to Kuwaq Yaku"},
      // Crypts //
        new List<string>{"crypt_009","Crypt 009 (Near Crash Area)","PJCR"},
        new List<string>{"cr_lastbreath","Second Crypt"},
      // Tombs //
        new List<string>{"ct_court_of_death_connector","Court of Death Path", "PJCT"},
        new List<string>{"ct_court_of_death","Court of Death Puzzle"},
        new List<string>{"ct_gate_of_xibalba_connector","Gate of Xibalba Path"},
        new List<string>{"ct_gate_of_xibalba","Gate of Xibilba"},
    // === Croft Manor === //
      new List<string>{"cm_croft_manor", "Croft Manor", "CM"},
    // === Kuwaq Yaku === //
      // Main Areas //
        new List<string>{"hv_hollow_village_v2_01", "Main Village", "KYMA"},
        new List<string>{"hv_hollow_village_v2_02", "Stealth Part"},
        new List<string>{"hv_hollow_village_v2_03", "Underground Part / Stealth Part 2"},
        new List<string>{"hv_hollow_village_v2_connector_out", "Water part to spider trial"},
      // Crypts //
        new List<string>{"cr_newfall_01", "cr_newfall_01", "KYCR"},
      // Tombs //
        new List<string>{"ct_xolotl_connector", "ct_xolotl_connector", "KYCT"},
        new List<string>{"ct_xolotl", "ct_xolotl"},
    // Trial of the Eagle //
      new List<string>{"ct_citadel_of_wind", "ct_citadel_of_wind" ,"TOTE"},
      new List<string>{"ct_citadel_of_wind_connector", "ct_citadel_of_wind_connector"},
    // === Paititi === //
      // Main Areas //
        new List<string>{"av_abandonned_village", "av_abandonned_village", "PMA"},
        new List<string>{"pa_hub_paititi", "pa_hub_paititi"},
        new List<string>{"pa_hub_paititi_connector_from_cenote", "pa_hub_paititi_connector_from_cenote"},
        new List<string>{"pa_hub_paititi_middle_island", "pa_hub_paititi_middle_island"},
        new List<string>{"pa_hub_paititi_return_02", "pa_hub_paititi_return_02"},
        new List<string>{"pa_hub_paititi_wilderness", "pa_hub_paititi_wilderness"},
      // Crypts //
        new List<string>{"sm_spanish_mission_cr04", "sm_spanish_mission_cr04", "PCR"},
        new List<string>{"cr_nepenthes", "cr_nepenthes"},
        new List<string>{"cr_el_dorado", "cr_el_dorado"},
        new List<string>{"pa_hub_paititi_cr02", "pa_hub_paititi_cr02"},
      // Tombs //
        new List<string>{"ct_serpents_hollow_connector", "ct_serpents_hollow_connector", "PCT"},
        new List<string>{"ct_serpents_hollow", "ct_serpents_hollow"},
        new List<string>{"ct_sky_temple_connector", "ct_sky_temple_connector"},
        new List<string>{"ct_sky_temple_v2", "ct_sky_temple_v2"},
        new List<string>{"ct_warriors_trial_connector", "ct_warriors_trial_connector"},
        new List<string>{"ct_warriors_trial", "ct_warriors_trial"},
    // === Mountain Temple === //
      new List<string>{"pa_hub_paititi_kings_tomb_connector_01", "pa_hub_paititi_kings_tomb_connector_01", "MT"},
      new List<string>{"pa_hub_paititi_kings_tomb", "pa_hub_paititi_kings_tomb"},
      new List<string>{"pa_hub_paititi_kings_tomb_to_cenote_connector", "pa_hub_paititi_kings_tomb_to_cenote_connector"},
    // === Cenote === //
      // Main Areas //
        new List<string>{"ce_010_fall", "ce_010_fall", "CeMA"},
        new List<string>{"ce_020_camp", "ce_020_camp"},
        new List<string>{"ce_030_den", "ce_030_den"},
        new List<string>{"ce_040_tomb", "ce_040_tomb"},
        new List<string>{"ce_050_exit", "ce_050_exit"},
      // Tombs //
        new List<string>{"ct_spanish_galleon_connector", "ct_spanish_galleon_connector", "CeCT"},
        new List<string>{"ct_spanish_galleon", "ct_spanish_galleon"},
    // === Belly of the Serpent === //
      new List<string>{"sp_sacrificial_pit", "sp_sacrificial_pit", "BOTS"},
    // === Head of the Serpent === //
      new List<string>{"dm_devils_maw", "dm_devils_maw", "HOTS"},
    // === Porvenir Oil Fields === //
      new List<string>{"an_apocalypse_now_v2_01", "an_apocalypse_now_v2_01", "POF"},
      new List<string>{"an_apocalypse_now_v2_02", "an_apocalypse_now_v2_02"},
      new List<string>{"an_apocalypse_now_v2_03", "an_apocalypse_now_v2_03"},
      new List<string>{"an_apocalypse_now_v2_04", "an_apocalypse_now_v2_04"},
    // === Mission of San Juan === //
      // Main Areas //
        new List<string>{"sm_spanish_mission_village", "sm_spanish_mission_village", "SJMA"},
        new List<string>{"sm_spanish_mission_cornfield", "sm_spanish_mission_cornfield"},
        new List<string>{"ta_010_volcano", "ta_010_volcano"},
      // Crypts //
        new List<string>{"sm_spanish_mission_crypt_003", "sm_spanish_mission_crypt_003", "SJCR"},
      // Tombs //
        new List<string>{"ct_tree_of_life_connector", "ct_tree_of_life_connector", "SJCT"},
        new List<string>{"ct_tree_of_life", "ct_tree_of_life"},
        new List<string>{"ct_flooded_sanctuary_connector", "ct_flooded_sanctuary_connector"},
    // === City of the Serpent === //
        new List<string>{"ch_chamber_of_heaven", "ch_chamber_of_heaven", "COTS"}
  };
  vars.Splits = Splits;

  // === Settings === //
  // - Options - //
  settings.Add("Op", true, "Options");
    settings.Add("StNG", true, "Start timer at New Game", "Op");
      settings.SetToolTip("StNG", "Can use both");
    settings.Add("StCo", true, "Start timer at Cozumel", "Op");
      settings.SetToolTip("StCo", "Can use both");
    settings.Add("DSP", true, "Prevent splitting the same split again", "Op");
      settings.SetToolTip("DSP", "Recommended but this can be disabled aslong as you're route and splits will work with it");

  settings.Add("AS", true, "Area Splits");
  settings.CurrentDefaultParent = "AS"; // So all of these splits (v) are children of (^)

  // === Parents === //
  /*  Basically just the containers for each Area
      To keep it organised c:
  */
  settings.Add("CoC",false,"Cozumel Caves"); // Cozumel Caves
  settings.Add("Co",false,"Cozumel"); // Cozumel //
  settings.Add("PJ",false,"Peruvian Jungle"); // Peruvian Jungle //
    settings.Add("PJMA", false, "Main Areas", "PJ");  // Main Areas //
    settings.Add("PJCR", false, "Crypts", "PJ");  // Crypts //
    settings.Add("PJCT", false, "Tombs", "PJ"); // Tombs //
  settings.Add("CM",false,"Croft Manor"); // Croft Manor //
  settings.Add("KY",false,"Kuwaq Yaku");  // Kuwaq Yaku //
    settings.Add("KYMA", false, "Main Areas", "KY");  // Main Areas //
    settings.Add("KYCR", false, "Crypts", "KY");  // Crypts //
    settings.Add("KYCT", false, "Tombs", "KY"); // Tombs //
  settings.Add("TOTE",false,"Trial of the Eagle");  // Trial of the Eagle //
    settings.Add("P",false,"Paititi");  // Paititi //
      settings.Add("PMA", false, "Main Areas", "P");  // Main Areas //
      settings.Add("PCR", false, "Crypts", "P");  // Crypts //
      settings.Add("PCT", false, "Tombs", "P"); // Tombs //
    settings.Add("BOTS",false,"Belly of the Serpent");  // Body of the Serpent //
    settings.Add("HOTS",false,"Head of the Serpent");  // Head of the Serpent //
    settings.Add("MT",false,"Moutain Temple");  // Moutain Temple //
    settings.Add("Ce",false,"Cenote");  // Cenote //
      settings.Add("CeMA", false, "Main Areas", "Ce");  // Main Areas //
      settings.Add("CeCT", false, "Tombs", "Ce");  // Tombs //
    settings.Add("POF",false,"Porvenir Oil Fields");  // Porvenir Oil Fields //
    settings.Add("SJ",false,"San Juan");  // San Juan //
      settings.Add("SJMA", false, "Main Areas", "SJ");  // Main Areas //
      settings.Add("SJCR", false, "Crypts", "SJ");  // Crypts //
      settings.Add("SJCT", false, "Tombs", "SJ");  // Tomb //
    settings.Add("COTS",false,"City of the Serpent");  // City of the Serpent //

  settings.CurrentDefaultParent = null; // So these (v) aren't part of "Area Splits"

  // === Collectibles === //
  /*  So... All the REQUIRED collectibles for each area are right next to eachother in memory
      However, Missions and Challenges are not and I haven't looked for where they are :/
      We could add all of the addresses to a MemoryWatcherList() by using ONE pointer -
      and a loop to increment them by an offset for each address
      Since the Areas are also next to each other this may be harder than that because -
      we will have to specify how many collectibles are in each area and work out the -
      distance between the areas in memory...
      and I... am too lazy rn :D
  */
  settings.Add("Coll", false, "Collectibles");
    settings.Add("tbc", false, "I can make this but it will take time (NOT WORKING)", "Coll");

  // === Split Settings === //
  foreach(var Setting in Splits) // For every list in the "Splits" list
  {
    if(Setting.Count == 3) // Check if it has a 3rd string
      settings.CurrentDefaultParent = Setting[2]; // Set the CurrentDefaultParent to the 3rd string
      // So we don't have to repeat the parent argument in settings.Add()
    settings.Add(Setting[0], false, Setting[0]); // Add the setting...-
    // Using the 1st string as the ID...
    // Setting it to off by default
    // Using the 2nd string as the Description
  }

  List<string> HS = new List<string>(); // New dummy list of strings
  vars.HasSplit = HS; // Use livesplit variables so no errors c:

  /* Not gonna lie idk what exactly this does
  I copied this from the ROTTR script so thanks Leemyy!*/
  EventHandler OnStart = (s, e) =>
	{
		vars.HasSplit.Clear(); // Clear the HasSplit list to stop splits in this list from splitting again
	};
	timer.OnStart += OnStart; // I guess when the timer starts run ^ that?
}

start
{
  /* Both settings CAN be enabled and it would probably still work tbh
  The only issue is that the "cine_plane_crash" cutscene is shared-
  between the opening cutscene and the plane crash cutscene at the-
  beginning of Peruvian Jungle so if a save is loaded there, it will-
  start the timer :/

  A check for if it is loading sorta would work so the timer doesn't start -
  if you're in the beginning of cozumel constantly
  This doesn't fully solve a perfecting starting system though...
  Like reloading would start the timer if in that area*/

  if(current.Area != old.Area)  // Check if the Area has changed
    if(settings["StNG"])  // If "Start timer at New Game" setting is enabled...
      if(current.Area == "cine_plane_crash")  // Check if it is equal to opening cutscene
        return true;  // Start the timer
    if(settings["StCo"])  // If "Start timer at Cozumel" setting is enabled...
      if(current.Area == "dd_day_of_the_dead_010")  // Check if it is equal to Cozumel Area
        return true;  // Start the timer
}

isLoading
{
    return current.Loading || current.InCutscene || current.Loading2;
    // These ^ are booleans and isLoading expects a boolean to be returned
    // So that basically means pause the timer if any of those values == 1
    // || = or
}

exit
{
    timer.IsGameTimePaused = true;
    // Pause the timer if the game is shutdown
}

split
{
  foreach(var item in vars.Splits)  // for every list in the Splits list
    if(current.Area != old.Area)  // Check if the Area has changed
      if(current.Area == item[0]) // Check if it is equal to the 1st string in the current list
        if(settings[item[0]]) // Check if the corresponding setting is active
          if(settings["DSP"]) // If the "Double Split Prevention" setting is activated
          {
            if(vars.HasSplit.Count == 0)  // Check if the "HasSplit" list is empty
            {
              vars.HasSplit.Add(item[0]); // Add the current split to the "HasSplit" list
              return true;  // Split
            }
            else // If the list is not empty (every time except the 1st)
            {
              foreach(var item2 in vars.HasSplit) // For every string in "HasSplit"
              {
                if(item2 == item[0]) // Check if it is in the "HasSplit" list
                  return false; // Don't split & restart the loop
              }
              // This v runs if the foreach loop didn't return false //
              vars.HasSplit.Add(item[0]); //Add the current split to the list
              return true; // Split
            }
          }
          else // If "Double Split Prevention" is NOT activated
          {
            return true; // Just split
          }
}
