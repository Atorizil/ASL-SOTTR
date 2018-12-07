state("SOTTR", "243.0")
{
  bool Loading : 0x14298A0;
  bool Loading2 : 0x145D370;
  bool Cutscene : 0x1464930;
  string50 Area : 0x3578F78;
}

state("SOTTR", "241.0")
{
  bool Loading : 0x14238A0;
  bool Loading2 : 0x1457370;
  // BAD LOADING. They should be updated but it would require a pointer which is actually hard to find :/
  // With the game updating so often, it isn't worth finding it again until updates stop
  bool Cutscene : 0x145E930; // Doesn't remove Deaths at Trial of the Eagle (After Skip Falling down)
  // ^ That keeps randomly going to 1 (FIX)
  string50 Area : 0x3572AF8;
}

state("SOTTR", "237.6")
{
  // Game keeps crashing on launch
}

state("SOTTR", "236.1")
{
  bool Loading : 0x13E18E0;
  bool Loading2 : 0x14153D0;
  bool Cutscene : 0x141C9F0;
  string50 Area : 0x35271A8;
}

state("SOTTR", "235.3")
{
  bool Loading : 0x13E18E0;
  bool Loading2 : 0x14153D0;
  bool Cutscene : 0x141C9F0;
  string50 Area : 0x3527198;
}

state("SOTTR", "230.9")
{
  bool Loading : 0x13DE7E0;
  bool Loading2 : 0x14122D0;
  bool Cutscene : 0x14198F0;
  string50 Area : 0x3524088;
}

state("SOTTR", "230.8")
{
  // Game keeps crashing on launch
}

state("SOTTR", "234.1")
{
	bool Loading : 0x13E07E0;
	bool Loading2 : 0x14142D0;
	bool Cutscene : 0x141B8F0;
	string50 Area : 0x35260F8;
}

init // When the game is opened
{
  timer.IsGameTimePaused = false; // Unpause the timer

  // print the ModuleMemorySize
  print(modules.First().ModuleMemorySize.ToString());

  // Check the ModuleMemorySize
	switch(modules.First().ModuleMemorySize)
	{
    case 314839040:
      version = "243.0";
      break;
    case 317921520:
      version = "241.0";
      break;
    case 316497920:
      version = "236.1";
      break;
    case 314748928:
      version = "235.3";
      break;
		case 310804480:
			version = "234.1";
			break;
    case 311508992:
      version = "230.9";
      break;
	}
}

