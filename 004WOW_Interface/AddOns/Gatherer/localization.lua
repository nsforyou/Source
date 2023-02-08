--[[

	File containing localized strings
	for English, French, German and Chinese versions, defaults to English
	Revision: $Id: localization.lua 246 2006-06-26 11:07:34Z islorgris $
	
	Processed locales: french (frFR), german (deDE), simplified chinese (zhCN), english (US or GB, default)
]]

if ( GetLocale() == "frFR" ) then
	-- French localized variables
	GATHERER_VERSION_WARNING="Nouvelle version de Gatherer d\195\169tect\195\169e, v\195\169rifiez le zone match.";
	GATHERER_NOTEXT="([-]) pas de texte "

	-- TRADE NAME
	TRADE_HERBALISM="Herboristerie";
	OLD_TRADE_HERBALISM="Herboristerie";
	TRADE_MINING="Minage"
	TRADE_OPENING="Ouverture"
	GATHER_HERBALISM="Cueillette"

	-- strings for gather line in chat
	HERB_GATHER_STRING="Vous ex\195\169cutez Cueillette sur"
	ORE_GATHER_STRING="Vous ex\195\169cutez Minage sur"
	TREASURE_GATHER_STRING="Vous ex\195\169cutez Ouverture sur"

	GATHERER_REQUIRE="N\195\169cessite"
	GATHERER_NOSKILL="Requiert"

	-- Length of the string to keep the gather name
	HERB_GATHER_LENGTH=31
	HERB_GATHER_END=-2
	ORE_GATHER_LENGTH=27
	ORE_GATHER_END=-2
	TREASURE_GATHER_LENGTH=30
	TREASURE_GATHER_END=-2

	-- ore classes
	ORE_CLASS_VEIN   ="veine"
	ORE_CLASS_DEPOSIT="d\195\169p\195\180t"
	ORE_CLASS_LODE   ="filon"
	ORE_CLASS_SEAM   ="gisement"

	-- ore types
	ORE_COPPER     ="cuivre"
	ORE_TIN        ="\195\169tain"
	ORE_IRON       ="fer"
	ORE_SILVER     ="argent"
	ORE_TRUESILVER ="vrai-argent"
	ORE_GOLD       ="or"
	ORE_MITHRIL    ="mithril"
	ORE_THORIUM    ="thorium"
	ORE_RTHORIUM   ="thorium (riche)"
	ORE_DARKIRON   ="sombrefer"

	-- herb types (ingame verified translations)
	HERB_PEACEBLOOM        ="pacifique"
	HERB_SILVERLEAF        ="feuillargent"
	HERB_EARTHROOT         ="terrestrine"
	HERB_MAGEROYAL         ="mage royal"
	HERB_BRIARTHORN        ="eglantine"
	HERB_STRANGLEKELP      ="etouffante"
	HERB_SWIFTTHISTLE      ="chardonnier"
	HERB_BRUISEWEED        ="doulourante"
	HERB_WILDSTEELBLOOM    ="aci\195\169rite sauvage"
	HERB_GRAVEMOSS         ="tombeline"
	HERB_KINGSBLOOD        ="sang-royal"
	HERB_LIFEROOT          ="viet\195\169rule"
	HERB_FADELEAF          ="p\195\162lerette"
	HERB_KHADGARSWHISKER   ="moustache de khadgar"
	HERB_FIREBLOOM         ="fleur de feu"
	HERB_GOLDTHORN         ="dor\195\169pine"
	HERB_PURPLELOTUS       ="lotus pourpre"
	HERB_BLINDWEED         ="aveuglette"
	HERB_SUNGRASS          ="soleillette"
	HERB_GHOSTMUSHROOM     ="champignon fant\195\180me"
	HERB_GOLDENSANSAM      ="sansam dor\195\169"
	HERB_GROMSBLOOD        ="gromsang"
	HERB_WILDVINE	       ="sauvageonne"
	HERB_WINTERSBITE       ="hivernale"
	HERB_ARTHASTEAR        ="larmes d'arthas"
	HERB_BLACKLOTUS        ="lotus noir"
	HERB_DREAMFOIL         ="feuiller\195\170ve"
	HERB_ICECAP            ="calot de glace"
	HERB_MOUNTAINSILVERSAGE="sauge\-argent des montagnes"
	HERB_PLAGUEBLOOM       ="fleur de peste"

	-- treasure types
	-- Note: BARREL is a placeholder, chances are it's translated by the one corresponding to CASK.
	TREASURE_BOX        ="bo\195\174te"
	TREASURE_CHEST      ="coffre"
	TREASURE_CLAM       ="palourde"
	TREASURE_CRATE      ="caisse"
	TREASURE_BARREL     ="barrique"
	TREASURE_CASK       ="tonneau"
	TREASURE_SHELLFISHTRAP="casier \195\160 crustac\195\169s"
	TREASURE_FOOTLOCKER   = "cantine"

	TREASURE_BLOODHERO    = "sang des h\195\169ros"

	TREASURE_BLOODPETAL   = "p\195\169tale de sang"
	TREASURE_BLOODPETAL_G = "pousse de p\195\169tale([-])de([-])sang"
	TREASURE_POWERCRYST   = "cristal de puissance"
	TREASURE_UNGOROSOIL_G = "tas de poussi\195\168re"
	TREASURE_UNGOROSOIL   = "humus d'Un'Goro"

	TREASURE_NIGHTDRAGON 	= "dragon nocturne"
	TREASURE_WHIPPERROOT 	= "navetille"
	TREASURE_WINDBLOSSOM_G 	= "fleur([-])de([-])vent"
	TREASURE_WINDBLOSSOM 	= "fleur de vent"
	TREASURE_SONGFLOWER_G 	= "fleur([-])de([-])chant"
	TREASURE_SONGFLOWER 	= "fleur de chant"

	TREASURE_FISHNODE_TRIGGER1	= "Malle";
