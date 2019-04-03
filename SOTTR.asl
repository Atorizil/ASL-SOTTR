// === State Descriptors === //
state("SOTTR", "286.0"){
  bool Loading : 0x3587640;
  bool Loading2 : 0x3587640;
  bool Cutscene : 0x1491BD8;
  string50 Area : 0x35A86A8;
  float X : 0x1F19388;
  float Y : 0x1F19384;
  float Z : 0x1F19380;
}
state("SOTTR", "280.0"){
  bool Loading : 0x358D8C0;
  bool Loading2 : 0x358D8C0;
  bool Cutscene : 0x1497BD8;
  string50 Area : 0x35AE928;
  float X : 0x1F1F600;
  float Y : 0x1F1F604;
  float Z : 0x1F1F608;
}
state("SOTTR", "279.0"){
  bool Loading : 0x3586540;
  bool Loading2 : 0x3586540;
  bool Cutscene : 0x1490A58;
  string50 Area : 0x35A75A8;
  float X : 0x1F18480;
  float Y : 0x1F18484;
  float Z : 0x1F18484;
}
state("SOTTR", "270.0"){
  bool Loading : 0x357D2C0;
  bool Loading2 : 0x357D2C0;
  bool Cutscene : 0x1487A58;
  string50 Area : 0x359E328;
  float X : 0x1F0F200;
  float Y : 0x1F0F204;
  float Z : 0x1F0F208;
}
state("SOTTR", "260.0"){
  bool Loading : 0x1448910;
  bool Loading2 : 0x147C490;
  bool Cutscene : 0x1483A70;
  string50 Area : 0x359A2A8;
  float X : 0x1F0B180;
  float Y : 0x1F0B184;
  float Z : 0x1F0B188;}
state("SOTTR", "247.0"){
  bool Loading : 0x142F8A0;
  bool Loading2 : 0x146D830;
  bool Cutscene : 0x146A930;
  string50 Area : 0x357F0A8;
  float X : 0x1EF1980;
  float Y : 0x1EF1984;
  float Z : 0x1EF1988;}
state("SOTTR", "243.0"){
  bool Loading : 0x14298A0;
  bool Loading2 : 0x145D370;
  bool Cutscene : 0x1464930;
  string50 Area : 0x3578F78;
  float X : 0x1EEB870;
  float Y : 0x1EEB874;
  float Z : 0x1EEB878;}
state("SOTTR", "241.0"){
  bool Loading : 0x14238A0;
  bool Loading2 : 0x1457370;
  // BAD LOADING. They should be updated but it would require a pointer which is actually hard to find :/
  // With the game updating so often, it isn't worth finding it again until updates stop
  bool Cutscene : 0x145E930; // Doesn't remove Deaths at Trial of the Eagle (After Skip Falling down)
  // ^ That keeps randomly going to 1 (FIX)
  string50 Area : 0x3572AF8;
  float X : 0x1EE53F0;
  float Y : 0x1EE53F4;
  float Z : 0x1EE53F8;}
//state("SOTTR", "237.6")
state("SOTTR", "236.1"){
  bool Loading : 0x13E18E0;
  bool Loading2 : 0x14153D0;
  bool Cutscene : 0x141C9F0;
  string50 Area : 0x35271A8;
  float X : 0x1E99B30;
  float Y : 0x1E99B34;
  float Z : 0x1E99B38;}
state("SOTTR", "235.3"){
  bool Loading : 0x13E18E0;
  bool Loading2 : 0x14153D0;
  bool Cutscene : 0x141C9F0;
  string50 Area : 0x3527198;
  float X : 0x1E99B30;
  float Y : 0x1E99B34;
  float Z : 0x1E99B38;}
state("SOTTR", "234.1"){
	bool Loading : 0x13E07E0;
	bool Loading2 : 0x14142D0;
	bool Cutscene : 0x141B8F0;
	string50 Area : 0x35260F8;
  float X : 0x1E98A70;
  float Y : 0x1E98A74;
  float Z : 0x1E98A78;}
state("SOTTR", "230.9"){
  bool Loading : 0x13DE7E0;
  bool Loading2 : 0x14122D0;
  bool Cutscene : 0x14198F0;
  string50 Area : 0x3524088;
  float X : 0x1E969F0;
  float Y : 0x1E969F4;
  float Z : 0x1E969F8;}