startup
{
  // === Splits List === //
  // These are for the Areas
  // 1st String = Settting ID and what the script checks for
  // 2nd String = Tooltip for setting
  // 3rd String (If present) = What its parent is
  List<List<string>> Splits = new List<List<string>>
  {
    // === Cozumel Caves === //
      new List<string>{"pl_prologue","Split AFTER the PLANE CRASH CUTSCENE", "CoC"}, //Beginning Cave
      new List<string>{"cine_mayan_runout","Split AT THE BEGINNING of the COLLAPSE SEQUENCE"}, // Runout Sequence
    // === Cozumel === //
      new List<string>{"dd_day_of_the_dead_010", "Split AT THE BEGINNING of COZUMEL", "Co"}, //Beginning of Cozumel
      new List<string>{"dd_day_of_the_dead_020", "Split ONCE ENTERING SKULL SAVE"}, //Skull Cave
      new List<string>{"dd_day_of_the_dead_030", "Split HALFWAY THROUGH THE TUNNEL BEFORE THE UNDERWATER PART"}, //Underwater Part
      new List<string>{"dd_day_of_the_dead_040", "Split AFTER the UNDERWATER PART (Close to the Tripwire)"}, //Temple Puzzle
      new List<string>{"dd_day_of_the_dead_050", "Split JUST BEFORE THE BREAKABLE WALL BEFORE THE DIG SITE"}, //Combat
      new List<string>{"tf_the_flood", "Split at THE BEGINNING of the TSUNAMI SEGMENT"}, //Flood Part
    // === Peruvian Jungle === //
      // Main Areas //
        new List<string>{"cine_plane_crash", "Split AT the PLANE CRASH CUTSCENE \n(BEGINNING of PERUVIAN JUNGLE)", "PJMA"}, //Plane Crash Cutscene
        new List<string>{"lj_lost_in_the_jungle_v2_01", "Split AFTER the PLANE CRASH CUTSCENE"}, //Jungle Beginning
        new List<string>{"lj_lost_in_the_jungle_v2_02", "Split AT the SLIDE BEFORE PLANE CRASH SITE"}, //Plane Crash Area
        new List<string>{"lj_lost_in_the_jungle_v2_03", "Split AFTER CROSSING THE GAP VIA ROPE"}, //Jaguar Area
        new List<string>{"lj_lost_in_the_jungle_v2_04", "Split AFTER MOVING THE LOG\nAFTER YOU FIND JONAH\nBEFORE CROSSING THE DANGEROUS ROTUE"}, //Before AIRWALKLESS Childhood Skip
        new List<string>{"lj_lost_in_the_jungle_v2_connector_out", "Split AFTER CROFT MANOR\nAFTER MOVING THE LOG\nBEFORE TRUCK STEALTH PART"}, //Connector to Kuwq Yaku
      // Crypts //
        new List<string>{"crypt_009","Split JUST BEFORE ENTERING THE CRYPT in the PLANE CRASH SITE","PJCR"}, //Crypt 009 (Near Crash Area)
        new List<string>{"cr_lastbreath","Split AFTER breaking the BREAKABLE WALL"}, //Second Crypt
      // Tombs //
        new List<string>{"ct_court_of_death_connector","Split AFTER breaking the BRAKEABLE WALL\n(Judge's Gaze)", "PJCT"}, //Court of Death Path
        new List<string>{"ct_court_of_death","Split AFTER CROSSING THE BRIDGE\n(Judge's Gaze)"}, //Court of Death Puzzle
        new List<string>{"ct_gate_of_xibalba_connector","Split AFTER CRAWLING THROUGH the BUSHES / FALLEN TREES \n(Underworld Gate)"}, //Gate of Xiblia Path
        new List<string>{"ct_gate_of_xibalba","Split AFTER SQEEZING through the GAP AFTER the CAMP\n(Underworld Gate)"}, //Gate of Xibilia
    // === Croft Manor === //
      new List<string>{"cm_croft_manor", "Split AT THE BEGINNING OF CROFT MANOR\n(Beginning of Croft Manor)", "CM"}, //Croft Manor
    // === Kuwaq Yaku === //
      // Main Areas //
        new List<string>{"hv_hollow_village_v2_01", "Split WHEN 'KUWAQ YAKU' APPEARS ONSCREEN\n(Beginning of Kuwaq Yaku)", "KYMA"}, //Main Village
        new List<string>{"hv_hollow_village_v2_02", "Split AFTER DIVING into the WATER\nAFTER 1st temple cutscene"}, //Stealth Part
        new List<string>{"hv_hollow_village_v2_03", "Split WHILST GRAPPLING DOWN UNDERGROUND\nAFTER stealth part"}, //Stealth Part 2
        new List<string>{"hv_hollow_village_v2_connector_out", "Split WHILST DIVING into the water\nAFTER the 2nd temple cutscene"}, //Water part to Spider Trial
      // Crypts //
        new List<string>{"cr_newfall_01", "Split JUST BEFORE ENTERING the crypt\n(Crypt on the Left Side of the Map)", "KYCR"},
      // Tombs //
        new List<string>{"ct_xolotl_connector", "Split AFTER CLIMBING out of the WATER\nAFTER DIVING DOWN\n(Howling Caves)", "KYCT"},
        new List<string>{"ct_xolotl", "Split AFTER CROSSING the LOG INTO the TOMB\n(Howling Caves)"},
    // Trial of the Eagle //
      new List<string>{"ct_citadel_of_wind", "Split AFTER the Spider Trial\nBEFORE leaving the cave" ,"TOTE"},
      new List<string>{"ct_citadel_of_wind_connector", "Split IN THE TUNNEL AFTER COMPLETING THE TRIAL"},
    // === Paititi === //
      // Main Areas //
        new List<string>{"av_abandonned_village", "Split AFTER SQUEEZING out of the CAVE", "PMA"},
        new List<string>{"pa_hub_paititi", "Split ONCE CAPTURED\nOr when you enter the main area of Paititi"},
        new List<string>{"pa_hub_paititi_connector_from_cenote", "Split AFTER SWIMMING AWAY FROM CENOTE"},
        new List<string>{"pa_hub_paititi_middle_island", "Split ONCE you ENTER the MARKET\n(Next to where Unuratu is jailed)"},
        new List<string>{"pa_hub_paititi_return_02", "Split AFTER SQUEEZING THROUGH THE GAP\nFROM THE MARKETPLACE\nTO WHERE UNURATU IS JAILED\n(Split after slowwalk if running glitched)"},
        new List<string>{"pa_hub_paititi_wilderness", "Split IN the TUNNEL BEFORE entering the wilderness"},
      // Crypts //
        new List<string>{"sm_spanish_mission_cr04", "Split AFTER CRAWLING into the Crypt\n(Next to where Unuratu is jailed)", "PCR"},
        new List<string>{"cr_nepenthes", "Split AS you SLIDE DOWN into the Crypt\n(Next to the Market Place(Next to where Unuratu is jailed))"},
        new List<string>{"cr_el_dorado", "Split AFTER CRAWLING into the Crypt"},
        new List<string>{"pa_hub_paititi_cr02", "Split AS you START CRAWLING into the Crypt\n(In Paititi Wilderness)"},
      // Tombs //
        new List<string>{"ct_serpents_hollow_connector", "Split ONCE you DIVE underwater\n(Ancient Aqueduct)", "PCT"},
        new List<string>{"ct_serpents_hollow", "Split ONCE the CUTSCENE where Lara takes out her Pistol TRIGGERS\n(Ancient Aqueduct)"},
        new List<string>{"ct_sky_temple_connector", "Split AFTER you SQUEEZE through the BREAKABLE WALL\n(Temple of the Sun)"},
        new List<string>{"ct_sky_temple_v2", "Split AFTER you CLIMG OVER the WALL taking you into the Tomb\n(Temple of the Sun)"},
        new List<string>{"ct_warriors_trial_connector", "Split AFTER you SWIM PARTWAY through the LEFT TUNNEL\n(Path of Battle)"},
        new List<string>{"ct_warriors_trial", "Split AFTER SWINGING into the TOMB(Path of Battle)"},
    // === Mountain Temple === //
      new List<string>{"pa_hub_paititi_kings_tomb_connector_01", "Split AFTER you climb up the wall\nBEFORE ENTERING MOUNTAIN TEMPLE", "MT"},
      new List<string>{"pa_hub_paititi_kings_tomb", "Split AS you CRAWL into the Tomb Area"},
      new List<string>{"pa_hub_paititi_kings_tomb_to_cenote_connector", "Split BEFORE SQUEEZING through the GAP in the WALL"},
    // === Cenote === //
      // Main Areas //
        new List<string>{"ce_010_fall", "Split WHILST diving down\n(1st Fall)", "CeMA"},
        new List<string>{"ce_020_camp", "Split WHILST SWIMMING through into the Main Area of Cenote"},
        new List<string>{"ce_030_den", "Split AS you SQEEZE through the GAP NEXT to the CAMP"},
        new List<string>{"ce_040_tomb", "Split BEFORE wall climbling across the gap to get into the Tomb Area"},
        new List<string>{"ce_050_exit", "Split AFTER the place starts COLLAPSING\n(BEFORE you get chased out)"},
      // Tombs //
        new List<string>{"ct_spanish_galleon_connector", "Split WHILST SWIMMING TOWARDS the Tomb\n(Spanish Galleon)", "CeCT"},
        new List<string>{"ct_spanish_galleon", "Split ONCE you ENTER the room with the SHIP\n(Spanish Galleon)"},
    // === Belly of the Serpent === //
      new List<string>{"sp_sacrificial_pit", "Split AS you SQUEEZ through the GAP into Belly of the Serpent\n(Near Camp)", "BOTS"},
    // === Head of the Serpent === //
      new List<string>{"dm_devils_maw", "Split AS 'Head of the Serpent' appears onscreen", "HOTS"},
    // === Porvenir Oil Fields === //
      new List<string>{"an_apocalypse_now_v2_01", "Split AT THE BEGINNING OF THE CUTSCENE where Jonah and Lara are on the boat", "POF"},
      new List<string>{"an_apocalypse_now_v2_02", "Split AFTER the Camp"},
      new List<string>{"an_apocalypse_now_v2_03", "Split BEFORE climbing up the 2nd wall before Lara looks at the Oil Plant"},
      new List<string>{"an_apocalypse_now_v2_04", "Split AS you CROSS THE BRIDGE to the Oil Plant"},
    // === Mission of San Juan === //
      // Main Areas //
        new List<string>{"sm_spanish_mission_village", "Split at the CUTSCENE at the BEGINNING OF SAN JUAN", "SJMA"},
        new List<string>{"sm_spanish_mission_cornfield", "Split ONCE you START FIGHTING TRINITY"},
        new List<string>{"ta_010_volcano", "Split AT THE BEGINNING of the Tsunami segement"},
      // Crypts //
        new List<string>{"sm_spanish_mission_crypt_003", "Split AFTER you DROP down into the Crypt", "SJCR"},
      // Tombs //
        new List<string>{"ct_tree_of_life_connector", "Split AFTER you drop down into the Tomb FROM the surface\n(Tree of Life)", "SJCT"},
        new List<string>{"ct_tree_of_life", "Split AFTER grappling down TOWARDS the Tomb\n(Tree of Life)"},
        new List<string>{"ct_flooded_sanctuary_connector", "Split AFTER swimming TOWARDS the ENTRANCE\n(Thirty Gods)"},
        new List<string>{"ct_flooded_sanctuary", "Split AFTER CLIMBING up the WALL JUST BEFORE the TOMB\n(Thirty Gods)"},
    // === City of the Serpent === //
        new List<string>{"ch_chamber_of_heaven", "Split AFTER the CUTSCENE where they decide what plan to use", "COTS"}
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
		settings.Add("Res", false, "Reset at Main Menu");
			settings.SetToolTip("Res", "If you need to go to the Main Menu during the run DONT use this");

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
      settings.SetToolTip(Setting[0], Setting[1]);
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
    return current.Loading || current.Cutscene || current.Loading2;
    // These ^ are booleans and isLoading expects a boolean to be returned
    // So that basically means pause the timer if any of those values == 1
    // || = or
}

reset
{
	if(current.Area != old.Area) // Check if the Area has changed
		if(current.Area == "trx_main_menu") // Check if the current Area is the main menu
			if(settings["Res"]) // Check if the setting is active
				return true; // Reset
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