--	TREASURE_FISHNODE_TRIGGER2	= "boursoufl\195\169"; -- no longer found in wreckage in 1.11

	TREASURE_FISHNODE_TRIGGER4	= "banc d";
	TREASURE_FISHNODE_TRIGGER5	= "d\195\169bris flottant";
	TREASURE_FISHNODE_TRIGGER6	= "nappe de p\195\169trole";
	TREASURE_FISHNODE_TRIGGER7	= "remous d'eau \195\169l\195\169mentaire";
	
	TREASURE_FISHNODE		= "banc";
	TREASURE_FISHWRECK		= TREASURE_FISHNODE_TRIGGER5;
	TREASURE_FISHELEM		= TREASURE_FISHNODE_TRIGGER7;

	GATHERER_ReceivesLoot		= "Vous recevez le butin : (.+)%.";

	TREASURE_REGEX = {
		[1] = " ([^ ]+)$",
		[2] = "^([^ ]+) ",
		[3] = "([^ ]+) ([^ ]+) ",
		[4] = "([^ ]+) ([^ ]+)$",
	};


	function Gatherer_FindOreType(input)
		local i,j, oreType, oreClass, oreArticle;
		local trinput=string.gsub(input, '\'', " ")

		if ( string.find(input, "riche") and string.find(input, "thorium") ) then 
			return ORE_RTHORIUM;
		end;

		if ( string.find(input, ORE_DARKIRON)) then
			return ORE_DARKIRON;
		end
			
		i, j, oreClass, oreArticle, oreType = string.find(input, "([^ ]+) ([^ ]+) ([^ ]+)$");
		if (oreClass ~= ORE_CLASS_VEIN and oreClass ~= ORE_CLASS_DEPOSIT and oreClass ~= ORE_CLASS_LODE and oreClass ~= ORE_CLASS_SEAM) then
			i, j, oreClass, oreArticle, oreType = string.find(trinput, "^([^ ]+) ([^ ]+) ([^ ]+)");
		end
		if (oreType and oreClass and (oreClass == ORE_CLASS_VEIN or oreClass == ORE_CLASS_DEPOSIT or oreClass == ORE_CLASS_LODE or oreClass == ORE_CLASS_SEAM)) then
			return oreType;
		end
		return;
	end

	function Gatherer_FindTreasureType(in_input)
		local iconName, input;
		input = string.gsub(in_input, GATHERER_NOTEXT, "")

		if ( string.find(input, TREASURE_UNGOROSOIL_G) ) then
			return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
		end
			
		if (string.find(input, TREASURE_POWERCRYST) ) then
			return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
		end

		if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
			return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL;
		end

		if (string.find(input, TREASURE_BLOODHERO) ) then
			return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
		end

		if (string.find(input, TREASURE_WINDBLOSSOM_G) or string.find(input, TREASURE_WINDBLOSSOM)) then
			return TREASURE_WINDBLOSSOM, TREASURE_WINDBLOSSOM;
		end

		if (string.find(input, TREASURE_SONGFLOWER_G) or string.find(input, TREASURE_SONGFLOWER)) then
			return TREASURE_SONGFLOWER, TREASURE_SONGFLOWER;
		end

		for iconName in Gather_DB_IconIndex[0] do
			local index, treasure_regex, i, j, treasType;
			if ( input == iconName ) then
				return iconName;
			end
			
			if ( string.find(input, iconName) ) then
				for index, treasure_regex in TREASURE_REGEX do
					i,j, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
					
					i,j, _, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
				end
			end
		end
		return;
	end