//state("SOTTR", "230.8")

startup{ // When the script first runs
  /* === Area Splits List ===
  This List contains the information for the Area Splits:
    - The 1st String is the Setting ID and what the game uses for that area
    - The 2nd String is the Tooltip for that setting
    - \n = New Line
    - The 3rd String (if present) is the Parent */
    List<List<string>> Splits = new List<List<string>>{
      // === Cozumel Caves === //
        new List<string>{"pl_prologue",
        "Split after the plane crash cutscene \n - Pointless split for Game Time", "CoC"},
        new List<string>{"cine_mayan_runout",
        "Split at the beginning of the collapse sequence"},
      // === Cozumel === //
        new List<string>{"dd_day_of_the_dead_010",
        "Split at the beginning of cozumel \n - End of Cozumel Caves \n  - (Only if starting from New Game)", "Co"}, //Beginning of Cozumel
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
          new List<string>{"ch_chamber_of_heaven", "Split AFTER the CUTSCENE where they decide what plan to use", "COTS"}};
    vars.Splits = Splits;

    /* === Collectibles Dictionary ===
    This Dictionary contains multiple Dictionaries for each Area:
      - The String is for the Area
      - This Dictionary only contains areas with collectibles
    The Dictionary then contains:
      - A String for the type of collectible
      - A List of Integers:
        - The 1st int is the offset from the Pointer
        - The 2nd int is the complete amount of the collectible
     Order in Memory:
      - Relics
      - Documents
      - Survival Caches
      - Murals
      - Monoliths
      - Crypts
      - Strongboxes */
    vars.Collectibles = new Dictionary<string, Dictionary<string, List<int>>>{
      {"Cozumel", new Dictionary<string, List<int>>{
          {"Strongboxes", new List<int>{0x5E8, 1}},
          {"Relics", new List<int>{0x5C8, 2}},
          {"Documents", new List<int>{0x5CC, 1}},
          {"Murals", new List<int>{0x5D4, 2}},
          {"Survival Caches", new List<int>{0x5D0, 3}}
        }
      },
      {"Peruvian Jungle", new Dictionary<string, List<int>>{
          {"Strongboxes", new List<int>{0xC48, 1}},
          {"Crypts", new List<int>{0xC40, 2}},
          {"Relics", new List<int>{0xC28, 9}},
          {"Documents", new List<int>{0xC2C, 13}},
          {"Murals", new List<int>{0xC34, 7}},
          {"Survival Caches", new List<int>{0xC30, 9}},
          {"Monoliths", new List<int>{0xC38, 1}}
        }
      },
      {"Kuaq Yaku", new Dictionary<string, List<int>>{
          {"Strongboxes", new List<int>{0x3C8, 2}},
          {"Crypts", new List<int>{0x3C0, 2}},
          {"Relics", new List<int>{0x3A8, 4}},
          {"Documents", new List<int>{0x3AC, 18}},
          {"Murals", new List<int>{0x3B4, 10}},
          {"Survival Caches", new List<int>{0x3B0, 14}},
          {"Monoliths", new List<int>{0x3B8, 3}}
        }
      },
      {"Trial of the Eagle", new Dictionary<string, List<int>>{
          {"Documents", new List<int>{0xE4C, 1}},
          {"Murals", new List<int>{0xE54, 2}},
          {"Survival Caches", new List<int>{0xE50, 1}}
        }
      },
      {"Paititi", new Dictionary<string, List<int>>{
          {"Strongboxes", new List<int>{0x2B8, 3}},
          {"Crypts", new List<int>{0x2B0, 5}},
          {"Relics", new List<int>{0x298, 28}},
          {"Documents", new List<int>{0x29C, 42}},
          {"Murals", new List<int>{0x2A4, 23}},
          {"Survival Caches", new List<int>{0x2A0, 34}},
          {"Monoliths", new List<int>{0x2A8, 7}}
        }
      },
      {"Head of the Serpent", new Dictionary<string, List<int>>{
          {"Murals", new List<int>{0x1184, 1}}
        }
      },
      {"Cenote", new Dictionary<string, List<int>>{
          {"Relics", new List<int>{0x8F8, 5}},
          {"Documents", new List<int>{0x8FC, 6}},
          {"Survival Caches", new List<int>{0x900, 8}}
        }
      },
      {"Porvenir Oil Fields", new Dictionary<string, List<int>>{
          {"Relics", new List<int>{0x4B8, 1}},
          {"Documents", new List<int>{0x4BC, 4}},
          {"Murals", new List<int>{0x4C4, 1}}
        }
      },
      {"Mission of San Juan", new Dictionary<string, List<int>>{
          {"Strongboxes", new List<int>{0xA28, 1}},
          {"Crypts", new List<int>{0xA20, 1}},
          {"Relics", new List<int>{0xA08, 9}},
          {"Documents", new List<int>{0xA0C, 27}},
          {"Murals", new List<int>{0xA14, 4}},
          {"Survival Caches", new List<int>{0xA10, 8}},
          {"Monoliths", new List<int>{0xA18, 1}}
        }
      }};

  // === Settings === //
    // === Options === //
      settings.Add("Op", true, "Options");
        settings.Add("StNG", true, "Start timer at New Game", "Op");
          settings.SetToolTip("StNG", "Can use both");
        settings.Add("StCo", true, "Start timer at Cozumel", "Op");
          settings.SetToolTip("StCo", "Can use both");
        settings.Add("DSP", true, "Prevent splitting the same split again", "Op");
          settings.SetToolTip("DSP", "Recommended but this can be disabled aslong as you're route and splits will work with it");
    		settings.Add("Res", false, "Reset at Main Menu");
    			settings.SetToolTip("Res", "If you need to go to the Main Menu during the run DONT use this");

    /* === Parents ===
    These are the Containers for each area:
      - If there is a 4th argument
        - It is child of the setting that the ID corresponds to */
      settings.Add("AS", true, "Area Splits"); // Parent for the Area Splits
          settings.CurrentDefaultParent = "AS";
        settings.Add("CoC",false,"Cozumel Caves");
        settings.Add("Co",false,"Cozumel");
        settings.Add("PJ",false,"Peruvian Jungle");
          settings.Add("PJMA", false, "Main Areas", "PJ");
          settings.Add("PJCR", false, "Crypts", "PJ");
          settings.Add("PJCT", false, "Tombs", "PJ");
        settings.Add("CM",false,"Croft Manor");
        settings.Add("KY",false,"Kuwaq Yaku");
          settings.Add("KYMA", false, "Main Areas", "KY");
          settings.Add("KYCR", false, "Crypts", "KY");
          settings.Add("KYCT", false, "Tombs", "KY");
        settings.Add("TOTE",false,"Trial of the Eagle");
        settings.Add("P",false,"Paititi");
          settings.Add("PMA", false, "Main Areas", "P");
          settings.Add("PCR", false, "Crypts", "P");
          settings.Add("PCT", false, "Tombs", "P");
        settings.Add("BOTS",false,"Belly of the Serpent");
        settings.Add("HOTS",false,"Head of the Serpent");
        settings.Add("MT",false,"Moutain Temple");
        settings.Add("Ce",false,"Cenote");
          settings.Add("CeMA", false, "Main Areas", "Ce");
          settings.Add("CeCT", false, "Tombs", "Ce");
        settings.Add("POF",false,"Porvenir Oil Fields");
        settings.Add("SJ",false,"San Juan");
          settings.Add("SJMA", false, "Main Areas", "SJ");
          settings.Add("SJCR", false, "Crypts", "SJ");
          settings.Add("SJCT", false, "Tombs", "SJ");
        settings.Add("COTS",false,"City of the Serpent");

      settings.CurrentDefaultParent = null; // So these (v) aren't part of "Area Splits"

      settings.Add("End", true, "Amaru Death Cutscene");
        settings.SetToolTip("End", "This will split at the final cutscene where the timer will normally end\nPlease note that this may split at inconsistent times due to the XYZ being inconsistent");
      settings.Add("COL", false, "Collectibles");

  /* === Area Splits ===
  This creates settings for each split defined in the List "Splits":
    It checks if it has a third string
      - If it does, it overwrites the default Parent
    It then adds the Setting:
      - Using the 1st string as the ID
      - Setting it to "off" by default
      - And reusing the 1st string for the Display Name
    Then it sets the tooltip for the setting:
      - Using the 2nd String as the tooltip */
    foreach(var Setting in Splits){
      if(Setting.Count == 3)
        settings.CurrentDefaultParent = Setting[2];
      settings.Add(Setting[0], false, Setting[0]);
      settings.SetToolTip(Setting[0], Setting[1]);}

    /* === Collectible Splits ===
    This adds all the settings to do with collectibles:
      It adds a setting with:
        - The ID as the item.Key which is the Area Name
        - It set to "off" by default
        - The Area Name as the Display Name
        - It's parent being "Collectibles"
      Then adds two settings with:
        - The Area Name, Collectible Type and the Mode as the ID
        - It set to "off" by default
        - The Collectible Type and the Mode as the Display Name
        - It's Parent being the Area Name Setting */
      foreach(var item in vars.Collectibles){
        settings.Add(item.Key, false, item.Key, "COL");
        foreach(var item2 in item.Value){
          settings.Add(item.Key + item2.Key + "Each", false, item2.Key + " (Each)", item.Key);
          settings.Add(item.Key + item2.Key + "All", false, item2.Key + " (All)", item.Key);}}

      List<string> HS = new List<string>(); // New dummy list of strings
      vars.HasSplit = HS; // Use livesplit variables so no errors c:

      // Clear the HasSplit list when the timer starts or else it will never split again
      EventHandler OnStart = (s, e) => {
    		vars.HasSplit.Clear();
      };
    	timer.OnStart += OnStart; // When the Timer starts, run (^)
}

