-- [[
-- Version: 1.18.02
-- Last Updated: 2006/08/18
-- Initial translation by: 560889223
-- Maintained by: 560889223
-- ]]
if (GetLocale() == "zhCN") then

-----------------------
-- 经本地化的全局常量
-----------------------
ATLASLOOT_FIRST_TIME_TEXT = "欢迎使用Atlasloot Enhanced。请花费数分钟来设置物品信息提示条和聊天框内物品链接的有关选项。\n\n此选项面板可以通过输入“/atlasloot”重新打开。";
ATLASLOOT_FIRST_TIME_BUTTON = "设置";

ATLASLOOT_OLD_ATLAS_TEXT_PT1 = "已检测到您当前所使用的Atlas版本与Atlasloot预期的不符（Atlas ";
ATLASLOOT_OLD_ATLAS_TEXT_PT2 = "）。由于版本更新带来的变化，可能会导致在某些场合下出错，所以请尽快访问http://www.dreamgen.net/down/MOD_AddOns_WoW_AtlasHA.htm以升级Atlas到最新版本。";
ATLASLOOT_OLD_ATLAS_BUTTON = "确定";

ATLASLOOT_DROP_RATE = "掉落几率：";
ATLASLOOT_DKP = "DKP";
ATLASLOOT_PRIORITY = "优先：";

ATLASLOOT_BANNER_TEXT = "点击首领名称查看掉落列表。";

ATLASLOOT_ERRORTOOLTIP_L1 = "不安全物品";
ATLASLOOT_ERRORTOOLTIP_L2 = "ItemID：";
ATLASLOOT_ERRORTOOLTIP_L3 = "这个物品不安全。如果不想冒着被\n断开连接的风险查看这个物品，你\n必须在游戏世界中见过这个物品。\n这是暴雪自从1.10补丁开始实施的\n限制措施。";

ATLASLOOT_UIBACK = "返回";

ATLASLOOT_CLOTH = "布甲";
ATLASLOOT_LEATHER = "皮甲";
ATLASLOOT_MAIL = "锁甲";
ATLASLOOT_PLATE = "板甲";

ATLASLOOT_HEAD = "头部";
ATLASLOOT_NECK = "颈部";
ATLASLOOT_SHOULDER = "肩部";
ATLASLOOT_BACK = "背部";
ATLASLOOT_CHEST = "胸部";
ATLASLOOT_SHIRT = "衬衫";
ATLASLOOT_TABARD = "公会徽章";
ATLASLOOT_WRIST = "手腕";
ATLASLOOT_HANDS = "手";
ATLASLOOT_WAIST = "腰部";
ATLASLOOT_LEGS = "腿部";
ATLASLOOT_FEET = "脚";
ATLASLOOT_RING = "手指";
ATLASLOOT_TRINKET = "饰品";
ATLASLOOT_OFF_HAND = "副手物品";
ATLASLOOT_RELIC = "圣物";

ATLASLOOT_ONE_HAND = "单手";
ATLASLOOT_TWO_HAND = "双手";
ATLASLOOT_MAIN_HAND = "主手";
ATLASLOOT_OFFHAND = "副手";

ATLASLOOT_WEAPONS = "武器";
ATLASLOOT_AXE = "斧";
ATLASLOOT_BOW = "远程，弓";
ATLASLOOT_CROSSBOW = "弩";
ATLASLOOT_DAGGER = "匕首";
ATLASLOOT_GUN = "枪械";
ATLASLOOT_MACE = "锤";
ATLASLOOT_POLEARM = "长柄武器";
ATLASLOOT_SHIELD = "盾牌";
ATLASLOOT_STAFF = "法杖";
ATLASLOOT_SWORD = "剑";
ATLASLOOT_THROWN = "投掷武器";
ATLASLOOT_WAND = "魔杖";
ATLASLOOT_FIST = "拳套";