elseif ( GetLocale() == "deDE" ) then
	-- German localized variables
	GATHERER_VERSION_WARNING="New zone order detected, check zone match to translate old zones to new order.";
	GATHERER_NOTEXT="([-]) Kein Text "

	-- TRADE NAME
	TRADE_HERBALISM="Kr\195\164uterkunde"
	OLD_TRADE_HERBALISM="Kr\195\164uterkunde"
	TRADE_MINING="Bergbau"
	TRADE_OPENING="\195\150ffnen"
	GATHER_HERBALISM="Kr\195\164utersammeln"
	
	-- strings for gather line in chat
	HERB_GATHER_STRING="Ihr f\195\188hrt Kr\195\164utersammeln auf" -- "Ihr fuhrt Krautersammeln auf Beulengras aus."
	ORE_GATHER_STRING="Ihr f\195\188hrt Bergbau auf"                -- "Ihr fuhrt Bergbau auf Kupfervorkommen aus."
	TREASURE_GATHER_STRING="Ihr f\195\188hrt \195\150ffnen auf"     -- "Ihr fuhrt Offnen auf Ramponierte Truhe aus."

	-- Length of the string to keep the gather name
	HERB_GATHER_LENGTH=32
	HERB_GATHER_END=-6
	ORE_GATHER_LENGTH=24
	ORE_GATHER_END=-6
	TREASURE_GATHER_LENGTH=24
	TREASURE_GATHER_END=-6

	GATHERER_REQUIRE="Ben\195\182tigt"
	GATHERER_NOSKILL="Erfordert" 

	-- ore classes
	ORE_CLASS_VEIN   ="vorkommen"
	ORE_CLASS_DEPOSIT="ablagerung"

	-- ore types
	ORE_COPPER    ="kupfer"
	ORE_TIN       ="zinn"
	ORE_IRON      ="eisen"
	ORE_SILVER    ="silber"
	ORE_TRUESILVER="echtsilber"
	ORE_GOLD      ="gold"
	ORE_MITHRIL   ="mithril"
	ORE_THORIUM   ="thorium"
	ORE_RTHORIUM  ="thorium (reiches)"
	ORE_DARKIRON  ="dunkeleisen"

	-- herb types
	HERB_ARTHASTEAR        ="arthas\226\128\153 tr\195\164nen"
	HERB_BLACKLOTUS        ="schwarzer lotus"
	HERB_BLINDWEED         ="blindkraut"
	HERB_BRIARTHORN        ="wilddornrose"
	HERB_BRUISEWEED        ="beulengras"
	HERB_DREAMFOIL         ="traumblatt"
	HERB_EARTHROOT         ="erdwurzel"
	HERB_FADELEAF          ="blassblatt"
	HERB_FIREBLOOM         ="feuerbl\195\188te"
	HERB_GHOSTMUSHROOM     ="geisterpilz"
	HERB_GOLDENSANSAM      ="goldener sansam"
	HERB_GOLDTHORN         ="golddorn"
	HERB_GRAVEMOSS         ="grabmoos"
	HERB_GROMSBLOOD        ="gromsblut"
	HERB_ICECAP            ="eiskappe"
	HERB_KHADGARSWHISKER   ="khadgars schnurrbart"
	HERB_KINGSBLOOD        ="k\195\182nigsblut"
	HERB_LIFEROOT          ="lebenswurz"
	HERB_MAGEROYAL         ="magusk\195\182nigskraut"
	HERB_MOUNTAINSILVERSAGE="bergsilberweisling"
	HERB_PEACEBLOOM        ="friedensblume"
	HERB_PLAGUEBLOOM       ="pestbl\195\188te"
	HERB_PURPLELOTUS       ="lila lotus"
	HERB_SILVERLEAF        ="silberblatt"
	HERB_STRANGLEKELP      ="w\195\188rgetang"
	HERB_SUNGRASS          ="sonnengras"
	HERB_SWIFTTHISTLE      ="flitzdistel"
	HERB_WILDSTEELBLOOM    ="wildstahlblume"
	HERB_WINTERSBITE       ="winterbiss"
	HERB_WILDVINE          ="wildranke"

	-- treasure types
	TREASURE_BOX        ="kiste"
	TREASURE_CHEST      ="truhe"
	TREASURE_CLAM       ="muschel"
	TREASURE_CRATE      ="kasten"
	TREASURE_BARREL     ="tonne"
	TREASURE_CASK       ="fass"
	TREASURE_SHELLFISHTRAP="schalentierfalle"
	TREASURE_FOOTLOCKER = "schlie\195\159kiste"

	TREASURE_BLOODHERO  = "blut von helden"

	TREASURE_UNGOROSOIL_G = "erdhaufen"
	TREASURE_BLOODPETAL = "blutbl\195\188te"
	TREASURE_BLOODPETAL_G = "blutbl\195\188tenspr\195\182ssling"
	TREASURE_POWERCRYST = "machtkristall"
	TREASURE_UNGOROSOIL = "un'Goro erde"

	TREASURE_NIGHTDRAGON 	= "nachtdrache"
	TREASURE_WHIPPERROOT 	= "peitscherwurzel"
	TREASURE_WINDBLOSSOM 	= "windbl\195\188te"
	TREASURE_SONGFLOWER 	= "liedblume"

	TREASURE_FISHNODE_TRIGGER1	= "Geh\195\164use";