init{ // When the game is launched
  timer.IsGameTimePaused = false; // Unpause the timer
  print(modules.First().ModuleMemorySize.ToString()); // Print the ModuleMemorySize

  /* === Version Check ===
  This will detect the game version:
    CollectibleBase is the Pointer to the Base Address for all Collectibles
      - It will change based on the Version
    By using the ModuleMemorySize of the Game we can determine the Version
  Missing Versions (Crash on launch):
    - 230.8
    - 237.6 */
    int CollectibleBase = 0; // Depending on the version this will be changed to the correct address

  	switch(modules.First().ModuleMemorySize){
      case 306704384:
        version = "286.0";
        CollectibleBase = 0x3689E20;
        break;
      case 312975360:
        version = "280.0";
        CollectibleBase = 0x36900A0;
        break;
      case 311033856:
        version = "279.0";
        CollectibleBase = 0x3688D20;
        break;
      case 308297728:
        version = "270.0";
        CollectibleBase = 0x367FA50;
        break;
      case 313040896:
        version = "260.0";
        CollectibleBase = 0x367B9C8;
        break;
      case 312098816:
        version = "247.0";
        CollectibleBase = 0x36607A8;
        break;
      case 314839040:
        version = "243.0";
        CollectibleBase = 0x365A758;
        break;
      case 317931520:
        version = "241.0";
        CollectibleBase = 0x36541E0;
        break;
      case 316497920:
        version = "236.1";
        CollectibleBase = 0x3608758;
        break;
      case 314748928:
        version = "235.3";
        CollectibleBase = 0x3608730;
        break;
  		case 310804480:
  			version = "234.1";
        CollectibleBase = 0x36076E0;
  			break;
      case 311508992:
        version = "230.9";
        CollectibleBase = 0x3605660;
        break;
      }

  /* === MemoryWatchers ===
    MemoryWatchers have to be added here as CollectibleBase won't work in the "vars." format:
      The loop goes through the list and adds a MemoryWatcher to the list based on it
      Since the Collectible Addresses are 4-Byte, the MemoryWatcher is a <int>
    DeepPointer is just a Pointer (Pointer, Offset)
      - The Default module is the exe ("SOTTR")
        - DeepPointer("Module", Pointer, Offset(,s)) */
    vars.Watchers = new MemoryWatcherList();

    foreach(var item in vars.Collectibles){
      foreach(var item2 in item.Value){
        vars.Watchers.Add(new MemoryWatcher<int>(new DeepPointer(CollectibleBase, item2.Value[0])){Name = item.Key + item2.Key});}}
}