ATLASLOOT_POTION = "药剂";
ATLASLOOT_FOOD = "食物";
ATLASLOOT_DRINK = "饮料";
ATLASLOOT_BANDAGE = "绷带";
ATLASLOOT_ARROW = "弹药，箭";
ATLASLOOT_BULLET = "弹药，子弹"
ATLASLOOT_MOUNT = "100%加速坐骑";
ATLASLOOT_AMMO = "弹药袋";
ATLASLOOT_QUIVER = "箭袋";
ATLASLOOT_BAG = "背包";
ATLASLOOT_ENCHANT = "附魔";
ATLASLOOT_TRADE_GOODS = "商品";
ATLASLOOT_SCOPE = "瞄准镜";
ATLASLOOT_KEY = "钥匙";
ATLASLOOT_PET = "宠物";
ATLASLOOT_IDOL = "神像";
ATLASLOOT_TOTEM = "图腾";
ATLASLOOT_LIBRAM = "圣契";
ATLASLOOT_DARKMOON = "暗月马戏团卡片";
ATLASLOOT_BOOK = "书籍";
ATLASLOOT_BANNER = "军旗";

ATLASLOOT_DRUID = "德鲁伊";
ATLASLOOT_HUNTER = "猎人";
ATLASLOOT_MAGE = "法师";
ATLASLOOT_PALADIN = "圣骑士";
ATLASLOOT_PRIEST = "牧师";
ATLASLOOT_ROGUE = "盗贼";
ATLASLOOT_SHAMAN = "萨满祭司";
ATLASLOOT_WARLOCK = "术士";
ATLASLOOT_WARRIOR = "战士";

ATLASLOOT_ALCHEMY = "炼金";
ATLASLOOT_BLACKSMITHING = "锻造";
ATLASLOOT_COOKING = "烹饪";
ATLASLOOT_ENCHANTING = "附魔";
ATLASLOOT_ENGINEERING = "工程学";
ATLASLOOT_FIRST_AID = "急救";
ATLASLOOT_LEATHERWORKING = "制皮";
ATLASLOOT_TAILORING = "裁缝";
ATLASLOOT_DRAGONSCALE = "龙鳞制皮";
ATLASLOOT_TRIBAL = "部族制皮";
ATLASLOOT_ELEMENTAL = "元素制皮";

ATLASLOOT_NEUTRAL = "中立";
ATLASLOOT_FRIENDLY = "友善";
ATLASLOOT_HONORED = "尊敬";
ATLASLOOT_REVERED = "崇敬";
ATLASLOOT_EXALTED = "崇拜";

ATLASLOOT_CLASSES = "职业：";
ATLASLOOT_QUEST1 = "将触发任务";
ATLASLOOT_QUEST2 = "任务物品";
ATLASLOOT_QUEST3 = "对应任务奖励";
ATLASLOOT_SHARED = "都掉落";
ATLASLOOT_HORDE = "部落";
ATLASLOOT_ALLIANCE = "联盟";
ATLASLOOT_UNIQUE = "唯一";
ATLASLOOT_RIGHTSIDE = "右半部分";
ATLASLOOT_LEFTSIDE = "左半部分";
ATLASLOOT_FELCOREBAG = "28格灵魂碎片";
ATLASLOOT_ONYBAG = "18格";
ATLASLOOT_WCBAG = "10格";
ATLASLOOT_FULLSKILL = "（300）";
ATLASLOOT_295 = "（295）";
ATLASLOOT_275 = "（275）";
ATLASLOOT_265 = "（265）";
ATLASLOOT_290 = "（290）";
ATLASLOOT_SET = "套装";
ATLASLOOT_285 = "（285）";
ATLASLOOT_16SLOT = "16格";

ATLASLOOT_VIPERSET = "套装：毒蛇的拥抱（5件）";
ATLASLOOT_COBRAHN = "考布莱恩掉落";
ATLASLOOT_ANACONDRA = "安娜科德拉掉落";
ATLASLOOT_SERPENTIS = "瑟芬迪斯掉落";
ATLASLOOT_FANGDRUID = "尖牙德鲁伊掉落";
ATLASLOOT_PYTHAS = "皮萨斯掉落";