--	TREASURE_FISHNODE_TRIGGER2	= "Aufgedunsener"; -- no longer found in wreckage in 1.11

	TREASURE_FISHNODE_TRIGGER4	= "schwarm";
	TREASURE_FISHNODE_TRIGGER5	= "schwimmende tr\195\188mmer";
	TREASURE_FISHNODE_TRIGGER6  = "\195\150lfleck";
	TREASURE_FISHNODE_TRIGGER7	= "stelle mit elementarwasser";
	
	TREASURE_FISHNODE			= "schwarm";
	TREASURE_FISHWRECK			= TREASURE_FISHNODE_TRIGGER5;
	TREASURE_FISHELEM			= TREASURE_FISHNODE_TRIGGER7;

	GATHERER_ReceivesLoot		= "Ihr bekommt Beute: (.+)%.";

	TREASURE_REGEX = {
		[1] = " ([^ ]+)$",
		[2] = "^([^ ]+) ",
		[3] = "([^ ]+) ([^ ]+) ",
		[4] = "([^ ]+) ([^ ]+)$",
		[5] = "^([^ ]+)$",
	};

	function Gatherer_FindOreType(input)
		local i,j, oreType, oreClass, oreTypeClass;

		if ( string.find(input, "reiches") and string.find(input, "thorium") ) then
			 return ORE_RTHORIUM;
		end;

		-- fix for ooze covered
		oreTypeClass = string.gsub(string.gsub(string.gsub(string.gsub(input, "br\195\188hschlammbedecktes ", ""), "kleines ", ""), "reiches ", "" ), "br\195\188hschlammbedeckte ", "" );

		if (string.find(oreTypeClass, ORE_CLASS_VEIN)) then
			oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_VEIN));
			oreClass = ORE_CLASS_VEIN;
		end
		if (string.find(oreTypeClass, ORE_CLASS_DEPOSIT)) then
			oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_DEPOSIT));
			oreClass = ORE_CLASS_DEPOSIT;
		end
		if( oreClass == ORE_CLASS_DEPOSIT and oreType == ORE_SILVER ) then
		       oreType = ORE_TRUESILVER;
		end
		if (oreType and oreClass and ((oreClass == ORE_CLASS_VEIN) or (oreClass == ORE_CLASS_DEPOSIT))) then
			return oreType;
		end
		return;
	end

	function Gatherer_FindTreasureType(in_input)
		local iconName, input;

		-- fix for clams
		input = string.gsub(string.gsub(in_input, GATHERER_NOTEXT, ""), "riesen", "");

		if ( string.find(input, TREASURE_UNGOROSOIL_G) or string.find(input, TREASURE_UNGOROSOIL)) then
			return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
		end
			
		if (string.find(input, TREASURE_POWERCRYST) ) then
			return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
		end

		if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
			return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL_G;
		end

		if (string.find(input, TREASURE_BLOODHERO) ) then
			return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
		end

		for iconName in Gather_DB_IconIndex[0] do
			local index, treasure_regex, i, j, treasType;
			if ( input == iconName ) then
				return iconName;
			end
			
			if ( string.find(input, iconName) ) then
				for index, treasure_regex in TREASURE_REGEX do
					i,j, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
					
					i,j, _, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
				end
			end
			
			if ( string.find(string.lower(input), string.lower(iconName))) then
				return iconName;
			end
		end
		return;
	end
