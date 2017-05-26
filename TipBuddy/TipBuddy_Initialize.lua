--[[

	TipBuddy: ---------
		copyright 2006 by Chester

]]

TIPBUDDY_VERSION = GetAddOnMetadata("TipBuddy", "Version");
TIPBUDDYTITLE = "TipBuddy";
TIPBUDDYTITAN = "TipBuddyTitan";

TB_FADE_TIMER = 1;
TB_POPUP_TIMER = 0.2;

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

TB_DEFAULTBG_COLOR = {r = 0.09, g = 0.09, b = 0.19};

TipBuddy = {};
TipBuddyUnitReaction = {
	{ r = "hostile" },	-- 1
	{ r = "hostile" },	-- 2 hostile
	{ r = "hostile" },	-- 3 ??
	{ r = "neutral" },	-- 4 neutral
	{ r = "friendly" },	-- 5 friendly non-pvp
	{ r = "pvp" },		-- 6 pvp
	{ r = "friendly" },	-- 7 blue players?
};

TB_ANCHOR = {
	["TOPRIGHT"] = {a="BOTTOMRIGHT",b="TOPRIGHT"}, 
	["RIGHT"] = {a="BOTTOMLEFT",b="TOPRIGHT"},
	["BOTTOMRIGHT"] = {a="TOPLEFT",b="BOTTOMRIGHT"}, 
	["TOPLEFT"] = {a="BOTTOMLEFT",b="TOPLEFT"},
	["LEFT"] = {a="BOTTOMRIGHT",b="TOPLEFT"},
	["BOTTOMLEFT"] = {a="TOPRIGHT",b="BOTTOMLEFT"}, 
};



TipBuddy_ColorPicker_Buttons = {
	{ frame = "TipBuddy_OptionsFrame_ColorPicker1", type = "pc_friend", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker2", type = "pc_party", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker3", type = "pc_enemy", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker4", type = "npc_friend", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker5", type = "npc_neutral", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker6", type = "npc_enemy", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker7", type = "pet_friend", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker8", type = "pet_enemy", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ text = TB_OPTION_SAMEGUILD, frame = "TipBuddy_OptionsFrame_ColorPicker9", type = "guild", var = "bgcolor", tooltipText = TB_OPTION_SAMEGUILD_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker10", type = "corpse", var = "bgcolor", tooltipText = TB_OPTION_COLORBUTTON_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker11", type = "pc_friend", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker12", type = "pc_party", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker13", type = "pc_enemy", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker14", type = "npc_friend", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker15", type = "npc_neutral", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker16", type = "npc_enemy", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker17", type = "pet_friend", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker18", type = "pet_enemy", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ text = TB_OPTION_SAMEGUILDB, frame = "TipBuddy_OptionsFrame_ColorPicker19", type = "guild", var = "bgbcolor", tooltipText = TB_OPTION_SAMEGUILDB_TOOLTIP},
	{ frame = "TipBuddy_OptionsFrame_ColorPicker20", type = "corpse", var = "bgbcolor", tooltipText = TB_OPTION_COLORBUTTON_BOR_TOOLTIP},
	{ text = TB_OPTION_NONUNITBG, frame = "TipBuddy_OptionsFrame_ColorPicker21", type = "general", var = "bgcolor", tooltipText = TB_OPTION_NONUNITBG_TOOLTIP},
	{ text = TB_OPTION_NONUNITBGB, frame = "TipBuddy_OptionsFrame_ColorPicker22", type = "general", var = "bgbcolor", tooltipText = TB_OPTION_NONUNITBGB_TOOLTIP},
};