ATLASLOOT_DEFIASSET = "套装：迪菲亚皮甲（5件）";
ATLASLOOT_VANCLEEF = "艾德温·范克里夫掉落";
ATLASLOOT_GREENSKIN = "绿皮队长掉落";
ATLASLOOT_DEFIASMINER = "迪菲亚赤膊矿工掉落";
ATLASLOOT_DEFIASOVERSEER = "迪菲亚工头/迪菲亚监工掉落";

ATLASLOOT_Primal_Hakkari_Kossack = "原始哈卡莱套索";
ATLASLOOT_Primal_Hakkari_Shawl = "原始哈卡莱披肩";
ATLASLOOT_Primal_Hakkari_Bindings = "原始哈卡莱护腕";
ATLASLOOT_Primal_Hakkari_Sash = "原始哈卡莱腰带";
ATLASLOOT_Primal_Hakkari_Stanchion = "原始哈卡莱直柱";
ATLASLOOT_Primal_Hakkari_Aegis = "原始哈卡莱之盾";
ATLASLOOT_Primal_Hakkari_Girdle = "原始哈卡莱束带";
ATLASLOOT_Primal_Hakkari_Armsplint = "原始哈卡莱护臂";
ATLASLOOT_Primal_Hakkari_Tabard = "原始哈卡莱徽章";

ATLASLOOT_Qiraji_Ornate_Hilt = "其拉装饰护裙";
ATLASLOOT_Qiraji_Martial_Drape = "其拉军用披风";
ATLASLOOT_Qiraji_Magisterial_Ring = "其拉将领戒指";
ATLASLOOT_Qiraji_Ceremonial_Ring = "其拉典礼戒指";
ATLASLOOT_Qiraji_Regal_Drape = "其拉帝王披风";
ATLASLOOT_Qiraji_Spiked_Hilt = "其拉尖刺护裙";

ATLASLOOT_Qiraji_Bindings_of_Dominance = "其拉统御腕轮";
ATLASLOOT_Veknilashs_Circlet = "维克尼拉斯的头饰";
ATLASLOOT_Ouros_Intact_Hide = "奥罗的外皮";
ATLASLOOT_Husk_of_the_Old_God = "上古之神的外鞘";
ATLASLOOT_Qiraji_Bindings_of_Command = "其拉命令腕轮";
ATLASLOOT_Veklors_Diadem = "维克洛尔的王冠";
ATLASLOOT_Skin_of_the_Great_Sandworm = "巨型沙虫的皮";
ATLASLOOT_Carapace_of_the_Old_God = "上古之神的甲壳";

ATLASLOOT_SCARLETSET = "套装：血色十字军链甲（6件）";
ATLASLOOT_SCARLETDEFENDER = "血色防御者/血色仆从掉落";
ATLASLOOT_SCARLETTRASH = "普通怪物掉落";
ATLASLOOT_SCARLETCHAMPION = "血色勇士掉落";
ATLASLOOT_SCARLETCENTURION = "血色百夫长掉落";
ATLASLOOT_SCARLETHEROD = "赫洛德/莫格莱尼掉落";
ATLASLOOT_SCARLETPROTECTOR = "血色保卫者/血色卫兵掉落";

ATLASLOOT_AQ40_SETS = "安其拉神殿相关套装";
ATLASLOOT_AQ20_SETS = "安其拉废墟相关套装";
ATLASLOOT_ZG_SETS = "祖尔格拉布相关套装";
ATLASLOOT_TIER0_SETS = "T0套装";
ATLASLOOT_TIER05_SETS = "T0.5套装";
ATLASLOOT_TIER1_SETS = "T1套装";
ATLASLOOT_TIER2_SETS = "T2套装";
ATLASLOOT_TIER3_SETS = "T3套装";
ATLASLOOT_PVP_SETS = "荣誉奖励套装";