elseif (  GetLocale() == "zhCN"  ) then

	-- Chinese localized variables
	-- localized by 浮云飘飘
	GATHERER_VERSION_WARNING = "检测到新版本的 Gatherer,检查区域匹配.";
	GATHERER_NOTEXT="([-]) no text "

	-- TRADE NAME
	TRADE_HERBALISM = "草药学"
	OLD_TRADE_HERBALISM = "草药学"
	TRADE_MINING = "采矿"
	TRADE_OPENING="打开"
	GATHER_HERBALISM="采集草药"

	-- strings for gather line in chat
	HERB_GATHER_STRING = "使用采集草药"
	ORE_GATHER_STRING = "使用采矿"
	TREASURE_GATHER_STRING = "使用打开"
	--自己增加开始
	TREASURE_GATHER_STRING_USEOPEINING = "使用Opening"
	--自己增加结束

	-- Length of the string to keep the gather name
	HERB_GATHER_LENGTH=5
	HERB_GATHER_END=-20
	ORE_GATHER_LENGTH=5
	ORE_GATHER_END=-15
	TREASURE_GATHER_LENGTH=5
	TREASURE_GATHER_END=-15

	GATHERER_REQUIRE = "需要"
	GATHERER_NOSKILL = "需要等级"

	-- ore classes
	ORE_CLASS_VEIN    = "矿"
	ORE_CLASS_DEPOSIT = "矿石"

	-- ore types
	ORE_COPPER     = "铜"
	ORE_TIN        = "锡"
	ORE_IRON       = "铁"
	ORE_SILVER     = "银"
	ORE_TRUESILVER = "真银"
	ORE_GOLD       = "金"
	ORE_MITHRIL    = "秘银"
	ORE_THORIUM    = "瑟银"
	ORE_RTHORIUM   = "富瑟银"
	ORE_DARKIRON   = "黑铁"

	-- herb types       
	HERB_ARTHASTEAR         = "阿尔萨斯之泪"
	HERB_BLACKLOTUS         = "黑莲花"
	HERB_BLINDWEED          = "盲目草"
	HERB_BRIARTHORN         = "石南草"
	HERB_BRUISEWEED         = "跌打草"
	HERB_DREAMFOIL          = "梦叶草"
	HERB_EARTHROOT          = "地根草"
	HERB_FADELEAF           = "枯叶草"
	HERB_FIREBLOOM          = "火焰花"
	HERB_GHOSTMUSHROOM      = "幽灵菇"
	HERB_GOLDENSANSAM       = "黄金参"
	HERB_GOLDTHORN          = "金棘草"
	HERB_GRAVEMOSS          = "墓地苔"
	HERB_GROMSBLOOD         = "格罗姆之血"
	HERB_ICECAP             = "冰盖草"
	HERB_KHADGARSWHISKER    = "卡德加的胡须"
	HERB_KINGSBLOOD         = "皇血草"
	HERB_LIFEROOT           = "活根草"
	HERB_MAGEROYAL          = "魔皇草"
	HERB_MOUNTAINSILVERSAGE = "山鼠草"
	HERB_PEACEBLOOM         = "宁神花"
	HERB_PLAGUEBLOOM        = "瘟疫花"
	HERB_PURPLELOTUS        = "紫莲花"
	HERB_SILVERLEAF         = "银叶草"
	HERB_STRANGLEKELP       = "荆棘藻"
	HERB_SUNGRASS           = "太阳草"
	HERB_SWIFTTHISTLE       = "雨燕草"
	HERB_WILDSTEELBLOOM     = "野钢花"
	HERB_WINTERSBITE        = "冬刺草"
	HERB_WILDVINE	        = "野葡萄藤"

	-- treasure types
	TREASURE_BOX    = "盒子"
	TREASURE_CHEST  = "箱子"
	TREASURE_CLAM   = "巨型蚌壳"
	TREASURE_CRATE  = "箱"
	TREASURE_BARREL = "桶"
	TREASURE_CASK   = "酒桶"
	TREASURE_SHELLFISHTRAP	 = "贝壳陷阱"
	TREASURE_FOOTLOCKER 	= "小提箱"

	TREASURE_BLOODHERO  = "英雄之血"

	TREASURE_UNGOROSOIL = "安戈洛的泥土"
	TREASURE_UNGOROSOIL_G = "安戈洛土堆"
	TREASURE_BLOODPETAL = "血瓣花"
	TREASURE_BLOODPETAL_G = "血瓣花苗"
	TREASURE_POWERCRYST = "能量水晶"

	TREASURE_NIGHTDRAGON 	= "夜龙之息"
	TREASURE_WHIPPERROOT 	= "鞭根块茎"
	TREASURE_WINDBLOSSOM 	= "风花果"
	TREASURE_SONGFLOWER 	= "轻歌花"

	TREASURE_FISHNODE_TRIGGER1	= "箱子";