update{ // Top priority & runs a lot
  // Memory Watchers won't work without this
  vars.Watchers.UpdateAll(game);
  //print(timer.CurrentAttemptDuration.ToString()); // If you want to print the Current Real Time
}

start{ // Automatic Timer Starting
  // When going from the Main Menu to the Game, XYZ is equal to 0:
  if(current.X == 0 && current.Y == 0 && current.Z == 0 && current.Loading && current.Loading2){
    if(settings["StNG"])  // If "Start timer at New Game" setting is enabled...
      if(current.Area == "cine_plane_crash")  // Check if it is equal to opening cutscene
        return true;  // Start the timer
    if(settings["StCo"])  // If "Start timer at Cozumel" setting is enabled...
      if(current.Area == "dd_day_of_the_dead_010")  // Check if it is equal to Cozumel Area
        return true;  // Start the timer
      }
}

gameTime{ // For setting the Game Timer
  // Basically a clone of the Start Action except it sets the Game Timer
  if(current.X == 0 && current.Y == 0 && current.Z == 0 && current.Loading && current.Loading2){
    if(settings["StNG"])
      if(current.Area == "cine_plane_crash")
        return TimeSpan.FromSeconds(0); // 00:00
    if(settings["StCo"])
      if(current.Area == "dd_day_of_the_dead_010")
        return TimeSpan.FromSeconds(320); // 05:20 (5 * 60 + 20)
  }
}