ATLASLOOT_ZG_DRUID = "占卜师套装";
ATLASLOOT_ZG_HUNTER = "捕猎者套装";
ATLASLOOT_ZG_MAGE = "幻术师套装";
ATLASLOOT_ZG_PALADIN = "思考者护甲";
ATLASLOOT_ZG_PRIEST = "忏悔者衣饰";
ATLASLOOT_ZG_ROGUE = "狂妄者套装";
ATLASLOOT_ZG_SHAMAN = "预言者套装";
ATLASLOOT_ZG_WARLOCK = "恶魔师护甲";
ATLASLOOT_ZG_WARRIOR = "辩护者重甲";

ATLASLOOT_AQ20_DRUID = "不灭的生命";
ATLASLOOT_AQ20_HUNTER = "隐秘的通途";
ATLASLOOT_AQ20_MAGE = "魔法的秘密";
ATLASLOOT_AQ20_PALADIN = "永恒的公正";
ATLASLOOT_AQ20_PRIEST = "无尽的智慧";
ATLASLOOT_AQ20_ROGUE = "笼罩之阴影";
ATLASLOOT_AQ20_SHAMAN = "聚集的风暴";
ATLASLOOT_AQ20_WARLOCK = "禁断的邪语";
ATLASLOOT_AQ20_WARRIOR = "坚定的力量";

ATLASLOOT_AQ40_DRUID = "起源套装";
ATLASLOOT_AQ40_HUNTER = "攻击者";
ATLASLOOT_AQ40_MAGE = "神秘套装";
ATLASLOOT_AQ40_PALADIN = "复仇者";
ATLASLOOT_AQ40_PRIEST = "神谕者";
ATLASLOOT_AQ40_ROGUE = "死亡执行者的拥抱";
ATLASLOOT_AQ40_SHAMAN = "风暴召唤者";
ATLASLOOT_AQ40_WARLOCK = "厄运召唤者";
ATLASLOOT_AQ40_WARRIOR = "征服者";

ATLASLOOT_T0_DRUID = "野性之心";
ATLASLOOT_T0_HUNTER = "野兽追猎者";
ATLASLOOT_T0_MAGE = "博学者的徽记";
ATLASLOOT_T0_PALADIN = "光铸护甲";
ATLASLOOT_T0_PRIEST = "虔诚";
ATLASLOOT_T0_ROGUE = "迅影";
ATLASLOOT_T0_SHAMAN = "元素";
ATLASLOOT_T0_WARLOCK = "鬼雾";
ATLASLOOT_T0_WARRIOR = "勇气";

ATLASLOOT_T05_DRUID = "狂野之心";
ATLASLOOT_T05_HUNTER = "兽王";
ATLASLOOT_T05_MAGE = "巫师";
ATLASLOOT_T05_PALADIN = "魂铸";
ATLASLOOT_T05_PRIEST = "坚贞";
ATLASLOOT_T05_ROGUE = "暗幕";
ATLASLOOT_T05_SHAMAN = "五雷";
ATLASLOOT_T05_WARLOCK = "死雾";
ATLASLOOT_T05_WARRIOR = "英勇";

ATLASLOOT_T1_DRUID = "塞纳里奥";
ATLASLOOT_T1_HUNTER = "巨人追猎者";
ATLASLOOT_T1_MAGE = "奥术师";
ATLASLOOT_T1_PALADIN = "秩序之源";
ATLASLOOT_T1_PRIEST = "预言";
ATLASLOOT_T1_ROGUE = "夜幕杀手";
ATLASLOOT_T1_SHAMAN = "大地之怒";
ATLASLOOT_T1_WARLOCK = "恶魔之心";
ATLASLOOT_T1_WARRIOR = "力量";

ATLASLOOT_T2_DRUID = "怒风";
ATLASLOOT_T2_HUNTER = "巨龙追猎者";
ATLASLOOT_T2_MAGE = "灵风";
ATLASLOOT_T2_PALADIN = "审判";
ATLASLOOT_T2_PRIEST = "卓越";
ATLASLOOT_T2_ROGUE = "血牙";
ATLASLOOT_T2_SHAMAN = "无尽风暴";
ATLASLOOT_T2_WARLOCK = "复仇";
ATLASLOOT_T2_WARRIOR = "愤怒";