--	TREASURE_FISHNODE_TRIGGER2	= "浮肿的"; -- no longer found in wreckage in 1.11

	TREASURE_FISHNODE_TRIGGER4	= "鱼群";
	TREASURE_FISHNODE_TRIGGER5	= "漂浮的残骸";
	TREASURE_FISHNODE_TRIGGER6	= "oil spill";
	TREASURE_FISHNODE_TRIGGER7	= "元素之水";
	
	TREASURE_FISHNODE		= "鱼群";
	TREASURE_FISHWRECK		= TREASURE_FISHNODE_TRIGGER5;
	TREASURE_FISHELEM		= TREASURE_FISHNODE_TRIGGER7;

	GATHERER_ReceivesLoot		= "你获得了物品：(.+)%。";
	--[[
	GATHERER_ReceivesLoot1		= "你获得了：(.+)%。";
	GATHERER_ReceivesLoot2		= "你得到了物品：(.+)%。";
	]]--
	
	TREASURE_REGEX = {
		[1] = " ([^ ]+)$",
		[2] = "^([^ ]+)",
		[3] = "([^ ]+) ([^ ]+) ",
	};

	function Gatherer_FindOreType(input)
		local i,j, oreType, oreClass, oreTypeClass;
		
		if ( string.find(input, "\229\175\140") and string.find(input, "\231\145\159\233\147\182") ) then 
			return ORE_RTHORIUM;
		end;

-------------------------start		
		if ( string.find(input, ORE_RTHORIUM) ) then 
			return ORE_RTHORIUM;
		elseif ( string.find(input, ORE_MITHRIL) ) then 
			return ORE_MITHRIL;
		elseif ( string.find(input, ORE_THORIUM) ) then 
			return ORE_THORIUM;
		elseif ( string.find(input, ORE_TRUESILVER) ) then 
			return ORE_TRUESILVER;
		elseif ( string.find(input, ORE_DARKIRON) ) then 
			return ORE_DARKIRON;
		elseif ( string.find(input, ORE_GOLD) and string.find(input, ORE_CLASS_VEIN) ) then 
			return ORE_GOLD;
		end;
-------------------------end

		--i,j, oreType, oreClass = string.find(input, "([^ ]+) ([^ ]+)$");
		oreTypeClass = input;
		if (string.find(oreTypeClass, ORE_CLASS_VEIN)) then
		   oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_VEIN));
		   oreClass = ORE_CLASS_VEIN;
		end
		if (string.find(oreTypeClass, ORE_CLASS_DEPOSIT)) then
		   oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_DEPOSIT));
		   oreClass = ORE_CLASS_DEPOSIT;
		end
		if( oreClass == ORE_CLASS_DEPOSIT and oreType == ORE_SILVER ) then
		   oreType = ORE_TRUESILVER;
		end

		if (oreType and oreClass and ((oreClass == ORE_CLASS_VEIN) or (oreClass == ORE_CLASS_DEPOSIT))) then
			return oreType;
		end
		return;
	end

	function Gatherer_FindTreasureType(in_input)
		local iconName, input;

		input =string.gsub(in_input, GATHERER_NOTEXT, "")
		if ( string.find(input, TREASURE_UNGOROSOIL_G) or string.find(input, TREASURE_UNGOROSOIL)) then
			return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
		end
			
		if (string.find(input, TREASURE_POWERCRYST) ) then
			return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
		end

		if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
			return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL_G;
		end

		if (string.find(input, TREASURE_BLOODHERO) ) then
			return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
		end

-------------------start
		if ( string.find(input, TREASURE_CHEST) ) then 
			return TREASURE_CHEST;
		end

		if ( string.find(input, TREASURE_BARREL) and string.find(input, "酒") ) then
			return TREASURE_CASK;
		end
		if ( string.find(input, TREASURE_BARREL) ) then
			return TREASURE_BARREL;
		end

		if ( string.find(input, "食品") and string.find(input, TREASURE_CRATE) ) then 
			return TREASURE_CRATE;
		end

		if ( string.find(input, "补给") and string.find(input, TREASURE_CRATE) ) then 
			return TREASURE_CRATE;
		end