isLoading{ // For Pausing the Game Timer
      return current.Loading || current.Cutscene || current.Loading2;
      // These ^ are booleans and isLoading expects a boolean to be returned
      // So that basically means pause the timer if any of those values == 1
      // || = or
}

reset{ // Automatic Restarting
	if(current.Area != old.Area) // Check if the Area has changed
		if(current.Area == "trx_main_menu") // Check if the current Area is the main menu
			if(settings["Res"]) // Check if the setting is active
				return true; // Reset
}

exit{ // When the game closes
    timer.IsGameTimePaused = true; // Pause the timer
}

split{ // Automatic Splitting
  /* === Area Splitting ===
  */
  foreach(var item in vars.Splits){ // for every list in the Splits list
    if(current.Area != old.Area) // Check if the Area has changed
      if(current.Area == item[0]) // Check if it is equal to the 1st string in the current list
        if(settings[item[0]]) // Check if the corresponding setting is active
          if(settings["DSP"]){ // If the "Double Split Prevention" setting is activated
            if(vars.HasSplit.Count == 0){ // Check if the "HasSplit" list is empty
              vars.HasSplit.Add(item[0]); // Add the current split to the "HasSplit" list
              return true; // Split
            }
            else{ // If the list is not empty (every time except the 1st)
              foreach(var item2 in vars.HasSplit){ // For every string in "HasSplit"
                if(item2 == item[0]) // Check if it is in the "HasSplit" list
                  return false; // Don't split & restart the loop
              }
              // This v runs if the foreach loop didn't return false //
              vars.HasSplit.Add(item[0]); //Add the current split to the list
              return true; // Split
            }
          }
          else{ // If "Double Split Prevention" is NOT activated
            return true; // Just split
          }
        }

  /* === End Split ===
  */
  if(current.Area == "ch_chamber_of_heaven" && current.Cutscene && (int)current.X == (int)20576.99f && (int)current.Y == (int)9293.358f && (int)current.Z == (int)3704.113f)
    if(settings["End"]) // If the setting to split at the end is active
      if(settings["DSP"]){ // If Double Split Prevention is active
        if(vars.HasSplit.Count == 0){ // Check if the "HasSplit" list is empty
          vars.HasSplit.Add("end"); // Add end to the "HasSplit" list
          return true;  // Split
        }
        else{
          foreach(var item in vars.HasSplit){ // For every string in HasSplit
            if(item == "end") // Check if "end" is in the list
              return false; // Don't split and start the loop again
          }
          vars.HasSplit.Add("end"); // Add "end" to the list to prevent it splitting again
          return true; // Split
        }
      }
      else{
        return true;
      }

  /* === Collectible Splitting === */
  foreach(var item in vars.Collectibles){
    foreach(var item2 in item.Value){
      var V = vars.Watchers[item.Key + item2.Key];
      if(V.Current != V.Old){
        if(settings[item.Key + item2.Key + "All"])
          if(V.Current == item2.Value[1]){
            return true;
          }
          else
            return false;
        if(settings[item.Key + item2.Key + "Each"])
          return true;
      }
    }
  }
}