ATLASLOOT_T3_DRUID = "梦游者";
ATLASLOOT_T3_HUNTER = "地穴追猎者";
ATLASLOOT_T3_MAGE = "霜火";
ATLASLOOT_T3_PALADIN = "救赎";
ATLASLOOT_T3_PRIEST = "信仰";
ATLASLOOT_T3_ROGUE = "骨镰";
ATLASLOOT_T3_SHAMAN = "碎地者";
ATLASLOOT_T3_WARLOCK = "瘟疫之心";
ATLASLOOT_T3_WARRIOR = "无畏";

ATLASLOOT_BROOD_CONQUEROR = "Path of the Conqueror";
ATLASLOOT_BROOD_INVOKER = "Path of the Invoker";
ATLASLOOT_BROOD_PROTECTOR = "Path of the Protector";

ATLASLOOT_AQ40_CLASS_SET_PIECES_1 = "X) 安其拉神殿职业套装";
ATLASLOOT_AQ40_BROOD_RINGS = "X) Brood of Nozdormu Rings";
ATLASLOOT_ZG_CLASS_SET_PIECES_1 = "X) 祖尔格拉布职业套装";
ATLASLOOT_AQ20_CLASS_SET_PIECES_1 = "X) 安其拉废墟职业套装";
ATLASLOOT_NAXX_SET_PIECES = "X) T3套装";
ATLASLOOT_BWL_SET_PIECES = "X) T2套装";
ATLASLOOT_MC_SET_PIECES = "X) T1套装";
ATLASLOOT_T0_SET_PIECES = "X) T0/T0.5套装";
ATLASLOOT_AQ_ENCHANTS = "X) 安其拉的附魔公式";
ATLASLOOT_ZG_ENCHANTS = "X) 祖尔格拉布的附魔任务";
ATLASLOOT_CLASS_BOOKS = "X) 职业技能书";
ATLASLOOT_TRIBUTE_RUN = "X) 贡品";
ATLASLOOT_DM_BOOKS = "X) 厄运之槌职业书籍";
ATLASLOOT_TRASH_MOBS = "X) 普通怪物";
ATLASLOOT_RANDOM_LOOT = "X) 首领的随机掉落";
ATLASLOOT_CLASS_SET_PIECES = "X) 职业套装一览";
ATLASLOOT_NO_ITEMINFO = " |cffff0000（不安全）";

ATLASLOOT_OPTIONS_TITLE = "Atlasloot选项";
ATLASLOOT_OPTIONS_SAFE_LINKS = "安全物品链接|cff1eff00（推荐）|r";
ATLASLOOT_OPTIONS_ALL_LINKS = "使用所有链接|cffff0000（可能掉线，请仔细考虑）|r";
ATLASLOOT_OPTIONS_DEFAULT_TOOLTIPS = "默认提示";
ATLASLOOT_OPTIONS_LOOTLINK_TOOLTIPS = "Lootlink提示|cff1eff00（推荐）|r";
ATLASLOOT_OPTIONS_LOOTLINK_TOOLTIPS_DISABLED = "|cff9d9d9dLootlink提示（推荐）|r";
ATLASLOOT_OPTIONS_ITEMSYNC_TOOLTIPS = "ItemSync提示";
ATLASLOOT_OPTIONS_ITEMSYNC_TOOLTIPS_DISABLED = "|cff9d9d9dItemSync提示|r";
ATLASLOOT_OPTIONS_EQUIPCOMPARE = "使用EquipCompare（装备比较）";
ATLASLOOT_OPTIONS_EQUIPCOMPARE_DISABLED = "|cff9d9d9d使用EquipCompare（装备比较）|r";
ATLASLOOT_OPTIONS_DONE = "完成";