-------------------end

		for iconName in Gather_DB_IconIndex[0] do
			local index, treasure_regex, i, j, treasType;
			if ( input == iconName ) then
				return iconName;
			end
			
			if ( string.find(input, iconName) ) then
				for index, treasure_regex in TREASURE_REGEX do
					i,j, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
					
					i,j, _, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
				end
			end
		end
		return;
	end
else
	-- English localized variables (default)
	GATHERER_VERSION_WARNING="New Gatherer Version detected, check zone match.";
	GATHERER_NOTEXT="([-]) no text "

	-- TRADE NAME
	TRADE_HERBALISM="Herbalism"
	OLD_TRADE_HERBALISM="Herbalism"
	TRADE_MINING="Mining"
	TRADE_OPENING="Opening"
	GATHER_HERBALISM="Herb Gathering"

	-- strings for gather line in chat
	HERB_GATHER_STRING="You perform Herb Gathering on"
	ORE_GATHER_STRING="You perform Mining on"
	TREASURE_GATHER_STRING="You perform Opening on"

	-- Length of the string to keep the gather name
	HERB_GATHER_LENGTH=31
	HERB_GATHER_END=-2
	ORE_GATHER_LENGTH=23
	ORE_GATHER_END=-2
	TREASURE_GATHER_LENGTH=24
	TREASURE_GATHER_END=-2

	GATHERER_REQUIRE="Requires"
	GATHERER_NOSKILL="Requires"

	-- ore classes
	ORE_CLASS_VEIN   ="vein"
	ORE_CLASS_DEPOSIT="deposit"

	-- ore types
	ORE_COPPER    ="copper"
	ORE_TIN       ="tin"
	ORE_IRON      ="iron"
	ORE_SILVER    ="silver"
	ORE_TRUESILVER="truesilver"
	ORE_GOLD      ="gold"
	ORE_MITHRIL   ="mithril"
	ORE_THORIUM   ="thorium"
	ORE_RTHORIUM  ="thorium (rich)"
	ORE_DARKIRON  ="dark iron"

	-- herb types 
	HERB_ARTHASTEAR        ="arthas' tears"
	HERB_BLACKLOTUS        ="black lotus"
	HERB_BLINDWEED         ="blindweed"
	HERB_BRIARTHORN        ="briarthorn"
	HERB_BRUISEWEED        ="bruiseweed"
	HERB_DREAMFOIL         ="dreamfoil"
	HERB_EARTHROOT         ="earthroot"
	HERB_FADELEAF          ="fadeleaf"
	HERB_FIREBLOOM         ="firebloom"
	HERB_GHOSTMUSHROOM     ="ghost mushroom"
	HERB_GOLDENSANSAM      ="golden sansam"
	HERB_GOLDTHORN         ="goldthorn"
	HERB_GRAVEMOSS         ="grave moss"
	HERB_GROMSBLOOD        ="gromsblood"
	HERB_ICECAP            ="icecap"
	HERB_KHADGARSWHISKER   ="khadgar's whisker"
	HERB_KINGSBLOOD        ="kingsblood"
	HERB_LIFEROOT          ="liferoot"
	HERB_MAGEROYAL         ="mageroyal"
	HERB_MOUNTAINSILVERSAGE="mountain silversage"
	HERB_PEACEBLOOM        ="peacebloom"
	HERB_PLAGUEBLOOM       ="plaguebloom"
	HERB_PURPLELOTUS       ="purple lotus"
	HERB_SILVERLEAF        ="silverleaf"
	HERB_STRANGLEKELP      ="stranglekelp"
	HERB_SUNGRASS          ="sungrass"
	HERB_SWIFTTHISTLE      ="swiftthistle"
	HERB_WILDSTEELBLOOM    ="wild steelbloom"
	HERB_WINTERSBITE       ="wintersbite"
	HERB_WILDVINE	       ="wildvine"

	-- treasure types
	TREASURE_BOX        	="box"
	TREASURE_CHEST      	="chest"
	TREASURE_CLAM       	="giant clam"
	TREASURE_CRATE      	="crate"
	TREASURE_BARREL     	="barrel"
	TREASURE_CASK       	="cask"
	TREASURE_SHELLFISHTRAP	="shellfish trap"
	TREASURE_FOOTLOCKER 	= "footlocker"

	TREASURE_BLOODHERO  	= "blood of heroes"

	TREASURE_UNGOROSOIL 	= "un'goro soil"
	TREASURE_UNGOROSOIL_G	= "dirt pile"
	TREASURE_BLOODPETAL 	= "bloodpetal"
	TREASURE_BLOODPETAL_G 	= "bloodpetal sprout"
	TREASURE_POWERCRYST 	= "power crystal"

	TREASURE_NIGHTDRAGON 	= "night dragon"
	TREASURE_WHIPPERROOT 	= "whipper root"
	TREASURE_WINDBLOSSOM 	= "windblossom"
	TREASURE_SONGFLOWER 	= "songflower"

	TREASURE_FISHNODE_TRIGGER1	= "Trunk";
