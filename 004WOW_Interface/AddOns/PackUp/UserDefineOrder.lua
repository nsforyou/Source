-- BagID
PACKUP_BAGID_BODY = {
	{bagID = 0, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 1, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 2, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 3, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 4, enable = true, order = PACKUP_ORDER_ASC}
}
PACKUP_BAGID_BANK = {
	{bagID = -1, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 5, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 6, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 7, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 8, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 9, enable = true, order = PACKUP_ORDER_ASC}
	,{bagID = 10, enable = true, order = PACKUP_ORDER_ASC}
}

-- User Define Order
PACKUP_UDO = {}

-- User Define Order : Bag
PACKUP_ORDER_BAG = "$Bag"
PACKUP_UDO[PACKUP_ORDER_BAG] = {
	{key = PACKUP_INFO_SUBTYPE, value = {PACKUP_BAG_NORMAL}, order = 0}
	,{key = PACKUP_INFO_SUBTYPE, value = {PACKUP_BAG_ENGINEER, PACKUP_BAG_GEM, PACKUP_BAG_MINE, PACKUP_BAG_ENCHANT, PACKUP_BAG_HERB, PACKUP_BAG_SOUL, PACKUP_BAG_AMMO, PACKUP_BAG_QUIVER}, order = 1}
}

-- User Define Order : Item
PACKUP_ORDER_ITEM = "$Item"
PACKUP_UDO[PACKUP_ORDER_ITEM] = {
	{key = PACKUP_INFO_NAME, value = {"炉石"}, order = -1}
	,{key = PACKUP_INFO_NAME, value = {"剥皮小刀"}, order = -2}
	,{key = PACKUP_INFO_NAME, value = {"矿工锄"}, order = -3}
	,{key = PACKUP_INFO_NAME, value = {"盗贼工具"}, order = -4}
}

-- User Define Order : Enchant
PACKUP_ORDER_ENCHANT = "$Enchant"
PACKUP_UDO[PACKUP_ORDER_ENCHANT] = {
	{key = PACKUP_INFO_NAME, value = {"符文奥金棒","符文真银棒","符文金棒","符文银棒","符文铜棒"}, order = 6}
	,{key = PACKUP_INFO_NAME, value = {"大块魔光碎片","大块强光碎片","大块闪光碎片","大块微光碎片"}, order = 5}
	,{key = PACKUP_INFO_NAME, value = {"小块魔光碎片","小块强光碎片","小块闪光碎片","小块微光碎片"}, order = 4}
	,{key = PACKUP_INFO_NAME, value = {"强效不灭精华","强效虚空精华","强效星界精华","强效秘法精华","强效魔法精华"}, order = 3}
	,{key = PACKUP_INFO_NAME, value = {"次级不灭精华","次级虚空精华","次级星界精华","次级秘法精华","次级魔法精华"}, order = 2}
	,{key = PACKUP_INFO_NAME, value = {"幻影之尘","梦境之尘","幻象之尘","灵魂之尘","奇异之尘"}, order = 1}
}

-- User Order Group
PACKUP_ORDERGROUP = {}

PACKUP_BAG_SPECIAL = "$Special"
PACKUP_ORDERGROUP[PACKUP_BAG_SPECIAL] = {
	{key = PACKUP_INFO_QUANTITY, order = PACKUP_ORDER_DESC}
	,{key = PACKUP_INFO_NAME, order = PACKUP_ORDER_DESC}
}

PACKUP_ORDERGROUP[PACKUP_BAG_NORMAL] = {
	{key = PACKUP_ORDER_ITEM, order = PACKUP_ORDER_DESC}
	,{key = PACKUP_INFO_RARITY, order = PACKUP_ORDER_DESC}
	,{key = PACKUP_INFO_NAME, order = PACKUP_ORDER_DESC}
	,{key = PACKUP_INFO_QUANTITY, order = PACKUP_ORDER_DESC}
}

PACKUP_ORDERGROUP[PACKUP_BAG_ENCHANT] = {
	{key = PACKUP_ORDER_ENCHANT, order = PACKUP_ORDER_DESC}
}