ATLASLOOT_BG_FRIENDLY = "友善关系时声望奖励";
ATLASLOOT_BG_HONORED = "尊敬关系时声望奖励";
ATLASLOOT_BG_REVERED = "崇敬关系时声望奖励";
ATLASLOOT_BG_EXALTED = "崇拜关系时声望奖励";

ATLASLOOT_BG_STORMPIKE = "雷矛卫队";
ATLASLOOT_BG_FROSTWOLF = "霜狼氏族";
ATLASLOOT_BG_SENTINELS = "银翼要塞";
ATLASLOOT_BG_OUTRIDERS = "战歌前锋";
ATLASLOOT_BG_ARATHOR = "阿拉索联军";
ATLASLOOT_BG_DEFILERS = "污染者";

ATLASLOOT_PVP_EPIC_H_DRUID = "督军的圣装";
ATLASLOOT_PVP_EPIC_H_HUNTER = "督军的猎装";
ATLASLOOT_PVP_EPIC_H_MAGE = "督军的法衣";
ATLASLOOT_PVP_EPIC_H_PRIEST = "督军的神服";
ATLASLOOT_PVP_EPIC_H_ROGUE = "督军的制服";
ATLASLOOT_PVP_EPIC_H_SHAMAN = "督军的震撼";
ATLASLOOT_PVP_EPIC_H_WARLOCK = "督军的魔装";
ATLASLOOT_PVP_EPIC_H_WARRIOR = "督军的战甲";

ATLASLOOT_PVP_EPIC_A_DRUID = "元帅的圣装";
ATLASLOOT_PVP_EPIC_A_HUNTER = "元帅的猎装";
ATLASLOOT_PVP_EPIC_A_MAGE = "元帅的法衣";
ATLASLOOT_PVP_EPIC_A_PALADIN = "元帅的庇护";
ATLASLOOT_PVP_EPIC_A_PRIEST = "元帅的神服";
ATLASLOOT_PVP_EPIC_A_ROGUE = "元帅的制服";
ATLASLOOT_PVP_EPIC_A_WARLOCK = "元帅的魔装";
ATLASLOOT_PVP_EPIC_A_WARRIOR = "元帅的战甲";

ATLASLOOT_PVP_RARE_H_DRUID = "勇士的庇护";
ATLASLOOT_PVP_RARE_H_HUNTER = "勇士的职责";
ATLASLOOT_PVP_RARE_H_MAGE = "勇士的秘密";
ATLASLOOT_PVP_RARE_H_PRIEST = "勇士的授权";
ATLASLOOT_PVP_RARE_H_ROGUE = "勇士的护卫";
ATLASLOOT_PVP_RARE_H_SHAMAN = "勇士的风暴";
ATLASLOOT_PVP_RARE_H_WARLOCK = "勇士的鬼纹";
ATLASLOOT_PVP_RARE_H_WARRIOR = "勇士的战铠";

ATLASLOOT_PVP_RARE_A_DRUID = "少校的庇护";
ATLASLOOT_PVP_RARE_A_HUNTER = "少校的职责";
ATLASLOOT_PVP_RARE_A_MAGE = "少校的秘密";
ATLASLOOT_PVP_RARE_A_PALADIN = "少校的壁垒";
ATLASLOOT_PVP_RARE_A_PRIEST = "少校的授权";
ATLASLOOT_PVP_RARE_A_ROGUE = "少校的护卫";
ATLASLOOT_PVP_RARE_A_WARLOCK = "少校的鬼纹";
ATLASLOOT_PVP_RARE_A_WARRIOR = "少校的战铠";

ATLASLOOT_PVP_SET_PIECES = "PvP套装";
ATLASLOOT_PVP_SET_PIECES_HEADER = "PvP声望奖励";
ATLASLOOT_PVP_EPIC_SET = "史诗品质的套装";
ATLASLOOT_PVP_RARE_SET = "精良品质的套装";

ATLASLOOT_PANEL_BUTTON_OPTIONS = "选项";
ATLASLOOT_PANEL_BUTTON_SETS = "套装";

ATLASLOOT_LEGENDARIES = "Legendary Items";

end