--	TREASURE_FISHNODE_TRIGGER2	= "Bloated"; -- no longer found in wreckage in 1.11
	TREASURE_FISHNODE_TRIGGER3	= "swarm";
	TREASURE_FISHNODE_TRIGGER4	= "school";
	TREASURE_FISHNODE_TRIGGER5	= "floating wreckage";
	TREASURE_FISHNODE_TRIGGER6	= "oil spill";
	TREASURE_FISHNODE_TRIGGER7	= "patch of elemental water";

	TREASURE_FISHNODE		= "school";
	TREASURE_FISHWRECK		= TREASURE_FISHNODE_TRIGGER5;
	TREASURE_FISHELEM		= TREASURE_FISHNODE_TRIGGER7;

	GATHERER_ReceivesLoot		= "You receive loot: (.+)%.";

	TREASURE_REGEX = {
		[1] = " ([^ ]+)$",
		[2] = "^([^ ]+)",
		[3] = "([^ ]+) ([^ ]+) ",
	};

	function Gatherer_FindOreType(input)
		local i,j, oreType, oreClass, oreTypeClass;
		
		if ( string.find(input, "rich") and string.find(input, "thorium") ) then 
			return ORE_RTHORIUM;
		end;
			
		if ( string.find(input, "dark") and string.find(input, "iron") ) then
                        return ORE_DARKIRON;
                end

		i,j, oreType, oreClass = string.find(input, "([^ ]+) ([^ ]+)$");
		if (oreType and oreClass and ((oreClass == ORE_CLASS_VEIN) or (oreClass == ORE_CLASS_DEPOSIT))) then
			return oreType;
		end
		return;
	end

	function Gatherer_FindTreasureType(in_input)
		local iconName, input;

		input = string.gsub(in_input, GATHERER_NOTEXT, "")

		if ( string.find(input, TREASURE_UNGOROSOIL_G) or string.find(input, TREASURE_UNGOROSOIL)) then
			return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
		end
			
		if (string.find(input, TREASURE_POWERCRYST) ) then
			return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
		end

		if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
			return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL_G;
		end

		if (string.find(input, TREASURE_BLOODHERO) ) then
			return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
		end

		for iconName in Gather_DB_IconIndex[0] do
			local index, treasure_regex, i, j, treasType;
			if ( input == iconName ) then
				return iconName;
			end
			
			if ( string.find(input, iconName) ) then
				for index, treasure_regex in TREASURE_REGEX do
					i,j, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
					
					i,j, _, treasType = string.find(input, treasure_regex);
					if ( treasType and treasType == iconName ) then
						return iconName;
					end
				end
			end
		end
		return;
	end
end

-- ************************************************************************************************
-- Common Values, Functions

TYPE_RARE		= "Rare";


function Gatherer_ExtractItemFromTooltip()
	local extractedString = GameTooltipTextLeft1:GetText()
	if ( extractedString ) then
		return string.lower(GameTooltipTextLeft1:GetText());
	else
		return "";
	end
end

function Gatherer_FindFishType(fishItem, fishTooltip)
		if ( fishItem  and (strfind(fishItem, TREASURE_FISHNODE_TRIGGER1) ))
		then
			return TREASURE_FISHWRECK;
		-- Fish School
		elseif ( fishTooltip and (strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER4) or 
					(TREASURE_FISHNODE_TRIGGER3 and strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER3))))
		then
			return TREASURE_FISHNODE;
		-- Floating Wreckage and Oil Spill
		elseif ( fishTooltip and 
				 (strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER5) or
				  strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER6)))
		then
			return TREASURE_FISHWRECK;
		-- Elemental Water
		elseif ( fishTooltip and strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER7) ) 
		then
			return TREASURE_FISHELEM;
		end
	return nil;
end

function Gatherer_FindHerbType(gather)
	local herbType, herbFound = "", false;	
	for herbType in Gather_DB_IconIndex[1] do
		if (herbType and gather and herbType == gather) then herbFound = true; break; end
	end

	if ( herbFound ) then 
		return gather;
	else
		return nil;
	end
end
