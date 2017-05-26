--Russian--( by Maus )--------------------------------------------------
------------------------------------------------------------------------

if (GetLocale() == "ruRU") then
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
	TB_mage = "Маг";
	TB_warlock = "Чернокнижник";
	TB_priest = "Жрец";
	TB_druid = "Друид";
	TB_shaman = "Шаман";
	TB_paladin = "Паладин";
	TB_rogue = "Разбойник";
	TB_hunter = "Охотник";
	TB_warrior = "Воин";
	TB_loaded = "Загружен";
	--TB_pvp = "PvP";
	TB_notspecified = "Не определено";
	TB_elite = "элита";
	TB_worldboss = "босс";
	TB_rare = "редкое";
	TB_rareelite = "редкая элита";
	--TB_player = "Player";
	--TB_corpse = "Corpse";
	--TB_civilian = "Civilian";
	TB_minion = "Прислужник";
	TB_creation = "Создание";
	TB_guardian = "Страж";
	TB_pet = "Питомец";
	TB_skinnable = "Можно снять шкуру";
	TB_creature = "Существо";
	TB_resurrectable = "Можно воскресить";
	TB_tapped = "чужая цель";
	
	
	-- Menu Button
	MENU_BUTTON_TOOLTIP = "Открыть меню\nнастроек TipBuddy.";
	TB_TIPBUDDYANCHOR_TOOLTIP = "Зажав ЛКМ вы можете свободно перемещать якорь.\nНажав ПКМ, вы можете выбрать направление отображения экрана подсказки.";
	TB_TIPBUDDYANCHORCLOSE_TOOLTIP = "Нажмите на эту кнопку, чтобы СКРЫТЬ ЯкорьTipBuddy.\n\n"..TB_GRY_TXT.."(Чтобы вновь отобразить это окно, откройте меню настроек и нажмите на кнопку \"Показать ЯкорьTipBuddy\", которая в разделе \"Расположение\".)";
	
	
	-- Checkboxes
	TB_PC_FRIEND = "Дружественный игрок";
	TB_PC_PARTY = "Дружественный игрок в группе";
	TB_PC_ENEMY = "Враждебный игрок";
	TB_NPC_FRIEND = "Дружественный НПС";
	TB_NPC_NEUTRAL = "Нейтральный НПС";
	TB_NPC_ENEMY = "Враждебный НПС";
	TB_PET_FRIEND = "Дружественный питомец";
	TB_PET_ENEMY = "Враждебный питомец";
	TB_CORPSE = "Труп";
	TB_OPTION_COMPACTONLY = TB_YLW_TXT.."(Только компактный режим)\n";
	TB_OPTION_DEFAULTONLY = TB_YLW_TXT.."(Только стандартный режим)\n";
	TB_OPTION_GLD = "Гильдия";
	TB_OPTION_GLD_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Название Гильдии";
	TB_OPTION_GLD_TITLE = "Титул";
	TB_OPTION_GLD_TITLE_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Титул "..TB_GRY_TXT.."(если доступно)";
	TB_OPTION_HTH = "Полоса здоровья";
	TB_OPTION_HTH_TOOLTIP = TB_OPTION_COMPACTONLY..TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Полоса Здоровья\nПолоса Маны "..TB_GRY_TXT.."(если доступно)";
	TB_OPTION_RAC = "Раса";
	TB_OPTION_RAC_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Раса\n"..TB_GRY_TXT.." (\"Уровень--Класс\")";
	TB_OPTION_CFC = "Фракция";
	TB_OPTION_CFC_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Фракция\n"..TB_GRY_TXT.." (Оргриммар, Штормград и т.п. - если доступно)";
	TB_OPTION_CLS = "Уровень -- Класс";
	TB_OPTION_CLS_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Уровень\n---\nКласс";
	TB_OPTION_CLS_TYPE = "Уровень -- Класс/Тип";
	TB_OPTION_CLS_TYPE_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Уровень\n---\nКласс\n"..TB_WHT_TXT.."Вид Существа\n"..TB_DGY_TXT.."(\"Медведь\", \"Паук\")\n"..TB_WHT_TXT.."Тип Существа\n"..TB_DGY_TXT.."(\"Гуманоид\", \"Зверь\")\n"..TB_GRY_TXT.."(если доступно)";
	
	
	-- resists aren't used  :(
	TB_OPTION_FAC = "Фракция/PvP флаг";
	TB_OPTION_FAC_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Фракция и ПвП флаг. Отобразит значок фракции по умолчанию либо, если включена необходимая опция, текстом"..TB_GRY_TXT.." (если включен ПвП флаг)";
	TB_OPTION_BFF = "Бафф/Дебафф";
	TB_OPTION_BFF_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Положительные эффекты\n"..TB_WHT_TXT.."Отрицательные эффекты";
	TB_OPTION_XTR = "Дополнительно";
	TB_OPTION_XTR_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Дополнительная информация в окне подсказки другого аддона изменяющего окно подсказок";
	TB_OPTION_RNK = "Значок Ранга";
	TB_OPTION_RNK_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Значок ранга слева от имени"..TB_GRY_TXT.." (если таков имеется)";
	TB_OPTION_TRG = "Цель цели";
	TB_OPTION_TRG_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Текущая выбранная цель"..TB_GRY_TXT.."\n(Цель цели имеет следующую цветовую схему в имени:\n"..TB_WHT_TXT.."БЕЛЫЙ"..TB_GRY_TXT..": Целью являетесь вы\n"..TB_GRN_TXT.."ЗЕЛЕНЫЙ"..TB_GRY_TXT..": Целью является дружественный игрок\n"..TB_BLE_TXT.."СИНИЙ"..TB_GRY_TXT..": Целью является не вражески настроенный НПС\n"..TB_RED_TXT.."КРАСНЫЙ"..TB_GRY_TXT..": Целью является враг\n"..TB_PNK_TXT.."ФИОЛЕТОВЫЙ"..TB_GRY_TXT..": Целью является член вашей группы)\n";
	TB_OPTION_RNM = "Ранг текстом";
	TB_OPTION_RNM_TOOLTIP = TB_NML_TXT.."Будет отображено:\n"..TB_WHT_TXT.."Название ранга, которое отображается перед именем"..TB_GRY_TXT.." (если таков имеется)";
	
	
	TB_TEXTVARS_HELP_1 =	"$nl\n$nm\n$gu\n$gt\n$lv\n$cl\n$rc\n$fa\n$cf\n$hc\n$hm\n$hp\n$mc\n$mm\n$mp\n$ns\n$nt\n$nf\n$tp\n$re\n$pr\n$pn\n$pv\n$ml\n$df\n$tn\n   \n   \nColoring:\n@Crn\n@Crg\n@Cdf\n@Ccl\n@Ctt\n@Ccp\n@Cor\n@Cwt\n@Cgy\n@Crd\n@Cgn\n@Cyw\n@Cbl\n@Cpk"
	TB_TEXTVARS_HELP_2 =	"Новая строка (\\n тоже работает)\nИмя\nГильдия или Титул\nРанг в гильдии\nУровень\nКласс\nРаса (только игрок)\nФракция (только игрок)\nФракция города (только НПС)\nТекущее здоровье (действительное)\nМаксимальное здоровье (действительное)\nЗдоровье в процентах\nТекущая мана (действительное)\nМаксимальная мана (действительное)\nМана в процентах\nКлассификация НПС (Элита, Босс и т.п.)\nТип НПС (Зверь, Гуманоид и т.п.)\nВид НПС (Медведь, Кошка и т.п.)\nНедоступно (когда существо недоступно вам)\nРеакция (Враждебная, Нейтральная)\nПвП Ранг\nНомер ПвП Ранга\nПвП Флаг (ПвП или нет его)\nПолоса маны (Мана, Энергия, Ярость и т.п.)\nСложность (Сложно, Легко и т.п.)\nИмя цели цели\n   \n   \n   \nЦвет реакции (имя)\nЦвет реакции (гильдия)\nЦвет сложности\nЦвет класса\nЦель цели (только если взята цель)\nЦвет трупа (только для трупа)\nОранжевый\nБелый\nСерый\nКрасный\nЗеленый\nЖелтый\nСиний\nРозовый"
	
	
	TB_OPTION_CURSOR = "TipBuddy над курсором";
	TB_OPTION_CURSOR_TOOLTIP = "Включить расположение TipBuddy над курсором мышки, а не сбоку";
	TB_OPTION_SCALE = "Масштаб компактного режима";
	TB_OPTION_SCALE_TOOLTIP = TB_OPTION_COMPACTONLY..TB_NML_TXT.."Изменить масштаб окна подсказок "..TB_WHT_TXT.."компактного режима";
	TB_OPTION_GTTSCALE = "Масштаб стандартного окна подсказок";
	TB_OPTION_GTTSCALE_TOOLTIP = TB_OPTION_DEFAULTONLY..TB_NML_TXT.."Изменить масштаб окна подсказок "..TB_WHT_TXT.."стандартного режима";
	TB_OPTION_ANCHORED = "Советы по юниту на якоре";
	TB_OPTION_ANCHORED_TOOLTIP = "Включите, чтобы закрепить советы по юниту на ЯкореTipBuddy. Подсказки не юнита (например, кнопки), не страдают от этого и имеют свои собственные настройки в выпадающем меню.\n\nЧтобы отобразить ЯкорьTipBuddy после того как вы скрыли его, нажмите на кнопку \"Показать ЯкорьTipBuddy\".";
	TB_OPTION_DELAY = "Время задержки подсказки";
	TB_OPTION_DELAY_TOOLTIP = "Время, через которое фрейм начнет исчезать после убирания с него курсора.";
	TB_OPTION_FADETIME = "Время исчезновения подсказки";
	TB_OPTION_FADETIME_TOOLTIP = "Время, которое требуется для исчезновения TipBuddy. (исчезновение начнется после того, как пройдет время \"задержки\")";
	TB_OPTION_COLORBUTTON_TOOLTIP = "Выберите цвет фона окна подсказок для данного типа юнитов";
	TB_OPTION_COLORBUTTON_BOR_TOOLTIP = "Выберите цвет границы окна подсказок для данного типа юнитов";
	TB_OPTION_SAMEGUILD = "Цвет фона гильдии";
	TB_OPTION_SAMEGUILD_TOOLTIP = "Выберите цвет фона окна подсказок для отображения игроков, которые являются членами вашей гильдии";
	TB_OPTION_SAMEGUILDB = "Цвет границы гильдии";
	TB_OPTION_SAMEGUILDB_TOOLTIP = "Выберите цвет границы окна подсказок для отображения игроков, которые являются членами вашей гильдии";
	TB_OPTION_NONUNITBG = "Цвет фона не юнитов";
	TB_OPTION_NONUNITBG_TOOLTIP = "Выберите цвет фона окна подсказок для отображения всего, что не является юнитом."..TB_GRY_TXT.."\n(кнопки, иконки, предметы, заклинания и т.п.)";
	TB_OPTION_NONUNITBGB = "Цвет границы не юнитов";
	TB_OPTION_NONUNITBGB_TOOLTIP = "Выберите цвет границы окна подсказок для отображения всего, что не является юнитом."..TB_GRY_TXT.."\n(кнопки, иконки, предметы, заклинания и т.п.)";
	TB_OPTION_CLASSCOLOR = "Цветной текст класса";
	TB_OPTION_CLASSCOLOR_TOOLTIP = "Включив данную опцию, текст указывающий класс будет цветным под стать классу.";
	TB_OPTION_FADEDEFAULT = "Затухание окна подсказок";
	TB_OPTION_FADEDEFAULT_TOOLTIP = "Включив данную опцию, окно подсказок по умолчанию будет затухать вместо того, чтобы сразу исчезнуть.";
	TB_OPTION_BLIZZARDDEFAULT = "Blizzard стиль";
	TB_OPTION_BLIZZARDDEFAULT_TOOLTIP = "Включив данную опцию, экран подсказок будет выполнен в стилистике от Blizzard, а не использовать формат и расцветку от TipBuddy."..TB_GRY_TXT.."\n(Но все также используются цвет фона, бафы, ПвП значок и иконка ранга)";
	TB_OPTION_REPOSITIONMODS = "Подсказки на экране";
	TB_OPTION_REPOSITIONMODS_TOOLTIP = "Включив данную настройку, сместит все ваши всплывающие подсказки в сторону от экрана. (включая другие моды)";
	TB_OPTION_UBERTIPANCH = "Якорь подсказок не юнитов";
	TB_OPTION_UBERTIPANCH_TOOLTIP = "Включив данную настройку, все не юнитные подсказки (кнопки и т.п.) будут в ЯкореTipBuddy.\n\nЕсли выбрано \"Использовать ЯкорьTipBuddy\", то все подсказки будут автоматически в ЯкореTipBuddy";
	TB_OPTION_DIFFBACKGROUND = "Сложность как фон"
	TB_OPTION_DIFFBACKGROUND_TOOLTIP = "Включив данную опцию, фон подсказок будет окрашиваться в цвет, выставленный вами для сложности юнита."
	
	
	TB_OPTION_NONUNITPOS_TOOLTIP = "Выберете, к какому якорю хотите привязать ваши не юнитные подсказки";
	TB_OPTION_CURSORPOS_TOOLTIP = "Экран подсказки будет закреплен за курсором мышки";
	TB_OPTION_COLORTEXTBUTTON_TOOLTIP = "Меню настроек по установке цвета для текста подсказок";
	TB_OPTION_STYLEMODE_TOOLTIP = "Выберете стиль подсказок для использования данного типа юнита";
	
	
	TB_OPTION_BORDER_TOOLTIP = "Выберете, как вы желаете окрасить ГРАНИЦЫ экрана подсказок";
	TB_OPTION_BACKDROP_TOOLTIP = "Выберете, как вы желаете окрасить ФОН экрана подсказок";
	
	
	TB_OPTION_TRG_PL = "Дружественные игроки";
	TB_OPTION_TRG_PL_TOOLTIP = "";
	TB_OPTION_TRG_EN = "Враги";
	TB_OPTION_TRG_EN_TOOLTIP = "";
	TB_OPTION_TRG_NP = "Невраждебные НПС";
	TB_OPTION_TRG_NP_TOOLTIP = "";
	TB_OPTION_TRG_PA = "Члены группы";
	TB_OPTION_TRG_PA_TOOLTIP = "";
	TB_OPTION_TRG_2L = "Отдельная строка";
	TB_OPTION_TRG_2L_TOOLTIP = "Выберете, чтобы показать цель юнита в отдельной строке от его имени";
	
	
	TB_RESETVARS_DIALOG = "Вы уверены, что хотите сбросить все свои настройки?";
	
	
	TipBuddy_OptionsFrame_Sliders = {
		{ text = TB_OPTION_SCALE, type = "general", var = "scalemod", minValue = 0, maxValue = 6, valueStep = 1, tooltipText = TB_OPTION_SCALE_TOOLTIP},
		{ text = TB_OPTION_DELAY, type = "general", var = "delaytime", minValue = 0.0, maxValue = 4.0, valueStep = 0.1, tooltipText = TB_OPTION_DELAY_TOOLTIP},
		{ text = TB_OPTION_FADETIME, type = "general", var = "fadetime", minValue = 0.0, maxValue = 4.0, valueStep = 0.1, tooltipText = TB_OPTION_FADETIME_TOOLTIP},
		{ text = "Смещение по X", type = "general", var = "offset_x", minValue = -60, maxValue = 60, valueStep = 1, tooltipText = "Смещение вашего окна подсказки, которое будет отображаться по горизонтальной оси относительно курсора"},
		{ text = "Смещение по Y", type = "general", var = "offset_y", minValue = -60, maxValue = 60, valueStep = 1, tooltipText = "Смещение вашего окна подсказки, которое будет отображаться по вертикальной оси относительно курсора"},
		{ text = TB_OPTION_GTTSCALE, type = "general", var = "gtt_scale", minValue = 0.5, maxValue = 1.5, valueStep = 0.05, tooltipText = TB_OPTION_GTTSCALE_TOOLTIP},
	};


	TipBuddy_ColorPicker_Buttons_Text = {

		{ text = "Враждебный", frame = "TipBuddy_OptionsFrame_ColorPicker_Text1", type = "textcolors", var = "nam_hos", tooltipText = ""},
		{ text = "Нейтральный", frame = "TipBuddy_OptionsFrame_ColorPicker_Text2", type = "textcolors", var = "nam_neu", tooltipText = ""},
		{ text = "Дружелюбный", frame = "TipBuddy_OptionsFrame_ColorPicker_Text3", type = "textcolors", var = "nam_fri", tooltipText = ""},
		{ text = "Осторожность", frame = "TipBuddy_OptionsFrame_ColorPicker_Text4", type = "textcolors", var = "nam_cau", tooltipText = ""},
		{ text = "Дружелюбный (ПвП)", frame = "TipBuddy_OptionsFrame_ColorPicker_Text5", type = "textcolors", var = "nam_pvp", tooltipText = ""},
		{ text = "Доступен Вам", frame = "TipBuddy_OptionsFrame_ColorPicker_Text6", type = "textcolors", var = "nam_tpp", tooltipText = ""},
		{ text = "Доступен другим", frame = "TipBuddy_OptionsFrame_ColorPicker_Text7", type = "textcolors", var = "nam_tpo", tooltipText = ""},

		{ text = "Враждебный", frame = "TipBuddy_OptionsFrame_ColorPicker_Text8", type = "textcolors", var = "gld_hos", tooltipText = ""},
		{ text = "Нейтральный", frame = "TipBuddy_OptionsFrame_ColorPicker_Text9", type = "textcolors", var = "gld_neu", tooltipText = ""},
		{ text = "Дружелюбный", frame = "TipBuddy_OptionsFrame_ColorPicker_Text10", type = "textcolors", var = "gld_fri", tooltipText = ""},
		{ text = "Осторожность", frame = "TipBuddy_OptionsFrame_ColorPicker_Text11", type = "textcolors", var = "gld_cau", tooltipText = ""},
		{ text = "Дружелюбный (ПвП)", frame = "TipBuddy_OptionsFrame_ColorPicker_Text12", type = "textcolors", var = "gld_pvp", tooltipText = ""},
		{ text = "Доступен Вам", frame = "TipBuddy_OptionsFrame_ColorPicker_Text13", type = "textcolors", var = "gld_tpp", tooltipText = ""},
		{ text = "Доступен другим", frame = "TipBuddy_OptionsFrame_ColorPicker_Text14", type = "textcolors", var = "gld_tpo", tooltipText = ""},
		{ text = "Гильд Мастер", frame = "TipBuddy_OptionsFrame_ColorPicker_Text15", type = "textcolors", var = "gld_mte", tooltipText = ""},

		{ text = "Невозможно",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text16", type = "textcolors", var = "lvl_imp", tooltipText = ""},
		{ text = "Очень сложно",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text17", type = "textcolors", var = "lvl_vdf", tooltipText = ""},
		{ text = "Сложно",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text18", type = "textcolors", var = "lvl_dif", tooltipText = ""},
		{ text = "Стандарт",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text19", type = "textcolors", var = "lvl_stn", tooltipText = ""},
		{ text = "Несложно",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text20", type = "textcolors", var = "lvl_trv", tooltipText = ""},
		{ text = "Та же фракция",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text21", type = "textcolors", var = "lvl_sfc", tooltipText = ""},

		{ text = "Маг",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text22", type = "textcolors", var = "cls_mag", tooltipText = ""},
		{ text = "Чернокнижник",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text23", type = "textcolors", var = "cls_wlk", tooltipText = ""},
		{ text = "Жрец",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text24", type = "textcolors", var = "cls_pri", tooltipText = ""},
		{ text = "Друид",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text25", type = "textcolors", var = "cls_drd", tooltipText = ""},
		{ text = "Шаман",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text26", type = "textcolors", var = "cls_shm", tooltipText = ""},
		{ text = "Паладин",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text27", type = "textcolors", var = "cls_pal", tooltipText = ""},
		{ text = "Разбойник",		frame = "TipBuddy_OptionsFrame_ColorPicker_Text28", type = "textcolors", var = "cls_rog", tooltipText = ""},
		{ text = "Охотник",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text29", type = "textcolors", var = "cls_hun", tooltipText = ""},
		{ text = "Воин",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text30", type = "textcolors", var = "cls_war", tooltipText = ""},
		{ text = "Другой класс",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text31", type = "textcolors", var = "cls_oth", tooltipText = ""},

		{ text = "Редкий (Текст)",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text32", type = "textcolors", var = "elite_rar", tooltipText = ""},
		{ text = "Босс (Текст)",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text33", type = "textcolors", var = "elite_bss", tooltipText = ""},

		{ text = "Труп (Текст)",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text34", type = "textcolors", var = "other_crp", tooltipText = ""},
		{ text = "Другое (Текст)",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text35", type = "textcolors", var = "other_unk", tooltipText = ""},
		{ text = "Раса (Текст)",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text36", type = "textcolors", var = "other_rac", tooltipText = ""},
		{ text = "Фракция города",	frame = "TipBuddy_OptionsFrame_ColorPicker_Text37", type = "textcolors", var = "other_ctf", tooltipText = ""},
	};

	
-- I hate doing this, but Bliz won't give us a function to look up an NPC's Faction.  
-- This list will certainly break down at some point if/when more get added by Bliz.  :(
-- The factions are broken out by first letter to make the search much faster
-- thanks to Quindo Ma from worldofwar for obtaining this full list!  6/25/06
	TB_Factions = { 
		["А"] = {
			[1] = "Альянс",
			[2] = "Армия Калимдора",
			[3] = "Алый орден",
			},
		["Б"] = {
			[1] = "Братство Справедливости",
			[2] = "Браконьер тенешелка",
			[3] = "Братство Тория",
			},
		["В"] = {
			[1] = "Всадники Песни Войны",
			},
		["Г"] = {
			[1] = "Гидраксианские Повелители Вод",
			[2] = "Громовой Утес",
			},
		["Д"] = {
			[1] = "Даларан",
			[2] = "Дворфы Черного Железа",
			[3] = "Дарнас",
			[4] = "Дружина Хилсбрада",
			[5] = "Джеденар",
			[6] = "Дрессировщики равазавров",
			[7] = "Дружина Стальгорна",
			[8] = "Древобрюхи",
			},
		["З"] = {
			[1] = "Заблудшие",
			[2] = "Захватчики Плети",
			},
		["И"] = {
			[1] = "Изгнанники Гномрегана",
			},
		["К"] = {
			[1] = "Каэр Дарроу",
			[2] = "Круг Кенария",
			[3] = "Круговзор",
			[4] = "Клан Северного Волка",
			[5] = "Кентавры из племени Гелкис",
			[6] = "Кентавры из племени Маграм",
			[7] = "Крепость Стражей Пустоты",
			[8] = "Караван Стражей Пустоты",
			[9] = "Кабестан",
			[10] = "Красные",
			[11] = "Картель Хитрая Шестеренка",
			},
		["Л"] = {
			[1] = "Лига Аратора",
			},
		["М"] = {
			[1] = "Макрура",
			[2] = "Мародин",
			},
		["Н"] = {
			[1] = "Непроглядная пучина",
			[2] = "Неприкаянный дух",
			[3] = "Наемники Курцена",
			[4] = "Надсмотрщик Физзул",
			[5] = "Неистовый Молот",
			},
		["О"] = {
			[1] = "Орда",
			[2] = "Огр",
			[3] = "Оргриммар",
			[4] = "Осквернители",
			},
		["П"] = {
			[1] = "Пираты Кровавого Паруса",
			[2] = "Пиратская Бухта",
			[3] = "Пылающий Клинок",
			[4] = "Предатель Братства Справедливости",
			[5] = "Прибамбасск",
			[6] = "Подгород",
			[7] = "Пещеры Стенаний",
			[8] = "Племя Зандалар",
			},
		["Р"] = {
			[1] = "Род Ноздорму",
			},
		["С"] = {
			[1] = "Силы Альянса",
			[2] = "Серебряный Рассвет",
			[3] = "Синие",
			[4] = "Силы Орды",
			[5] = "Стальгорн",
			[6] = "Силитиды",
			[7] = "Силитиды: захватчики",
			[8] = "Среброкрылые Часовые",
			[9] = "Стража Грозовой Вершины",
			[10] = "Синдикат",
			},
		["Т"] = {
			[1] = "Тролли Черного Копья",
			[2] = "Тролли Сломанного Клыка",
			[3] = "Тролли из племени Пронзающего Копья",
			[4] = "Терамор",
			[5] = "Тренировочный манекен",
			[6] = "Торговая Компания",
			},
		["У"] = {
			[1] = "Укротители ледопардов",
			},
		["Ф"] = {
			[1] = "Флибустьеры Южных морей",
			},
		["Х"] = {
			[1] = "Хилсбрад, мэр Южнобережья",
			},
		["Ч"] = {
			[1] = "Человек: Ночной Дозор",
			[2] = "Черный Ворон",
			},
		["Ш"] = {
			[1] = "Шен'дралар",
			[2] = "Штормград",
			},
		["Я"] = {
			[1] = "Ярмарка Новолуния",
			},
	};	
	
	
	TB_INITIALIZING_VARIABLES = "|cff3366ffTipBuddy: инициализация переменных TipBuddy";
	
	
	TB_DESCRIPTION = "Расширенный и настраиваемый экран подсказок.";
	
	
	TB_VERSION_LOADED = "|cffffd200TipBuddy |cffffff00вер. ";
	TB_VERSION_LOADED_TWO = " загружен.";
	TB_NO_SHOWING_RANK = "|cff20ff20TipBuddy: Полное название ранга больше не будет отображаться с именем.";
	TB_SHOWING_RANK = "|cff20ff20TipBuddy: Отображение полного названия ранга с именем.";
	TB_RESET_POSITION = "|cff20ff20TipBuddy: Сброс позиции ЯкоряTipBuddy.";
	TB_DEFAULT_TOOLTIPS = "|cff20ff20TipBuddy: Стандартный экран подсказок – расширен.";
	TB_DEFAULT_TOOLTIPS_NOT = "|cff20ff20TipBuddy: Стандартный экран подсказок не расширяется.";
	TB_SPECIFY_TARGET_TYPE = "|cff20ff20TipBuddy: Укажите тип цели (пример: /tip extras pc_friend)";
	TB_TYPE_SCALE_NUMBER = "|cff20ff20TipBuddy: Укажите масштаб после \"scale\" (допустимые числа: 0.25-2)";
	
	
	TB_PLAYERS = "Игроки";
	TB_PLAYERS_CAPS = "ИГРОКИ";
	TB_FRIENDLY = "Дружелюб";
	TB_INPARTY = "В группе";
	TB_ENEMY = "Враг";
	TB_BORDER_COLOR = "Цвет границы";
	TB_BACKDROP_COLOR = "Цвет фона";
	TB_NPCS = "НПС";
	TB_NEUTRAL = "Нейтрал";
	TB_PETS = "Питомец";
	TB_PETS_CAPS = "ПИТОМЕЦ";
	TB_CORPSE = "Труп";
	TB_CORPSE_CAPS = "ТРУП";
	TB_GENERAL_OPTIONS = "ОБЩИЕ НАСТРОЙКИ";
	TB_GENERAL = "Общее";
	TB_ANCHORING = "Якорь";
	TB_ANCHORING_OPTIONS = "НАСТРОЙКИ ЯКОРЯ";
	TB_CURSOR_POSITION = "Подсказки за курсором";
	TB_NON_UNIT_TOOLTIPS = "Не юнитные подсказки";
	TB_DISPLAY_TIPBUDDYANCHOR = "Показать ЯкорьTipBuddy";
	TB_RESET_TIPBUDDYANCHOR = "Сбросить ЯкорьTipBuddy ";
	TB_FADING = "Затухание";
	TB_FADING_OPTIONS = "НАСТРОЙКИ ЗАТУХАНИЯ";
	TB_TEXT_COLORS = "Цвет текста";
	TB_NAMES = "|cffffffffИмена";
	TB_GUILD_TITLES = "|cffffffffГильдия/Титулы";
	TB_LEVEL_DIFFICULTY = "|cffffffffУровень сложности";
	TB_CLASSES = "|cffffffffКлассы";
	TB_OTHER = "|cffffffffДругое";
	TB_SHOW_VARS = "Переменные";
	TB_HIDE_VARS = "Переменные";
	TB_VARIABLE_CODES = "Доступные переменные";
	TB_RESET_ALL = "Сбросить все";
	TB_OKAY = "ОК";
	TB_OKAY_CAPS = "ОК";
	TB_CANCEL = "Отмена";
	TB_CANCEL_CAPS = "ОТМЕНА";
	TB_APPLY = "Применить";
	TB_UNIQUE_UNITS = "|cffffffffУникальный юниты";
	TB_ALPHA = "Альфа";
	TB_UNKNOWN = "Неизвестно";
	TB_NONE = "Нет";
	TB_TIPBUDDYANCHOR = "ЯкорьTipBuddy";
	TB_PVP = "ПвП";
	TB_SHOW_HEALTH_TEXT = "Здоровье текстом";
	TB_SHOW_MANA_TEXT = "Мана текстом";
	TB_SHOW_TEXT_ONLY = "Только текст";
	
	
	TB_DEFAULT_MODE_TOOLTIP = "Стандартный режим всплывающими\nподсказками похож на подсказки\nот Blizzard, но с большими возможностями";
	TB_COMPACT_MODE_TOOLTIP = "Компактный режим имеет\nболее минималистический стиль";
	TB_ADVANCED_MODE_TOOLTIP = "Только для опытных пользователей";
	TB_SETTING_BLANK = "|cff3366ffНАСТРОЙКА ПЕРЕМЕННЫХ: ";
	TB_SMALL = "Меньше";
	TB_LARGE = "Больше";
	TB_COOSE_CUSTOM_COLOR = "Выберете другой цвет\nкликнув по полю справа.";
	TB_COLOR_BY_DIFFICULTY = "Цвет будет определяться\nпо сложности цели\n(красный, желтый, серый и т.п.).";
	TB_COLOR_BY_REACTION = "Цвет будет определяться\nпо отношению цели к вам.";
	TB_POSITION_ABOVE_CURSOR = "Всплывающая подсказка НАД курсором";
	TB_POSITION_RIGHT_CURSOR = "Всплывающая подсказка СПРАВА от курсора";
	TB_POSITION_LEFT_CURSOR = "Всплывающая подсказка СЛЕВА от курсора";
	TB_POSITION_BELOW_CURSOR = "Всплывающая подсказка ПОД курсором";
	TB_NONUNIT_TOOLTIPS_CURSOR = "Не юнитные подсказки будут\nследовать за курсором";
	TB_NONUNIT_TOOLTIPS_ANCHOR = "Не юнитные подсказки будут\nприкреплены к ЯкорюTipBuddy";
	TB_NONUNIT_TOOLTIPS_SMART = "Не юнитные подсказки будут прилипать\nв удобном положении к кнопке или\nобъекту, на котором у вас наведена мышь";
	TB_ANCHOR_TOOLTIP_TOP_RIGHT = "Подсказка будет отображаться\nВВЕРХУ СПРАВА от ЯкоряTipBuddy";
	TB_ANCHOR_TOOLTIP_TOP_LEFT = "Подсказка будет отображаться\nВВЕРХУ СЛЕВА от ЯкоряTipBuddy";
	TB_ANCHOR_TOOLTIP_BOTTOM_RIGHT = "Подсказка будет отображаться\nВНИЗУ СПРАВА от ЯкоряTipBuddy";
	TB_ANCHOR_TOOLTIP_BOTTOM_LEFT = "Подсказка будет отображаться\nВНИЗУ СЛЕВА от ЯкоряTipBuddy";
	TB_ANCHOR_TOOLTIP_BOTTOM_CENTER = "Подсказка будет отображаться\nПО ЦЕНТРУ СВЕРХУ от ЯкоряTipBuddy";
	TB_ANCHOR_TOOLTIP_TOP_CENTER = "Подсказка будет отображаться\nПО ЦЕНТРУ СНИЗУ от ЯкоряTipBuddy";
	
	
	TB_LOADING_TITAN = "---------------------------------------------------загрузка титана";
	
	
	TB_EXTRAS_ON = "|cff20ff20TipBuddy: Дополнительные функции для всех типов целей – включены.";
	TB_EXTRAS_OFF = "|cff20ff20TipBuddy: Дополнительные функции для всех типов целей – выключены.";
	TB_NOT_RECOGNIZE_TYPE = "|cff20ff20TipBuddy: Не удалось определить тип цели: ";
	TB_NOT_SHOWING_EXTRAS = "|cff20ff20TipBuddy: Выключено отображение дополнительных функций для данного типа целей: ";
	TB_SHOWING_EXTRAS = "|cff20ff20TipBuddy: Включено отображение дополнительных функций для данного типа целей: ";

	
--Tooltip Style (Compact, Default, Advanced)
	TipBuddy_TipStyle = {
		[1] = "Стандартный режим",
		[2] = "Компактный режим",
		[3] = "Расширенный режим", 
	}
	
	
	TipBuddy_CursorPos = {
		[1] = "Вверх",
		[2] = "Вправо",
		[3] = "Влево",
		[4] = "Вниз", 
	};
	
	
--Tooltip Backdrop Colors
	TipBuddy_BDColor = {
		[1] = "Пользовательский",
		[2] = "Сложность",
		[3] = "Реакция", 
	};
	
	
--Tooltip Backdrop BORDER Colors
	TipBuddy_BDBColor = {
		[1] = "Пользовательский",
		[2] = "Сложность",
		[3] = "Реакция", 
	};
	
	
--non-unit tips
	TipBuddy_NonUnitTipPos = {
		[1] = "Курсор",
		[2] = "ЯкорьTipBuddy",
		[3] = "Умный Якорь", 
	};
	
	
	TipBuddy_AnchorPos = {
		[1] = "Вверху справа",
		[2] = "Вверху слева",
		[3] = "Внизу справа",
		[4] = "Внизу слева", 
		[5] = "По центру сверху", 
		[6] = "По центру снизу", 
	};
end