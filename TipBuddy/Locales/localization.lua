--English--------------------------------------------------
-----------------------------------------------------------

-- Colors
	TB_NML_TXT = "|cffffd200"
	TB_WHT_TXT = "|cffffffff"
	TB_GRY_TXT = "|cffC0C0C0"
	TB_DGY_TXT = "|cff585858"
	TB_RED_TXT = "|cffff2020"
	TB_GRN_TXT = "|cff20ff20"
	TB_YLW_TXT = "|cffffff00"
	TB_BLE_TXT = "|cff3366ff"
	TB_PNK_TXT = "|cffff00ff"


-- Default	
	TB_level = LEVEL;
	TB_mage = "Mage";
	TB_warlock = "Warlock";
	TB_priest = "Priest";
	TB_druid = "Druid";
	TB_shaman = "Shaman";
	TB_paladin = "Paladin";
	TB_rogue = "Rogue";
	TB_hunter = "Hunter";
	TB_warrior = "Warrior";
	TB_loaded = "Loaded";
	--TB_pvp = "PvP";
	TB_notspecified = "Not specified";
	TB_elite = "Elite";
	TB_worldboss = "Boss";
	TB_rare = "Rare";
	TB_rareelite = "Rare Elite";
	--TB_player = "Player";
	--TB_corpse = "Corpse";
	--TB_civilian = "Civilian";
	TB_minion = "s Minion";
	TB_creation = "s Creation";
	TB_guardian = "s Guardian";
	TB_pet = "s Pet";
	TB_skinnable = "Skinnable";
	TB_creature = "Creature";
	TB_resurrectable = "Resurrectable";
	TB_tapped = "Tapped";
	
	
	-- Menu Button
	MENU_BUTTON_TOOLTIP = "Open TipBuddy\noptions menu.";
	TB_TIPBUDDYANCHOR_TOOLTIP = "Left Click and drag to move the anchor around.\nRight Click to select which corner the tooltip will attach to.";
	TB_TIPBUDDYANCHORCLOSE_TOOLTIP = "Click this to HIDE the TipBuddyAnchor.\n\n"..TB_GRY_TXT.."(To show it again, open the options menu and click the 'Display TipBuddyAnchor' button under the 'Anchoring' section.)";
	
	
	-- Checkboxes
	TB_PC_FRIEND = "Friendly Players";
	TB_PC_PARTY = "Friendly Players in Party";
	TB_PC_ENEMY = "Enemy Players";
	TB_NPC_FRIEND = "Friendly NPCs";
	TB_NPC_NEUTRAL = "Neutral NPCs";
	TB_NPC_ENEMY = "Enemy NPCs";
	TB_PET_FRIEND = "Friendly Pets";
	TB_PET_ENEMY = "Enemy Pets";
	TB_CORPSE = "Corpses";
	TB_OPTION_COMPACTONLY = TB_YLW_TXT.."(Compact Mode Only)\n";
	TB_OPTION_DEFAULTONLY = TB_YLW_TXT.."(Default Mode Only)\n";
	TB_OPTION_GLD = "Guild";
	TB_OPTION_GLD_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Guild Name";
	TB_OPTION_GLD_TITLE = "Title";
	TB_OPTION_GLD_TITLE_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Title "..TB_GRY_TXT.."(if available)";
	TB_OPTION_HTH = "Health Bar";
	TB_OPTION_HTH_TOOLTIP = TB_OPTION_COMPACTONLY..TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Health Bar\nMana Bar "..TB_GRY_TXT.."(if available)";
	TB_OPTION_RAC = "Race";
	TB_OPTION_RAC_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Race\n"..TB_GRY_TXT.." (\"Level--Class\" must be shown as well)";
	TB_OPTION_CFC = "City Faction";
	TB_OPTION_CFC_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."City Faction\n"..TB_GRY_TXT.." (Orgrimmar, Stormwind, etc - If available)";
	TB_OPTION_CLS = "Level -- Class";
	TB_OPTION_CLS_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Level\n---\nClass Name";
	TB_OPTION_CLS_TYPE = "Level -- Class/Type";
	TB_OPTION_CLS_TYPE_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Level\n---\nClass Name\n"..TB_WHT_TXT.."Creature Family Name\n"..TB_DGY_TXT.."(\"Bear\", \"Spider\")\n"..TB_WHT_TXT.."Creature Type Name\n"..TB_DGY_TXT.."(\"Humanoid\", \"Beast\")\n"..TB_GRY_TXT.."(depending on availibility)";
	
	
	-- resists aren't used  :(
	TB_OPTION_FAC = "Faction/PvP State";
	TB_OPTION_FAC_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Faction and PvP setting.  Will show unit's faction emblem by default or text only if text option is set"..TB_GRY_TXT.." (if they are currently flagged for PvP or FFA)";
	TB_OPTION_BFF = "Buffs/Debuffs";
	TB_OPTION_BFF_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Buffs\n"..TB_WHT_TXT.."Debuffs";
	TB_OPTION_XTR = "Extras";
	TB_OPTION_XTR_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Extra information inserted into the tooltip such as by another tooltip mod";
	TB_OPTION_RNK = "Rank Icon";
	TB_OPTION_RNK_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Rank icon to the left of their name"..TB_GRY_TXT.." (if the are ranked in PvP)";
	TB_OPTION_TRG = "Target's Target";
	TB_OPTION_TRG_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Currently selected target"..TB_GRY_TXT.."\n(the target's target name is color coded as follows:\n"..TB_WHT_TXT.."WHITE"..TB_GRY_TXT..": Is targeting you\n"..TB_GRN_TXT.."GREEN"..TB_GRY_TXT..": Is targeting a friendly player\n"..TB_BLE_TXT.."BLUE"..TB_GRY_TXT..": Is targeting a non-hostile NPC\n"..TB_RED_TXT.."RED"..TB_GRY_TXT..": Is targeting a hostile enemy\n"..TB_PNK_TXT.."PURPLE"..TB_GRY_TXT..": Is targeting one of your party members)\n";
	TB_OPTION_RNM = "Rank Title Text";
	TB_OPTION_RNM_TOOLTIP = TB_NML_TXT.."Show Target's:\n"..TB_WHT_TXT.."Rank Title which is displayed before their name"..TB_GRY_TXT.." (if the are ranked in PvP)";
	
	
	TB_TEXTVARS_HELP_1 =	"$nl\n$nm\n$gu\n$gt\n$lv\n$cl\n$rc\n$fa\n$cf\n$hc\n$hm\n$hp\n$mc\n$mm\n$mp\n$ns\n$nt\n$nf\n$tp\n$re\n$pr\n$pn\n$pv\n$ml\n$df\n$tn\n   \n   \nColoring:\n@Crn\n@Crg\n@Cdf\n@Ccl\n@Ctt\n@Ccp\n@Cor\n@Cwt\n@Cgy\n@Crd\n@Cgn\n@Cyw\n@Cbl\n@Cpk"
	TB_TEXTVARS_HELP_2 =	"New line (\\n also works)\nUnit's Name\nUnit's Guild or Title\nUnit's Title Rank in Guild\nUnit's Level\nUnit's Class\nRace (players only)\nFaction (players only)\nCity Faction (NPCs only)\nCurrent Health (actual)\nMax Health (actual)\nHealth as a percent\nCurrent Mana (actual)\nMax Mana (actual)\nMana as a percent\nNPC Classification (Elite, Boss, etc.)\nNPC Type (Beast, Humanoid, etc.)\nNPC Family (Bear, Cat, etc.)\nTapped (TAPPED or nothing)\nUnit Reaction (Hostile, Neutral)\nPVP Rank\nPVP Rank Number\nPVP Flagged (PvP or Free For All)\nMana Label (Mana, Energy, Rage, etc.)\nUnit Difficulty (Difficult, Trivial, etc.)\nUnit Target's Target Name\n   \n   \n   \nReaction Color(Name)\nReaction Color(Guild)\nDifficulty Color\nClass Color\nTarget's Target (only if unit has target)\nCorpse Color (only if unit is corpse)\nOrange\nWhite\nGrey\nRed\nGreen\nYellow\nBlue\nPink"
	
	
	TB_OPTION_CURSOR = "TipBuddy Above Cursor";
	TB_OPTION_CURSOR_TOOLTIP = "Enable to position TipBuddy directly above your cursor's position instead of on the side";
	TB_OPTION_SCALE = "Compact Scale";
	TB_OPTION_SCALE_TOOLTIP = TB_OPTION_COMPACTONLY..TB_NML_TXT.."Changes the size of the "..TB_WHT_TXT.."Compact"..TB_NML_TXT.." TipBuddy tooltip";
	TB_OPTION_GTTSCALE = "Default Tooltip Scale";
	TB_OPTION_GTTSCALE_TOOLTIP = TB_OPTION_DEFAULTONLY..TB_NML_TXT.."Changes the scale of the "..TB_WHT_TXT.."Default"..TB_NML_TXT.." tooltip";
	TB_OPTION_ANCHORED = "Anchor Unit Tips";
	TB_OPTION_ANCHORED_TOOLTIP = "Enable to anchor your unit tips to the TipBuddyAnchor.  Non-unit tips (such as buttons) are not affected by this and have their own setting in the dropdown below this\n\nTo show the TipBuddyAnchor after you've hidden it, click the 'Display TipBuddyAnchor' button";
	TB_OPTION_DELAY = "Tooltip Delay Time";
	TB_OPTION_DELAY_TOOLTIP = "The time it takes to start fading from the moment your cursor leaves a unit";
	TB_OPTION_FADETIME = "Tooltip Fade Time";
	TB_OPTION_FADETIME_TOOLTIP = "The time it takes to fade TipBuddy out (starts fading after the 'Delay' has expired)";
	TB_OPTION_COLORBUTTON_TOOLTIP = "Select the tooltip background color to display for this unit type";
	TB_OPTION_COLORBUTTON_BOR_TOOLTIP = "Select the tooltip border color to display for this unit type";
	TB_OPTION_SAMEGUILD = "Guild BG Color";
	TB_OPTION_SAMEGUILD_TOOLTIP = "Select the tooltip background color to display for players in the same guild as you";
	TB_OPTION_SAMEGUILDB = "Guild Border Color";
	TB_OPTION_SAMEGUILDB_TOOLTIP = "Select the tooltip border color to display for players in the same guild as you";
	TB_OPTION_NONUNITBG = "Non-Unit BG Color";
	TB_OPTION_NONUNITBG_TOOLTIP = "Select the tooltip background color to display for everything that isn't a unit."..TB_GRY_TXT.."\n(buttons, icons, items, spells, etc)";
	TB_OPTION_NONUNITBGB = "Non-Unit Border Color";
	TB_OPTION_NONUNITBGB_TOOLTIP = "Select the tooltip border color to display for everything that isn't a unit."..TB_GRY_TXT.."\n(buttons, icons, items, spells, etc)";
	TB_OPTION_CLASSCOLOR = "Colored Class Text";
	TB_OPTION_CLASSCOLOR_TOOLTIP = "Enable this to have the class text for players be color coded";
	TB_OPTION_FADEDEFAULT = "Fade Default Tooltip";
	TB_OPTION_FADEDEFAULT_TOOLTIP = "Enable this to make the Default tooltip mode fade away instead of disappearing immediately";
	TB_OPTION_BLIZZARDDEFAULT = "Blizzard Default";
	TB_OPTION_BLIZZARDDEFAULT_TOOLTIP = "Enable this to display your tooltips in the default Blizzard style and not take advantage of the coloring or formatting that TipBuddy provides."..TB_GRY_TXT.."\n(You will still be able to take advantage of the anchoring, background colors, buffs, pvp icon and rank icon options, however)";
	TB_OPTION_REPOSITIONMODS = "Keep Tips On Screen";
	TB_OPTION_REPOSITIONMODS_TOOLTIP = "Enabling this will keep all of your tooltips from extending off the side of the screen  (usually by other mods)";
	TB_OPTION_UBERTIPANCH = "Anchor Non-Unit Tips";
	TB_OPTION_UBERTIPANCH_TOOLTIP = "Enable this to have your non-unit tips (buttons, etc) anchor to the TipBuddyAnchor instead of the cursor.\n\nIf the 'Use TipBuddyAnchor' checkbox is checked, then all tooltips will anchor the the TipBuddyAnchor automatically";
	TB_OPTION_DIFFBACKGROUND = "Difficulty as Backdrop"
	TB_OPTION_DIFFBACKGROUND_TOOLTIP = "Enabling this will display your tooltip backdrops to be colored based on the units difficulty to you instead of the custom colors"
	
	
	TB_OPTION_NONUNITPOS_TOOLTIP = "Select how you want your non-unit tips to anchor";
	TB_OPTION_CURSORPOS_TOOLTIP = "Select the position of the tooltip in relation to your cursor";
	TB_OPTION_COLORTEXTBUTTON_TOOLTIP = "Options menu for selecting your tooltip text colors";
	TB_OPTION_STYLEMODE_TOOLTIP = "Choose which style tooltip to use for this unit type";
	
	
	TB_OPTION_BORDER_TOOLTIP = "Choose how you would like your tooltip BORDERS colored";
	TB_OPTION_BACKDROP_TOOLTIP = "Choose how you would like your tooltip BACKDROPS colored";
	
	
	TB_OPTION_TRG_PL = "Friendly Players";
	TB_OPTION_TRG_PL_TOOLTIP = "";
	TB_OPTION_TRG_EN = "Enemies";
	TB_OPTION_TRG_EN_TOOLTIP = "";
	TB_OPTION_TRG_NP = "Non-Hostile NPCs";
	TB_OPTION_TRG_NP_TOOLTIP = "";
	TB_OPTION_TRG_PA = "Party Members";
	TB_OPTION_TRG_PA_TOOLTIP = "";
	TB_OPTION_TRG_2L = "Seperate Line";
	TB_OPTION_TRG_2L_TOOLTIP = "Check to show the unit's target on a seperate line than their name";
	
	
	TB_RESETVARS_DIALOG = "Are you sure you wish to reset all of your settings?";
	
	
	TipBuddy_OptionsFrame_Sliders = {
		{ text = TB_OPTION_SCALE, type = "general", var = "scalemod", minValue = 0, maxValue = 6, valueStep = 1, tooltipText = TB_OPTION_SCALE_TOOLTIP},
		{ text = TB_OPTION_DELAY, type = "general", var = "delaytime", minValue = 0.0, maxValue = 4.0, valueStep = 0.1, tooltipText = TB_OPTION_DELAY_TOOLTIP},
		{ text = TB_OPTION_FADETIME, type = "general", var = "fadetime", minValue = 0.0, maxValue = 4.0, valueStep = 0.1, tooltipText = TB_OPTION_FADETIME_TOOLTIP},
		{ text = "X Offset", type = "general", var = "offset_x", minValue = -60, maxValue = 60, valueStep = 1, tooltipText = "The offset your tooltip will display in relation to the cursor on the horizontal axis"},
		{ text = "Y Offset", type = "general", var = "offset_y", minValue = -60, maxValue = 60, valueStep = 1, tooltipText = "The offset your tooltip will display in relation to the cursor on the vertical axis"},
		{ text = TB_OPTION_GTTSCALE, type = "general", var = "gtt_scale", minValue = 0.5, maxValue = 1.5, valueStep = 0.05, tooltipText = TB_OPTION_GTTSCALE_TOOLTIP},
	};
	
	
	TipBuddy_ColorPicker_Buttons_Text = {

		{ text = "Hostile", frame = "TipBuddy_OptionsFrame_ColorPicker_Text1", type = "textcolors", var = "nam_hos", tooltipText = ""},
		{ text = "Neutral", frame = "TipBuddy_OptionsFrame_ColorPicker_Text2", type = "textcolors", var = "nam_neu", tooltipText = ""},
		{ text = "Friendly", frame = "TipBuddy_OptionsFrame_ColorPicker_Text3", type = "textcolors", var = "nam_fri", tooltipText = ""},
		{ text = "Caution", frame = "TipBuddy_OptionsFrame_ColorPicker_Text4", type = "textcolors", var = "nam_cau", tooltipText = ""},
		{ text = "Friendly PvP", frame = "TipBuddy_OptionsFrame_ColorPicker_Text5", type = "textcolors", var = "nam_pvp", tooltipText = ""},
		{ text = "Tapped by You", frame = "TipBuddy_OptionsFrame_ColorPicker_Text6", type = "textcolors", var = "nam_tpp", tooltipText = ""},
		{ text = "Tapped by Other", frame = "TipBuddy_OptionsFrame_ColorPicker_Text7", type = "textcolors", var = "nam_tpo", tooltipText = ""},

		{ text = "Hostile", frame = "TipBuddy_OptionsFrame_ColorPicker_Text8", type = "textcolors", var = "gld_hos", tooltipText = ""},
		{ text = "Neutral", frame = "TipBuddy_OptionsFrame_ColorPicker_Text9", type = "textcolors", var = "gld_neu", tooltipText = ""},
		{ text = "Friendly", frame = "TipBuddy_OptionsFrame_ColorPicker_Text10", type = "textcolors", var = "gld_fri", tooltipText = ""},
		{ text = "Caution", frame = "TipBuddy_OptionsFrame_ColorPicker_Text11", type = "textcolors", var = "gld_cau", tooltipText = ""},
		{ text = "Friendly PvP", frame = "TipBuddy_OptionsFrame_ColorPicker_Text12", type = "textcolors", var = "gld_pvp", tooltipText = ""},
		{ text = "Tapped by You", frame = "TipBuddy_OptionsFrame_ColorPicker_Text13", type = "textcolors", var = "gld_tpp", tooltipText = ""},
		{ text = "Tapped by Other", frame = "TipBuddy_OptionsFrame_ColorPicker_Text14", type = "textcolors", var = "gld_tpo", tooltipText = ""},
		{ text = "Guild Mates", frame = "TipBuddy_OptionsFrame_ColorPicker_Text15", type = "textcolors", var = "gld_mte", tooltipText = ""},

		{ text = "Impossible",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text16", type = "textcolors", var = "lvl_imp", tooltipText = ""},
		{ text = "Very Difficult",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text17", type = "textcolors", var = "lvl_vdf", tooltipText = ""},
		{ text = "Difficult",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text18", type = "textcolors", var = "lvl_dif", tooltipText = ""},
		{ text = "Standard",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text19", type = "textcolors", var = "lvl_stn", tooltipText = ""},
		{ text = "Trivial",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text20", type = "textcolors", var = "lvl_trv", tooltipText = ""},
		{ text = "Same Faction",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text21", type = "textcolors", var = "lvl_sfc", tooltipText = ""},

		{ text = "Mage",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text22", type = "textcolors", var = "cls_mag", tooltipText = ""},
		{ text = "Warlock",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text23", type = "textcolors", var = "cls_wlk", tooltipText = ""},
		{ text = "Priest",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text24", type = "textcolors", var = "cls_pri", tooltipText = ""},
		{ text = "Druid",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text25", type = "textcolors", var = "cls_drd", tooltipText = ""},
		{ text = "Shaman",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text26", type = "textcolors", var = "cls_shm", tooltipText = ""},
		{ text = "Paladin",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text27", type = "textcolors", var = "cls_pal", tooltipText = ""},
		{ text = "Rogue",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text28", type = "textcolors", var = "cls_rog", tooltipText = ""},
		{ text = "Hunter",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text29", type = "textcolors", var = "cls_hun", tooltipText = ""},
		{ text = "Warrior",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text30", type = "textcolors", var = "cls_war", tooltipText = ""},
		{ text = "Other Class",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text31", type = "textcolors", var = "cls_oth", tooltipText = ""},

		{ text = "Rare Text",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text32", type = "textcolors", var = "elite_rar", tooltipText = ""},
		{ text = "Boss Text",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text33", type = "textcolors", var = "elite_bss", tooltipText = ""},

		{ text = "Corpse Text",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text34", type = "textcolors", var = "other_crp", tooltipText = ""},
		{ text = "Other Text",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text35", type = "textcolors", var = "other_unk", tooltipText = ""},
		{ text = "Race Text",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text36", type = "textcolors", var = "other_rac", tooltipText = ""},
		{ text = "City Faction",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text37", type = "textcolors", var = "other_ctf", tooltipText = ""},
	};

	
-- I hate doing this, but Bliz won't give us a function to look up an NPC's Faction.  
-- This list will certainly break down at some point if/when more get added by Bliz.  :(
-- The factions are broken out by first letter to make the search much faster
-- thanks to Quindo Ma from worldofwar for obtaining this full list!  6/25/06
	TB_Factions = { 
		["A"] = {
			[1] = "Alliance",
			[2] = "Alliance Forces",
			[3] = "Argent Dawn",
			},
		["B"] = {
			[1] = "Blackfathom",
			[2] = "Bloodsail Buccaneers",
			[3] = "Blue",
			[4] = "Booty Bay",
			[5] = "Brood of Nozdormu",
			[6] = "Burning Blade",
			},
		["C"] = {
			[1] = "Caer Darrow",
			[2] = "Cenarion Circle",
			},
		["D"] = {
			[1] = "Dalaran",
			[2] = "Dark Iron Dwarves",
			[3] = "Darkmoon Faire",
			[4] = "Darkspear Trolls",
			[5] = "Darnassus",
			[6] = "Defias Brotherhood",
			[7] = "Defias Brotherhood Traitor",
			},
		["E"] = {
			[1] = "Everlook",
			},
		["F"] = {
			[1] = "Forlorn Spirit",
			[2] = "Frostwolf Clan",
			},
		["G"] = {
			[1] = "Gadgetzan",
			[2] = "Gelkis Clan Centaur",
			[3] = "Gnomeregan Exiles",
			},
		["H"] = {
			[1] = "Hillsbrad, Southshore Mayor",
			[2] = "Hillsbrad Militia",
			[3] = "Horde",
			[4] = "Horde Forces",
			[5] = "Human, Night Watch",
			[6] = "Hydraxian Waterlords",
			},
		["I"] = {
			[1] = "Ironforge",
			},
		["J"] = {
			[1] = "Jaedenar",
			},
		["K"] = {
			[1] = "Kurzen's Mercenaries",
			},
		["L"] = {
			[1] = "Lost Ones",
			},
		["M"] = {
			[1] = "Magram Clan Centaur",
			[2] = "Makrura",
			[3] = "Maraudine",
			[4] = "Might of Kalimdor",
			},
		["N"] = {
			[1] = "Nethergarde",
			[2] = "Nethergarde Caravan",
			},
		["O"] = {
			[1] = "Ogre",
			[2] = "Orgrimmar",
			},
		["R"] = {
			[1] = "Ratchet",
			[2] = "Ravasaur Trainers",
			[3] = "Ravenholdt",
			[4] = "Red",
			[5] = "Revantusk Trolls",
			},
		["S"] = {
			[1] = "Scarlet Crusade",
			[2] = "Scourge Invaders",
			[3] = "Shadowsilk Poacher",
			[4] = "Shatterspear Trolls",
			[5] = "Shen'dralar",
			[6] = "Silithid",
			[7] = "Silithid Attackers",
			[8] = "Silverwing Sentinels",
			[9] = "Southsea Freebooters",
			[10] = "Steamwheedle Cartel",
			[11] = "Stormpike Guard",
			[12] = "Stormwind",
			[13] = "Syndicate",
			},
		["T"] = {
			[1] = "Taskmaster Fizzule",
			[2] = "The Defilers",
			[3] = "The Ironforge Brigade",
			[4] = "The League of Arathor",
			[5] = "Theramore",
			[6] = "Thorium Brotherhood",
			[7] = "Thunder Bluff",
			[8] = "Timbermaw Hold",
			[9] = "Training Dummy",
			},
		["U"] = {
			[1] = "Undercity",
			},
		["V"] = {
			[1] = "Venture Company",
			},
		["W"] = {
			[1] = "Wailing Caverns",
			[2] = "Warsong Outriders",
			[3] = "Wildhammer Clan",
			[4] = "Wintersaber Trainers",
			},
		["Z"] = {
			[1] = "Zandalar Tribe",
			},
	};
	
	
	TB_INITIALIZING_VARIABLES = "|cff3366ffInitializing TipBuddy Variables";
	
	
	TB_DESCRIPTION = "Enhanced, configurable unit tooltip.";
	
	
	TB_VERSION_LOADED_ONE = "|cffffd200TipBuddy |cffffff00v";
	TB_VERSION_LOADED_TWO = " loaded.";
	TB_NO_SHOWING_RANK = "|cff20ff20TipBuddy: No longer showing full rank title in name.";
	TB_SHOWING_RANK = "|cff20ff20TipBuddy: Showing full rank titles in name.";
	TB_RESET_POSITION = "|cff20ff20TipBuddy: Resetting TipBuddyAnchor position.";
	TB_DEFAULT_TOOLTIPS = "|cff20ff20TipBuddy: Default tooltips are now enhanced.";
	TB_DEFAULT_TOOLTIPS_NOT = "|cff20ff20TipBuddy: Default tooltips are no longer enhanced.";
	TB_SPECIFY_TARGET_TYPE = "|cff20ff20TipBuddy: Please specify a target type (ex: /tip extras pc_friend)";
	TB_TYPE_SCALE_NUMBER = "|cff20ff20TipBuddy: Please type a scale number after 'scale' (valid numbers: 0.25-2)";
	
	
	TB_PLAYERS = "Players";
	TB_PLAYERS_CAPS = "PLAYERS";
	TB_FRIENDLY = "Friendly";
	TB_INPARTY = "InParty";
	TB_ENEMY = "Enemy";
	TB_BORDER_COLOR = "Border Color";
	TB_BACKDROP_COLOR = "Backdrop Color";
	TB_NPCS = "NPCs";
	TB_NEUTRAL = "Neutral";
	TB_PETS = "Pets";
	TB_PETS_CAPS = "PETS";
	TB_CORPSE = "Corpse";
	TB_CORPSE_CAPS = "CORPSE";
	TB_GENERAL_OPTIONS = "GENERAL OPTIONS";
	TB_GENERAL = "General";
	TB_ANCHORING = "Anchoring";
	TB_ANCHORING_OPTIONS = "ANCHORING OPTIONS";
	TB_CURSOR_POSITION = "Tooltip Cursor Position";
	TB_NON_UNIT_TOOLTIPS = "Non-Unit Tooltips";
	TB_DISPLAY_TIPBUDDYANCHOR = "Display TipBuddyAnchor";
	TB_RESET_TIPBUDDYANCHOR = "Reset TipBuddyAnchor ";
	TB_FADING = "Fading";
	TB_FADING_OPTIONS = "FADING OPTIONS";
	TB_TEXT_COLORS = "Text Colors";
	TB_NAMES = "|cffffffffNames";
	TB_GUILD_TITLES = "|cffffffffGuild/Titles";
	TB_LEVEL_DIFFICULTY = "|cffffffffLevel Difficulty";
	TB_CLASSES = "|cffffffffClasses";
	TB_OTHER = "|cffffffffOther";
	TB_SHOW_VARS = "Show Vars";
	TB_HIDE_VARS = "Hide Vars";
	TB_VARIABLE_CODES = "Variable Codes";
	TB_RESET_ALL = "Reset All";
	TB_OKAY = "Okay";
	TB_OKAY_CAPS = "OKAY";
	TB_CANCEL = "Cancel";
	TB_CANCEL_CAPS = "CANCEL";
	TB_APPLY = "Apply";
	TB_UNIQUE_UNITS = "|cffffffffUnique Units";
	TB_ALPHA = "Alpha";
	TB_UNKNOWN = "Unknown";
	TB_NONE = "None";
	TB_TIPBUDDYANCHOR = "TipBuddyAnchor";
	TB_PVP = "PvP";
	TB_SHOW_HEALTH_TEXT = "Show Health Text";
	TB_SHOW_MANA_TEXT = "Show Mana Text";
	TB_SHOW_TEXT_ONLY = "Show Text Only";
	
	
	TB_DEFAULT_MODE_TOOLTIP = "Default mode is similar\nto Blizzard's default tooltips,\nbut much more customizable";
	TB_COMPACT_MODE_TOOLTIP = "Compact Mode has a \ncleaner, smaller style.";
	TB_ADVANCED_MODE_TOOLTIP = "For Advanced Users only.";
	TB_SETTING_BLANK = "|cff3366ffSETTING BLANK VAR with: ";
	TB_SMALL = "Small";
	TB_LARGE = "Large";
	TB_COOSE_CUSTOM_COLOR = "Choose your custom color by\nclicking the box to the right.";
	TB_COLOR_BY_DIFFICULTY = "Color will be determined\nby the unit's difficulty\n(red, yellow, grey, etc).";
	TB_COLOR_BY_REACTION = "Color is determined by th\n unit's reaction towards you.";
	TB_POSITION_ABOVE_CURSOR = "Position the tooltip ABOVE your cursor";
	TB_POSITION_RIGHT_CURSOR = "Position the tooltip to the RIGHT of your cursor";
	TB_POSITION_LEFT_CURSOR = "Position the tooltip to the LEFT of your cursor";
	TB_POSITION_BELOW_CURSOR = "Position the tooltip BELOW your cursor";
	TB_NONUNIT_TOOLTIPS_CURSOR = "Non-Unit tooltips will\nfollow the cursor";
	TB_NONUNIT_TOOLTIPS_ANCHOR = "Non-Unit tooltips will\nattach themselves to\nthe TipBuddyAnchor";
	TB_NONUNIT_TOOLTIPS_SMART = "Non-Unit tooltips will attempt to\nattach themselves to the button\nor object you have your mouse\nover in a smart position";
	TB_ANCHOR_TOOLTIP_TOP_RIGHT = "Anchor tooltip to the TOP RIGHT\nof the TipBuddyAnchor";
	TB_ANCHOR_TOOLTIP_TOP_LEFT = "Anchor tooltip to the TOP LEFT\nof the TipBuddyAnchor";
	TB_ANCHOR_TOOLTIP_BOTTOM_RIGHT = "Anchor tooltip to the BOTTOM RIGHT\nof the TipBuddyAnchor";
	TB_ANCHOR_TOOLTIP_BOTTOM_LEFT = "Anchor tooltip to the BOTTOM LEFT\nof the TipBuddyAnchor";
	TB_ANCHOR_TOOLTIP_BOTTOM_CENTER = "Anchor tooltip to the BOTTOM CENTER\nof the TipBuddyAnchor";
	TB_ANCHOR_TOOLTIP_TOP_CENTER = "Anchor tooltip to the TOP CENTER\nof the TipBuddyAnchor";
	
	
	TB_LOADING_TITAN = "---------------------------------------------------loading titan";
	
	
	TB_EXTRAS_ON = "|cff20ff20TipBuddy: Extras for all target types are now ON";
	TB_EXTRAS_OFF = "|cff20ff20TipBuddy: Extras for all target types are now OFF";
	TB_NOT_RECOGNIZE_TYPE = "|cff20ff20TipBuddy: Could not recognize target type: ";
	TB_NOT_SHOWING_EXTRAS = "|cff20ff20TipBuddy: No longer showing extras for target type: ";
	TB_SHOWING_EXTRAS = "|cff20ff20TipBuddy: Now showing extras for target type: ";

	
--Tooltip Style (Compact, Default, Advanced)
	TipBuddy_TipStyle = {
		[1] = "Default Mode",
		[2] = "Compact Mode",
		[3] = "Advanced Mode", 
	}
	
	
	TipBuddy_CursorPos = {
		[1] = "Top",
		[2] = "Right",
		[3] = "Left",
		[4] = "Bottom", 
	};
	
	
--Tooltip Backdrop Colors
	TipBuddy_BDColor = {
		[1] = "Custom",
		[2] = "Difficulty",
		[3] = "Reaction", 
	};
	
	
--Tooltip Backdrop BORDER Colors
	TipBuddy_BDBColor = {
		[1] = "Custom",
		[2] = "Difficulty",
		[3] = "Reaction", 
	};

	
--non-unit tips
	TipBuddy_NonUnitTipPos = {
		[1] = "Cursor",
		[2] = "TipBuddyAnchor",
		[3] = "Smart Anchor", 
	};
	
	
	TipBuddy_AnchorPos = {
		[1] = "Top Right",
		[2] = "Top Left",
		[3] = "Bottom Right",
		[4] = "Bottom Left", 
		[5] = "Top Center", 
		[6] = "Bottom Center", 
	};