TB_Op_Checks = { 
	{ frame = "TB_Op_Check1", text = TB_OPTION_OFF, type = "pc_friend", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check2", text = TB_OPTION_GLD, type = "pc_friend", var = "gld", tooltipText = TB_OPTION_GLD_TOOLTIP },
	{ frame = "TB_Op_Check3", text = TB_OPTION_HTH, type = "pc_friend", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check4", text = TB_OPTION_RAC, type = "pc_friend", var = "rac", tooltipText = TB_OPTION_RAC_TOOLTIP },
	{ frame = "TB_Op_Check5", text = TB_OPTION_CLS, type = "pc_friend", var = "cls", tooltipText = TB_OPTION_CLS_TOOLTIP },
	{ frame = "TB_Op_Check6", text = TB_OPTION_FAC, type = "pc_friend", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check7", text = TB_OPTION_BFF, type = "pc_friend", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check8", text = TB_OPTION_RNK, type = "pc_friend", var = "rnk", tooltipText = TB_OPTION_RNK_TOOLTIP },

	{ frame = "TB_Op_Check9", text = TB_OPTION_OFF, type = "pc_party", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check10", text = TB_OPTION_GLD, type = "pc_party", var = "gld", tooltipText = TB_OPTION_GLD_TOOLTIP },
	{ frame = "TB_Op_Check11", text = TB_OPTION_HTH, type = "pc_party", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check12", text = TB_OPTION_RAC, type = "pc_party", var = "rac", tooltipText = TB_OPTION_RAC_TOOLTIP },
	{ frame = "TB_Op_Check13", text = TB_OPTION_CLS, type = "pc_party", var = "cls", tooltipText = TB_OPTION_CLS_TOOLTIP },
	{ frame = "TB_Op_Check14", text = TB_OPTION_FAC, type = "pc_party", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check15", text = TB_OPTION_BFF, type = "pc_party", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check16", text = TB_OPTION_RNK, type = "pc_party", var = "rnk", tooltipText = TB_OPTION_RNK_TOOLTIP },
	
	{ frame = "TB_Op_Check17", text = TB_OPTION_OFF, type = "pc_enemy", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check18", text = TB_OPTION_GLD, type = "pc_enemy", var = "gld", tooltipText = TB_OPTION_GLD_TOOLTIP },
	{ frame = "TB_Op_Check19", text = TB_OPTION_HTH, type = "pc_enemy", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check20", text = TB_OPTION_RAC, type = "pc_enemy", var = "rac", tooltipText = TB_OPTION_RAC_TOOLTIP },
	{ frame = "TB_Op_Check21", text = TB_OPTION_CLS, type = "pc_enemy", var = "cls", tooltipText = TB_OPTION_CLS_TOOLTIP },
	{ frame = "TB_Op_Check22", text = TB_OPTION_FAC, type = "pc_enemy", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check23", text = TB_OPTION_BFF, type = "pc_enemy", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check24", text = TB_OPTION_RNK, type = "pc_enemy", var = "rnk", tooltipText = TB_OPTION_RNK_TOOLTIP },

	{ frame = "TB_Op_Check25", text = TB_OPTION_OFF, type = "npc_friend", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check26", text = TB_OPTION_GLD_TITLE, type = "npc_friend", var = "gld", tooltipText = TB_OPTION_GLD_TITLE_TOOLTIP },
	{ frame = "TB_Op_Check27", text = TB_OPTION_HTH, type = "npc_friend", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check28", text = TB_OPTION_CFC, type = "npc_friend", var = "cfc", tooltipText = TB_OPTION_CFC_TOOLTIP },
	{ frame = "TB_Op_Check29", text = TB_OPTION_CLS_TYPE, type = "npc_friend", var = "cls", tooltipText = TB_OPTION_CLS_TYPE_TOOLTIP },
	{ frame = "TB_Op_Check30", text = TB_OPTION_FAC, type = "npc_friend", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check31", text = TB_OPTION_BFF, type = "npc_friend", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check32", text = TB_OPTION_XTR, type = "npc_friend", var = "xtr", tooltipText = TB_OPTION_XTR_TOOLTIP },

	{ frame = "TB_Op_Check33", text = TB_OPTION_OFF, type = "npc_enemy", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check34", text = TB_OPTION_GLD_TITLE, type = "npc_enemy", var = "gld", tooltipText = TB_OPTION_GLD_TITLE_TOOLTIP },
	{ frame = "TB_Op_Check35", text = TB_OPTION_HTH, type = "npc_enemy", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check36", text = TB_OPTION_CFC, type = "npc_enemy", var = "cfc", tooltipText = TB_OPTION_CFC_TOOLTIP },
	{ frame = "TB_Op_Check37", text = TB_OPTION_CLS_TYPE, type = "npc_enemy", var = "cls", tooltipText = TB_OPTION_CLS_TYPE_TOOLTIP },
	{ frame = "TB_Op_Check38", text = TB_OPTION_FAC, type = "npc_enemy", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check39", text = TB_OPTION_BFF, type = "npc_enemy", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check40", text = TB_OPTION_XTR, type = "npc_enemy", var = "xtr", tooltipText = TB_OPTION_XTR_TOOLTIP },

	{ frame = "TB_Op_Check41", text = TB_OPTION_OFF, type = "pet_friend", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check42", text = TB_OPTION_GLD_TITLE, type = "pet_friend", var = "gld", tooltipText = TB_OPTION_GLD_TITLE_TOOLTIP },
	{ frame = "TB_Op_Check43", text = TB_OPTION_HTH, type = "pet_friend", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check44", text = TB_OPTION_CFC, type = "pet_friend", var = "cfc", tooltipText = TB_OPTION_CFC_TOOLTIP },
	{ frame = "TB_Op_Check45", text = TB_OPTION_CLS_TYPE, type = "pet_friend", var = "cls", tooltipText = TB_OPTION_CLS_TYPE_TOOLTIP },
	{ frame = "TB_Op_Check46", text = TB_OPTION_FAC, type = "pet_friend", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check47", text = TB_OPTION_BFF, type = "pet_friend", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check48", text = TB_OPTION_XTR, type = "pet_friend", var = "xtr", tooltipText = TB_OPTION_XTR_TOOLTIP },

	{ frame = "TB_Op_Check49", text = TB_OPTION_OFF, type = "pet_enemy", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check50", text = TB_OPTION_GLD_TITLE, type = "pet_enemy", var = "gld", tooltipText = TB_OPTION_GLD_TITLE_TOOLTIP },
	{ frame = "TB_Op_Check51", text = TB_OPTION_HTH, type = "pet_enemy", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check52", text = TB_OPTION_CFC, type = "pet_enemy", var = "cfc", tooltipText = TB_OPTION_CFC_TOOLTIP },
	{ frame = "TB_Op_Check53", text = TB_OPTION_CLS_TYPE, type = "pet_enemy", var = "cls", tooltipText = TB_OPTION_CLS_TYPE_TOOLTIP },
	{ frame = "TB_Op_Check54", text = TB_OPTION_FAC, type = "pet_enemy", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check55", text = TB_OPTION_BFF, type = "pet_enemy", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check56", text = TB_OPTION_XTR, type = "pet_enemy", var = "xtr", tooltipText = TB_OPTION_XTR_TOOLTIP },

	{ frame = "TB_Op_Check57", text = TB_OPTION_ANCHORED, type = "general", var = "anchored", tooltipText = TB_OPTION_ANCHORED_TOOLTIP },
	{ frame = "TB_Op_Check58", text = TB_OPTION_CLASSCOLOR, type = "general", var = "classcolor", tooltipText = TB_OPTION_CLASSCOLOR_TOOLTIP },
	{ frame = "TB_Op_Check59", text = TB_OPTION_FADEDEFAULT, type = "general", var = "gtt_fade", tooltipText = TB_OPTION_FADEDEFAULT_TOOLTIP },
	{ frame = "TB_Op_Check60", text = TB_OPTION_BLIZZARDDEFAULT, type = "general", var = "blizdefault", tooltipText = TB_OPTION_BLIZZARDDEFAULT_TOOLTIP },

	{ frame = "TB_Op_Check61", text = TB_OPTION_REPOSITIONMODS, type = "general", var = "reposmods", tooltipText = TB_OPTION_REPOSITIONMODS_TOOLTIP },
	{ frame = "TB_Op_Check62", text = TB_OPTION_DIFFBACKGROUND, type = "general", var = "diff_bg", tooltipText = TB_OPTION_DIFFBACKGROUND_TOOLTIP },

	{ frame = "TB_Op_Check63", text = TB_OPTION_RNM, type = "pc_friend", var = "rnm", tooltipText = TB_OPTION_RNM_TOOLTIP },
	{ frame = "TB_Op_Check64", text = TB_OPTION_RNM, type = "pc_party", var = "rnm", tooltipText = TB_OPTION_RNM_TOOLTIP },
	{ frame = "TB_Op_Check65", text = TB_OPTION_RNM, type = "pc_enemy", var = "rnm", tooltipText = TB_OPTION_RNM_TOOLTIP },

	{ frame = "TB_Op_Check66", text = "", type = "general", var = "c", tooltipText = "" },
	{ frame = "TB_Op_Check67", text = "", type = "general", var = "c", tooltipText = "" },
	{ frame = "TB_Op_Check68", text = "", type = "general", var = "c", tooltipText = "" },
	{ frame = "TB_Op_Check69", text = "", type = "general", var = "c", tooltipText = "" },

	{ frame = "TB_Op_Check70", text = TB_OPTION_OFF, type = "npc_neutral", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check71", text = TB_OPTION_GLD_TITLE, type = "npc_neutral", var = "gld", tooltipText = TB_OPTION_GLD_TITLE_TOOLTIP },
	{ frame = "TB_Op_Check72", text = TB_OPTION_HTH, type = "npc_neutral", var = "hth", tooltipText = TB_OPTION_HTH_TOOLTIP },
	{ frame = "TB_Op_Check73", text = TB_OPTION_CFC, type = "npc_neutral", var = "cfc", tooltipText = TB_OPTION_CFC_TOOLTIP },
	{ frame = "TB_Op_Check74", text = TB_OPTION_CLS_TYPE, type = "npc_neutral", var = "cls", tooltipText = TB_OPTION_CLS_TYPE_TOOLTIP },
	{ frame = "TB_Op_Check75", text = TB_OPTION_FAC, type = "npc_neutral", var = "fac", tooltipText = TB_OPTION_FAC_TOOLTIP },
	{ frame = "TB_Op_Check76", text = TB_OPTION_BFF, type = "npc_neutral", var = "bff", tooltipText = TB_OPTION_BFF_TOOLTIP },
	{ frame = "TB_Op_Check77", text = TB_OPTION_XTR, type = "npc_neutral", var = "xtr", tooltipText = TB_OPTION_XTR_TOOLTIP },

	{ frame = "TB_Op_Check78", text = TB_OPTION_TRG, type = "pc_friend",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_Op_Check79", text = TB_OPTION_TRG, type = "pc_party",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },	
	{ frame = "TB_Op_Check80", text = TB_OPTION_TRG, type = "pc_enemy",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_Op_Check81", text = TB_OPTION_TRG, type = "npc_friend",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_Op_Check82", text = TB_OPTION_TRG, type = "npc_neutral",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_Op_Check83", text = TB_OPTION_TRG, type = "npc_enemy",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_Op_Check84", text = TB_OPTION_TRG, type = "pet_friend",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_Op_Check85", text = TB_OPTION_TRG, type = "pet_enemy",	var = "trg", tooltipText = TB_OPTION_TRG_TOOLTIP },

	{ frame = "TB_Op_Check86", text = TB_OPTION_OFF, type = "corpse", var = "off", tooltipText = TB_OPTION_OFF_TOOLTIP },
	{ frame = "TB_Op_Check87", text = TB_OPTION_GLD_TITLE, type = "corpse", var = "gld", tooltipText = TB_OPTION_GLD_TITLE_TOOLTIP },
	{ frame = "TB_Op_Check88", text = TB_OPTION_CFC, type = "corpse", var = "cfc", tooltipText = TB_OPTION_CFC_TOOLTIP },
	{ frame = "TB_Op_Check89", text = TB_OPTION_CLS_TYPE, type = "corpse", var = "cls", tooltipText = TB_OPTION_CLS_TYPE_TOOLTIP },

	{ frame = "TB_Op_Check78_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "pc_friend",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check78_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "pc_friend",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check78_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "pc_friend",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check78_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "pc_friend",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check78_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "pc_friend",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },

	{ frame = "TB_Op_Check79_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "pc_party",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check79_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "pc_party",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check79_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "pc_party",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check79_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "pc_party",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check79_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "pc_party",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },

	{ frame = "TB_Op_Check80_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "pc_enemy",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check80_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "pc_enemy",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check80_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "pc_enemy",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check80_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "pc_enemy",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check80_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "pc_enemy",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },
	
	{ frame = "TB_Op_Check81_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "npc_friend",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check81_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "npc_friend",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check81_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "npc_friend",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check81_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "npc_friend",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check81_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "npc_friend",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },

	{ frame = "TB_Op_Check82_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "npc_neutral",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check82_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "npc_neutral",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check82_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "npc_neutral",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check82_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "npc_neutral",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check82_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "npc_neutral",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },
	
	{ frame = "TB_Op_Check83_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "npc_enemy",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check83_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "npc_enemy",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check83_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "npc_enemy",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check83_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "npc_enemy",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check83_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "npc_enemy",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },

	{ frame = "TB_Op_Check84_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "pet_friend",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check84_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "pet_friend",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check84_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "pet_friend",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check84_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "pet_friend",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check84_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "pet_friend",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },

	{ frame = "TB_Op_Check85_PlusPopup_1", text = TB_OPTION_TRG_PL, type = "pet_enemy",	var = "trg_pl", tooltipText = TB_OPTION_TRG_PL_TOOLTIP },
	{ frame = "TB_Op_Check85_PlusPopup_2", text = TB_OPTION_TRG_EN, type = "pet_enemy",	var = "trg_en", tooltipText = TB_OPTION_TRG_EN_TOOLTIP },
	{ frame = "TB_Op_Check85_PlusPopup_3", text = TB_OPTION_TRG_NP, type = "pet_enemy",	var = "trg_np", tooltipText = TB_OPTION_TRG_NP_TOOLTIP },
	{ frame = "TB_Op_Check85_PlusPopup_4", text = TB_OPTION_TRG_PA, type = "pet_enemy",	var = "trg_pa", tooltipText = TB_OPTION_TRG_PA_TOOLTIP },
	{ frame = "TB_Op_Check85_PlusPopup_5", text = TB_OPTION_TRG_2L, type = "pet_enemy",	var = "trg_2l", tooltipText = TB_OPTION_TRG_2L_TOOLTIP },

	{ frame = "TB_Op_Check3_PlusPopup_1", text = "", type = "pc_friend",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check3_PlusPopup_2", text = "", type = "pc_friend",	var = "txt_mna", tooltipText = "" },

	{ frame = "TB_Op_Check11_PlusPopup_1", text = "", type = "pc_party",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check11_PlusPopup_2", text = "", type = "pc_party",	var = "txt_mna", tooltipText = "" },

	{ frame = "TB_Op_Check19_PlusPopup_1", text = "", type = "pc_enemy",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check19_PlusPopup_2", text = "", type = "pc_enemy",	var = "txt_mna", tooltipText = "" },
	
	{ frame = "TB_Op_Check27_PlusPopup_1", text = "", type = "npc_friend",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check27_PlusPopup_2", text = "", type = "npc_friend",	var = "txt_mna", tooltipText = "" },

	{ frame = "TB_Op_Check72_PlusPopup_1", text = "", type = "npc_neutral",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check72_PlusPopup_2", text = "", type = "npc_neutral",	var = "txt_mna", tooltipText = "" },
	
	{ frame = "TB_Op_Check35_PlusPopup_1", text = "", type = "npc_enemy",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check35_PlusPopup_2", text = "", type = "npc_enemy",	var = "txt_mna", tooltipText = "" },

	{ frame = "TB_Op_Check43_PlusPopup_1", text = "", type = "pet_friend",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check43_PlusPopup_2", text = "", type = "pet_friend",	var = "txt_mna", tooltipText = "" },

	{ frame = "TB_Op_Check51_PlusPopup_1", text = "", type = "pet_enemy",	var = "txt_hth", tooltipText = "" },
	{ frame = "TB_Op_Check51_PlusPopup_2", text = "", type = "pet_enemy",	var = "txt_mna", tooltipText = "" },

	--Faction/PvP text
	{ frame = "TB_Op_Check6_PlusPopup_1", text = "", type = "pc_friend",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check14_PlusPopup_1", text = "", type = "pc_party",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check22_PlusPopup_1", text = "", type = "pc_enemy",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check30_PlusPopup_1", text = "", type = "npc_friend",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check75_PlusPopup_1", text = "", type = "npc_neutral",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check38_PlusPopup_1", text = "", type = "npc_enemy",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check46_PlusPopup_1", text = "", type = "pet_friend",	var = "txt_pvp", tooltipText = "" },
	{ frame = "TB_Op_Check54_PlusPopup_1", text = "", type = "pet_enemy",	var = "txt_pvp", tooltipText = "" },
};

TB_EditBoxes = { 
	{ frame = "TB_EditBox_01_1", text = TB_OPTION_TRG, type = "pc_friend",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_01_2", text = TB_OPTION_TRG, type = "pc_friend",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_02_1", text = TB_OPTION_TRG, type = "pc_party",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },	
	{ frame = "TB_EditBox_02_2", text = TB_OPTION_TRG, type = "pc_party",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_03_1", text = TB_OPTION_TRG, type = "pc_enemy",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_03_2", text = TB_OPTION_TRG, type = "pc_enemy",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_04_1", text = TB_OPTION_TRG, type = "npc_friend",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_04_2", text = TB_OPTION_TRG, type = "npc_friend",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_05_1", text = TB_OPTION_TRG, type = "npc_neutral",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_05_2", text = TB_OPTION_TRG, type = "npc_neutral",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_06_1", text = TB_OPTION_TRG, type = "npc_enemy",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_06_2", text = TB_OPTION_TRG, type = "npc_enemy",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_07_1", text = TB_OPTION_TRG, type = "pet_friend",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_07_2", text = TB_OPTION_TRG, type = "pet_friend",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_08_1", text = TB_OPTION_TRG, type = "pet_enemy",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_08_2", text = TB_OPTION_TRG, type = "pet_enemy",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_09_1", text = TB_OPTION_TRG, type = "corpse",	var = "ebx1", tooltipText = TB_OPTION_TRG_TOOLTIP },
	{ frame = "TB_EditBox_09_2", text = TB_OPTION_TRG, type = "corpse",	var = "ebx2", tooltipText = TB_OPTION_TRG_TOOLTIP },
};

function TipBuddy_Variable_Initialize()
	if ( TipBuddy_SavedVars and TipBuddy_SavedVars["version"] == TIPBUDDY_VERSION ) then
		return;
	end
	if (not TipBuddy_SavedVars) then
		TipBuddy_SavedVars = { };	
	end

	if ( tonumber(TipBuddy_SavedVars["version"]) ~= nil and tonumber(TipBuddy_SavedVars["version"]) < 1.55 ) then
		TipBuddy_ResetOffState();
	elseif ( tonumber(TipBuddy_SavedVars["version"]) ~= nil and tonumber(TipBuddy_SavedVars["version"]) < 1.74 ) then

	end
	
	TipBuddy_SavedVars["version"] = TIPBUDDY_VERSION;
	DEFAULT_CHAT_FRAME:AddMessage(TB_INITIALIZING_VARIABLES);
	--/script DEFAULT_CHAT_FRAME:AddMessage(tonumber(TipBuddy_SavedVars["version"]));
	if ( TipBuddy_SavedVars["pc_friend"] ) then
		if ( TipBuddy_SavedVars["pc_friend"]["bgcolor"] == nil ) then
			TipBuddy_SavedVars["pc_friend"].bgcolor = { ["r"] = 0.1, ["g"] = 0.22, ["b"] = 0.35, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["pc_friend"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["pc_friend"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["off"] ) then
			TipBuddy_SavedVars["pc_friend"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["nam"] ) then
			TipBuddy_SavedVars["pc_friend"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["cls"] ) then
			TipBuddy_SavedVars["pc_friend"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["gld"] ) then
			TipBuddy_SavedVars["pc_friend"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["fac"] ) then
			TipBuddy_SavedVars["pc_friend"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["cfc"] ) then
			TipBuddy_SavedVars["pc_friend"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["bff"] ) then
			TipBuddy_SavedVars["pc_friend"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["dbf"] ) then
			TipBuddy_SavedVars["pc_friend"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["xtr"] ) then
			TipBuddy_SavedVars["pc_friend"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["rac"] ) then
			TipBuddy_SavedVars["pc_friend"].rac = 0;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["rnk"] ) then
			TipBuddy_SavedVars["pc_friend"].rnk = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["trg"] ) then
			TipBuddy_SavedVars["pc_friend"].trg = 0;	
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["trg_pl"] ) then
			TipBuddy_SavedVars["pc_friend"].trg_pl = 0;	
			TipBuddy_SavedVars["pc_friend"].trg_en = 0;
			TipBuddy_SavedVars["pc_friend"].trg_np = 0;
			TipBuddy_SavedVars["pc_friend"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["pc_friend"]["txt_hth"] ) then
			TipBuddy_SavedVars["pc_friend"].txt_hth = 0;	
			TipBuddy_SavedVars["pc_friend"].txt_mna = 0;
			TipBuddy_SavedVars["pc_friend"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["pc_friend"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.1,
					["g"] = 0.22,
					["b"] = 0.35,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 1,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 0,
				["bff"] = 0,
				["cfc"] = 0,
				["gld"] = 1,
				["rac"] = 1,
				["rnk"] = 1,
				["trg"] = 0,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["pc_party"] ) then
		if ( not TipBuddy_SavedVars["pc_party"]["bgcolor"] ) then
			TipBuddy_SavedVars["pc_party"].bgcolor = { ["r"] = 0.07, ["g"] = 0.24, ["b"] = 0.19, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["pc_party"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["pc_party"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["pc_party"]["off"] ) then
			TipBuddy_SavedVars["pc_party"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["nam"] ) then
			TipBuddy_SavedVars["pc_party"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["cls"] ) then
			TipBuddy_SavedVars["pc_party"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["gld"] ) then
			TipBuddy_SavedVars["pc_party"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["fac"] ) then
			TipBuddy_SavedVars["pc_party"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["cfc"] ) then
			TipBuddy_SavedVars["pc_party"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["bff"] ) then
			TipBuddy_SavedVars["pc_party"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["dbf"] ) then
			TipBuddy_SavedVars["pc_party"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["xtr"] ) then
			TipBuddy_SavedVars["pc_party"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["rac"] ) then
			TipBuddy_SavedVars["pc_party"].rac = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["rnk"] ) then
			TipBuddy_SavedVars["pc_party"].rnk = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["trg"] ) then
			TipBuddy_SavedVars["pc_party"].trg = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_party"]["trg_pl"] ) then
			TipBuddy_SavedVars["pc_party"].trg_pl = 0;	
			TipBuddy_SavedVars["pc_party"].trg_en = 0;
			TipBuddy_SavedVars["pc_party"].trg_np = 0;
			TipBuddy_SavedVars["pc_party"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["pc_party"]["txt_hth"] ) then
			TipBuddy_SavedVars["pc_party"].txt_hth = 0;	
			TipBuddy_SavedVars["pc_party"].txt_mna = 0;
			TipBuddy_SavedVars["pc_party"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["pc_party"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.07,
					["g"] = 0.24,
					["b"] = 0.19,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 1,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 0,
				["bff"] = 1,
				["cfc"] = 0,
				["gld"] = 1,
				["rac"] = 0,
				["rnk"] = 1,
				["trg"] = 1,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["pc_enemy"] ) then
		if ( not TipBuddy_SavedVars["pc_enemy"]["bgcolor"] ) then
			TipBuddy_SavedVars["pc_enemy"].bgcolor = { ["r"] = 0.37, ["g"] = 0.12, ["b"] = 0.07, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["pc_enemy"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["pc_enemy"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["off"] ) then
			TipBuddy_SavedVars["pc_enemy"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["nam"] ) then
			TipBuddy_SavedVars["pc_enemy"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["cls"] ) then
			TipBuddy_SavedVars["pc_enemy"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["gld"] ) then
			TipBuddy_SavedVars["pc_enemy"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["fac"] ) then
			TipBuddy_SavedVars["pc_enemy"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["cfc"] ) then
			TipBuddy_SavedVars["pc_enemy"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["bff"] ) then
			TipBuddy_SavedVars["pc_enemy"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["dbf"] ) then
			TipBuddy_SavedVars["pc_enemy"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["xtr"] ) then
			TipBuddy_SavedVars["pc_enemy"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["rac"] ) then
			TipBuddy_SavedVars["pc_enemy"].rac = 0;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["rnk"] ) then
			TipBuddy_SavedVars["pc_enemy"].rnk = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["trg"] ) then
			TipBuddy_SavedVars["pc_enemy"].trg = 1;	
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["trg_pl"] ) then
			TipBuddy_SavedVars["pc_enemy"].trg_pl = 0;	
			TipBuddy_SavedVars["pc_enemy"].trg_en = 0;
			TipBuddy_SavedVars["pc_enemy"].trg_np = 0;
			TipBuddy_SavedVars["pc_enemy"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["pc_enemy"]["txt_hth"] ) then
			TipBuddy_SavedVars["pc_enemy"].txt_hth = 0;	
			TipBuddy_SavedVars["pc_enemy"].txt_mna = 0;
			TipBuddy_SavedVars["pc_enemy"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["pc_enemy"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.37,
					["g"] = 0.12,
					["b"] = 0.07,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 1,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 1,
				["bff"] = 1,
				["cfc"] = 0,
				["gld"] = 1,
				["rac"] = 1,
				["rnk"] = 1,
				["trg"] = 1,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["npc_friend"] ) then
		if ( not TipBuddy_SavedVars["npc_friend"]["bgcolor"] ) then
			TipBuddy_SavedVars["npc_friend"].bgcolor = { ["r"] = 0.26, ["g"] = 0.01, ["b"] = 0.44, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["npc_friend"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["npc_friend"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["off"] ) then
			TipBuddy_SavedVars["npc_friend"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["nam"] ) then
			TipBuddy_SavedVars["npc_friend"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["cls"] ) then
			TipBuddy_SavedVars["npc_friend"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["gld"] ) then
			TipBuddy_SavedVars["npc_friend"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["fac"] ) then
			TipBuddy_SavedVars["npc_friend"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["cfc"] ) then
			TipBuddy_SavedVars["npc_friend"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["bff"] ) then
			TipBuddy_SavedVars["npc_friend"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["dbf"] ) then
			TipBuddy_SavedVars["npc_friend"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["xtr"] ) then
			TipBuddy_SavedVars["npc_friend"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["trg"] ) then
			TipBuddy_SavedVars["npc_friend"].trg = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["trg_pl"] ) then
			TipBuddy_SavedVars["npc_friend"].trg_pl = 0;	
			TipBuddy_SavedVars["npc_friend"].trg_en = 0;
			TipBuddy_SavedVars["npc_friend"].trg_np = 0;
			TipBuddy_SavedVars["npc_friend"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["npc_friend"]["txt_hth"] ) then
			TipBuddy_SavedVars["npc_friend"].txt_hth = 0;	
			TipBuddy_SavedVars["npc_friend"].txt_mna = 0;
			TipBuddy_SavedVars["npc_friend"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["npc_friend"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.26,
					["g"] = 0.01,
					["b"] = 0.44,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},				
				["hth"] = 0,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 0,
				["fac"] = 0,
				["bff"] = 0,
				["cfc"] = 1,
				["gld"] = 1,
				["trg"] = 0,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["npc_neutral"] ) then
		if ( not TipBuddy_SavedVars["npc_neutral"]["bgcolor"] ) then
			TipBuddy_SavedVars["npc_neutral"].bgcolor = { ["r"] = 0.25, ["g"] = 0.22, ["b"] = 0.02, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["npc_neutral"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["npc_neutral"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["off"] ) then
			TipBuddy_SavedVars["npc_neutral"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["nam"] ) then
			TipBuddy_SavedVars["npc_neutral"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["cls"] ) then
			TipBuddy_SavedVars["npc_neutral"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["gld"] ) then
			TipBuddy_SavedVars["npc_neutral"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["fac"] ) then
			TipBuddy_SavedVars["npc_neutral"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["cfc"] ) then
			TipBuddy_SavedVars["npc_neutral"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["bff"] ) then
			TipBuddy_SavedVars["npc_neutral"].bff = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["dbf"] ) then
			TipBuddy_SavedVars["npc_neutral"].dbf = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["xtr"] ) then
			TipBuddy_SavedVars["npc_neutral"].xtr = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["trg"] ) then
			TipBuddy_SavedVars["npc_neutral"].trg = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["trg_pl"] ) then
			TipBuddy_SavedVars["npc_neutral"].trg_pl = 0;	
			TipBuddy_SavedVars["npc_neutral"].trg_en = 0;
			TipBuddy_SavedVars["npc_neutral"].trg_np = 0;
			TipBuddy_SavedVars["npc_neutral"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["npc_neutral"]["txt_hth"] ) then
			TipBuddy_SavedVars["npc_neutral"].txt_hth = 0;	
			TipBuddy_SavedVars["npc_neutral"].txt_mna = 0;
			TipBuddy_SavedVars["npc_neutral"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["npc_neutral"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.25,
					["g"] = 0.22,
					["b"] = 0.02,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 1,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 1,
				["bff"] = 1,
				["cfc"] = 1,
				["gld"] = 1,
				["trg"] = 1,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["npc_enemy"] ) then
		if ( not TipBuddy_SavedVars["npc_enemy"]["bgcolor"] ) then
			TipBuddy_SavedVars["npc_enemy"].bgcolor = { ["r"] = 0.35, ["g"] = 0.09, ["b"] = 0.13, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["npc_enemy"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["npc_enemy"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["off"] ) then
			TipBuddy_SavedVars["npc_enemy"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["nam"] ) then
			TipBuddy_SavedVars["npc_enemy"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["cls"] ) then
			TipBuddy_SavedVars["npc_enemy"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["gld"] ) then
			TipBuddy_SavedVars["npc_enemy"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["fac"] ) then
			TipBuddy_SavedVars["npc_enemy"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["cfc"] ) then
			TipBuddy_SavedVars["npc_enemy"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["bff"] ) then
			TipBuddy_SavedVars["npc_enemy"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["dbf"] ) then
			TipBuddy_SavedVars["npc_enemy"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["xtr"] ) then
			TipBuddy_SavedVars["npc_enemy"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["trg"] ) then
			TipBuddy_SavedVars["npc_enemy"].trg = 1;	
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["trg_pl"] ) then
			TipBuddy_SavedVars["npc_enemy"].trg_pl = 0;	
			TipBuddy_SavedVars["npc_enemy"].trg_en = 0;
			TipBuddy_SavedVars["npc_enemy"].trg_np = 0;
			TipBuddy_SavedVars["npc_enemy"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["npc_enemy"]["txt_hth"] ) then
			TipBuddy_SavedVars["npc_enemy"].txt_hth = 0;	
			TipBuddy_SavedVars["npc_enemy"].txt_mna = 0;
			TipBuddy_SavedVars["npc_enemy"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["npc_enemy"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.35,
					["g"] = 0.09,
					["b"] = 0.13,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 1,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 1,
				["bff"] = 1,
				["cfc"] = 1,
				["gld"] = 1,
				["trg"] = 1,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["pet_friend"] ) then
		if ( not TipBuddy_SavedVars["pet_friend"]["bgcolor"] ) then
			TipBuddy_SavedVars["pet_friend"].bgcolor = { ["r"] = 0.14, ["g"] = 0.29, ["b"] = 0.24, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["pet_friend"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["pet_friend"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["off"] ) then
			TipBuddy_SavedVars["pet_friend"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["nam"] ) then
			TipBuddy_SavedVars["pet_friend"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["cls"] ) then
			TipBuddy_SavedVars["pet_friend"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["gld"] ) then
			TipBuddy_SavedVars["pet_friend"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["fac"] ) then
			TipBuddy_SavedVars["pet_friend"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["cfc"] ) then
			TipBuddy_SavedVars["pet_friend"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["bff"] ) then
			TipBuddy_SavedVars["pet_friend"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["dbf"] ) then
			TipBuddy_SavedVars["pet_friend"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["xtr"] ) then
			TipBuddy_SavedVars["pet_friend"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["trg_pl"] ) then
			TipBuddy_SavedVars["pet_friend"].trg_pl = 0;	
			TipBuddy_SavedVars["pet_friend"].trg_en = 0;
			TipBuddy_SavedVars["pet_friend"].trg_np = 0;
			TipBuddy_SavedVars["pet_friend"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["pet_friend"]["txt_hth"] ) then
			TipBuddy_SavedVars["pet_friend"].txt_hth = 0;	
			TipBuddy_SavedVars["pet_friend"].txt_mna = 0;
			TipBuddy_SavedVars["pet_friend"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["pet_friend"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.14,
					["g"] = 0.29,
					["b"] = 0.24,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 0,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 1,
				["bff"] = 1,
				["cfc"] = 0,
				["gld"] = 1,
				["trg"] = 1,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["pet_enemy"] ) then
		if ( not TipBuddy_SavedVars["pet_enemy"]["bgcolor"] ) then
			TipBuddy_SavedVars["pet_enemy"].bgcolor = { ["r"] = 0.29, ["g"] = 0.16, ["b"] = 0.05, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["pet_enemy"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["pet_enemy"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["off"] ) then
			TipBuddy_SavedVars["pet_enemy"].off = 0;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["nam"] ) then
			TipBuddy_SavedVars["pet_enemy"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["cls"] ) then
			TipBuddy_SavedVars["pet_enemy"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["gld"] ) then
			TipBuddy_SavedVars["pet_enemy"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["fac"] ) then
			TipBuddy_SavedVars["pet_enemy"].fac = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["cfc"] ) then
			TipBuddy_SavedVars["pet_enemy"].cfc = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["bff"] ) then
			TipBuddy_SavedVars["pet_enemy"].bff = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["dbf"] ) then
			TipBuddy_SavedVars["pet_enemy"].dbf = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["xtr"] ) then
			TipBuddy_SavedVars["pet_enemy"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["trg"] ) then
			TipBuddy_SavedVars["pet_enemy"].trg = 1;	
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["trg_pl"] ) then
			TipBuddy_SavedVars["pet_enemy"].trg_pl = 0;	
			TipBuddy_SavedVars["pet_enemy"].trg_en = 0;
			TipBuddy_SavedVars["pet_enemy"].trg_np = 0;
			TipBuddy_SavedVars["pet_enemy"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["pet_enemy"]["txt_hth"] ) then
			TipBuddy_SavedVars["pet_enemy"].txt_hth = 0;	
			TipBuddy_SavedVars["pet_enemy"].txt_mna = 0;
			TipBuddy_SavedVars["pet_enemy"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["pet_enemy"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.29,
					["g"] = 0.16,
					["b"] = 0.05,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 1,
				["xtr"] = 0,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 1,
				["bff"] = 1,
				["cfc"] = 1,
				["gld"] = 1,
				["trg"] = 1,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["corpse"] ) then
		if ( not TipBuddy_SavedVars["corpse"]["bgcolor"] ) then
			TipBuddy_SavedVars["corpse"].bgcolor = { ["r"] = 0.09, ["g"] = 0.09, ["b"] = 0.19, ["a"] = 0.78, };	
		end
		if ( not TipBuddy_SavedVars["corpse"]["bgbcolor"] ) then
			TipBuddy_SavedVars["corpse"].bgcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };	
		end
		if ( not TipBuddy_SavedVars["corpse"]["off"] ) then
			TipBuddy_SavedVars["corpse"].off = 0;	
		end
		--/script TipBuddy_SavedVars["corpse"].off = 2;
		--/script TipBuddy_SavedVars["corpse"].off = 0;
		if ( not TipBuddy_SavedVars["corpse"]["nam"] ) then
			TipBuddy_SavedVars["corpse"].nam = 1;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["cls"] ) then
			TipBuddy_SavedVars["corpse"].cls = 1;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["gld"] ) then
			TipBuddy_SavedVars["corpse"].gld = 1;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["fac"] ) then
			TipBuddy_SavedVars["corpse"].fac = 0;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["cfc"] ) then
			TipBuddy_SavedVars["corpse"].cfc = 0;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["bff"] ) then
			TipBuddy_SavedVars["corpse"].bff = 0;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["dbf"] ) then
			TipBuddy_SavedVars["corpse"].dbf = 0;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["xtr"] ) then
			TipBuddy_SavedVars["corpse"].xtr = 1;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["trg"] ) then
			TipBuddy_SavedVars["corpse"].trg = 0;	
		end
		if ( not TipBuddy_SavedVars["corpse"]["trg_pl"] ) then
			TipBuddy_SavedVars["corpse"].trg_pl = 0;	
			TipBuddy_SavedVars["corpse"].trg_en = 0;
			TipBuddy_SavedVars["corpse"].trg_np = 0;
			TipBuddy_SavedVars["corpse"].trg_pa = 0;
		end
		if ( not TipBuddy_SavedVars["corpse"]["txt_hth"] ) then
			TipBuddy_SavedVars["corpse"].txt_hth = 0;	
			TipBuddy_SavedVars["corpse"].txt_mna = 0;
			TipBuddy_SavedVars["corpse"].txt_pvp = 0;
		end
	else
		TipBuddy_SavedVars["corpse"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.09,
					["g"] = 0.09,
					["b"] = 0.19,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
				["hth"] = 0,
				["xtr"] = 1,
				["off"] = 0,
				["cls"] = 1,
				["fac"] = 1,
				["bff"] = 0,
				["cfc"] = 1,
				["gld"] = 1,
				["trg"] = 0,
				["trg_pl"] = 0,
				["trg_en"] = 0,
				["trg_np"] = 0,
				["trg_pa"] = 0,
				["txt_hth"] = 0,
				["txt_mna"] = 0,
				["txt_pvp"] = 0,
				};
	end

	if ( TipBuddy_SavedVars["guild"] ) then
		if ( not TipBuddy_SavedVars["guild"]["bgcolor"] ) then
			TipBuddy_SavedVars["guild"].bgcolor = { ["r"] = 0.25, ["g"] = 0.05, ["b"] = 0.29, ["a"] = 0.78, };	
		end
		if ( TipBuddy_SavedVars["guild"]["bgbcolor"] == nil ) then
			TipBuddy_SavedVars["guild"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
	else
		TipBuddy_SavedVars["guild"] = {
				["bgcolor"] = {
					["a"] = 0.78,
					["r"] = 0.25,
					["g"] = 0.05,
					["b"] = 0.29,
				},
				["bgbcolor"] = {
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.9,
				},
			};
	end

	if ( TipBuddy_SavedVars["general"] ) then
		if ( not TipBuddy_SavedVars["general"]["bgcolor"] ) then
			TipBuddy_SavedVars["general"].bgcolor = { ["r"] = 0.1, ["g"] = 0.1, ["b"] = 0.1, ["a"] = 0.78, };	
		end
		if ( not TipBuddy_SavedVars["general"]["bgbcolor"] ) then
			TipBuddy_SavedVars["general"].bgbcolor = { ["r"] = 0.8, ["g"] = 0.8, ["b"] = 0.9, ["a"] = 1, };
		end
		if ( not TipBuddy_SavedVars["general"]["hidedefault"] ) then
			TipBuddy_SavedVars["general"].hidedefault = 1;	
		end
		if ( not TipBuddy_SavedVars["general"]["cursorpos"] ) then
			TipBuddy_SavedVars["general"].cursorpos = "Top";	
		end
		if ( not TipBuddy_SavedVars["general"]["fadetime"] ) then
			TipBuddy_SavedVars["general"].fadetime = 0.3;	
		end
		if ( not TipBuddy_SavedVars["general"]["scalemod"] ) then
			TipBuddy_SavedVars["general"].scalemod = 4;	
		end
		if ( not TipBuddy_SavedVars["general"]["framepos_L"] ) then
			TipBuddy_SavedVars["general"].framepos_L = 0;	
		end
		if ( not TipBuddy_SavedVars["general"]["framepos_T"] ) then
			TipBuddy_SavedVars["general"].framepos_T = 0;	
		end
		if ( not TipBuddy_SavedVars["general"]["delaytime"] ) then
			TipBuddy_SavedVars["general"].delaytime = 0.1;	
		end
		if ( not TipBuddy_SavedVars["general"]["anchored"] ) then
			TipBuddy_SavedVars["general"].anchored = 0;	
		end
		if ( not TipBuddy_SavedVars["general"]["anchor_pos"] ) then
			TipBuddy_SavedVars["general"].anchor_pos = "Top Right";	
		end
		if ( not TipBuddy_SavedVars["general"]["anchor_vis"] ) then
			TipBuddy_SavedVars["general"].anchor_vis = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["rankname"] ) then
			TipBuddy_SavedVars["general"].rankname = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["classcolor"] ) then
			TipBuddy_SavedVars["general"].classcolor = 1;
		end
		if ( not TipBuddy_SavedVars["general"]["gtt_fade"] ) then
			TipBuddy_SavedVars["general"].gtt_fade = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["nonunit_anchor"] ) then
			TipBuddy_SavedVars["general"].nonunit_anchor = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["offset_x"] ) then
			TipBuddy_SavedVars["general"].offset_x = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["offset_y"] ) then
			TipBuddy_SavedVars["general"].offset_y = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["gtt_scale"] ) then
			TipBuddy_SavedVars["general"].gtt_scale = (GetCVar("uiscale") + 0);
		end
		if ( not TipBuddy_SavedVars["general"]["diff_bg"] ) then
			TipBuddy_SavedVars["general"].diff_bg = 0;
		end
		if ( not TipBuddy_SavedVars["general"]["reposmods"] ) then
			TipBuddy_SavedVars["general"].reposmods = 1;
		end
	else
		TipBuddy_SavedVars["general"] = {
			["bgcolor"] = {
				["a"] = 0.78,
				["r"] = 0.1,
				["g"] = 0.1,
				["b"] = 0.1,
			},
			["bgbcolor"] = {
				["a"] = 1,
				["r"] = 0.8,
				["g"] = 0.8,
				["b"] = 0.9,
			},
			["hidedefault"] = 1,
			["cursorpos"] = "Top",
			["fadetime"] = 0.3,
			["scalemod"] = 3,
			["framepos_L"] = 0,
			["framepos_T"] = 0,
			["delaytime"] = 0.1,
			["anchored"] = 0,
			["anchor_pos"] = "Top Right",
			["anchor_vis"] = 0,
			["rankname"] = 0,
			["classcolor"] = 1,
			["gtt_fade"] = 0,
			["nonunit_anchor"] = 0,
			["offset_x"] = 0,
			["offset_y"] = 0,
			["gtt_scale"] = (GetCVar("uiscale") + 0),
			["diff_bg"] = 0,
			["reposmods"] = 1,
		};
	end
	
	if ( not TipBuddy_SavedVars["textcolors"] ) then
		TipBuddy_SavedVars["textcolors"] = {
				nam_hos = {
					["a"] = 1,
					["r"] = 0.9,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				nam_neu = {			
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.9,
					["b"] = 0,
				},
				nam_fri = {					
					["a"] = 1,
					["r"] = 0.1,
					["g"] = 0.7,
					["b"] = 1,
				},
				nam_cau = {			
					["a"] = 1,
					["r"] = 0.9,
					["g"] = 0.4,
					["b"] = 0,
				},
				nam_pvp = {					
					["a"] = 1,
					["r"] = 0.15,
					["g"] = 0.9,
					["b"] = 0,
				},
				nam_tpp = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				nam_tpo = {					
					["a"] = 1,
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},

				gld_hos = {
					["a"] = 1,
					["r"] = 0.7,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				gld_neu = {			
					["a"] = 1,
					["r"] = 0.9,
					["g"] = 0.7,
					["b"] = 0,
				},
				gld_fri = {					
					["a"] = 1,
					["r"] = 0,
					["g"] = 0.5,
					["b"] = 0.8,
				},
				gld_cau = {			
					["a"] = 1,
					["r"] = 0.65,
					["g"] = 0.4,
					["b"] = 0.0,
				},
				gld_pvp = {					
					["a"] = 1,
					["r"] = 0.05,
					["g"] = 0.7,
					["b"] = 0,
				},
				gld_tpp = {					
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0,
					["b"] = 0,
				},
				gld_tpo = {					
					["a"] = 1,
					["r"] = 0.45,
					["g"] = 0.45,
					["b"] = 0.45,
				},
				gld_mte = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.2,
					["b"] = 1,
				},

				lvl_imp = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				lvl_vdf = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0.25,
				},
				lvl_dif = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				lvl_stn = {					
					["a"] = 1,
					["r"] = 0.25,
					["g"] = 0.75,
					["b"] = 0.25,
				},
				lvl_trv = {					
					["a"] = 1,
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				lvl_sfc = {					
					["a"] = 1,
					["r"] = 0.85,
					["g"] = 0.85,
					["b"] = 0.85,
				},

				cls_mag = {					
					["a"] = 1,
					["r"] = 0.5,
					["g"] = 1,
					["b"] = 1,
				},
				cls_wlk = {					
					["a"] = 1,
					["r"] = 0.5,
					["g"] = 0.26,
					["b"] = 0.9,
				},
				cls_pri = {					
					["a"] = 1,
					["r"] = 0.8,
					["g"] = 0.8,
					["b"] = 0.8,
				},
				cls_drd = {					
					["a"] = 1,
					["r"] = 0.9,
					["g"] = 0.55,
					["b"] = 0.1,
				},
				cls_shm = {					
					["a"] = 1,
					["r"] = 0.9,
					["g"] = 0.4,
					["b"] = 0.65,
				},
				cls_pal = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.4,
					["b"] = 0.58,
				},
				cls_rog = {					
					["a"] = 1,
					["r"] = 0.95,
					["g"] = 0.9,
					["b"] = 0.1,
				},
				cls_hun = {					
					["a"] = 0.9,
					["r"] = 0.1,
					["g"] = 0.85,
					["b"] = 0.1,
				},
				cls_war = {					
					["a"] = 1,
					["r"] = 0.7,
					["g"] = 0.5,
					["b"] = 0.25,
				},
				cls_oth = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},

				elite_rar = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				elite_bss = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},

				other_crp = {					
					["a"] = 1,
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				other_unk = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				other_rac = {					
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				other_ctf = {					
					["a"] = 1,
					["r"] = 0.85,
					["g"] = 0.85,
					["b"] = 0.85,
				},
			};
	end
end

function TipBuddy_ResetOffState()
	TipBuddy_SavedVars["pc_friend"].off = 0;
	TipBuddy_SavedVars["pc_enemy"].off = 0;
	TipBuddy_SavedVars["pc_party"].off = 0;
	TipBuddy_SavedVars["pet_friend"].off = 0;
	TipBuddy_SavedVars["pet_enemy"].off = 0;
	TipBuddy_SavedVars["npc_friend"].off = 0;
	TipBuddy_SavedVars["npc_enemy"].off = 0;
	TipBuddy_SavedVars["corpse"].off = 0;
end

function TipBuddy_ResetXtraState()
	TipBuddy_SavedVars["pc_friend"].xtr = 0;
	TipBuddy_SavedVars["pc_enemy"].xtr = 0;
	TipBuddy_SavedVars["pc_party"].xtr = 0;
	TipBuddy_SavedVars["pet_friend"].xtr = 0;
	TipBuddy_SavedVars["pet_enemy"].xtr = 0;
	TipBuddy_SavedVars["npc_friend"].xtr = 0;
	TipBuddy_SavedVars["npc_enemy"].xtr = 0;
	TipBuddy_SavedVars["npc_neutral"].xtr = 0;
end

