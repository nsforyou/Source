assert(Automaton, "Automaton not found!")

------------------------------
--      Are you local?      --
------------------------------

local L = AceLibrary("AceLocale-2.2"):new("Automaton_Dismount")

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
    ["Dismount"] = true,	
	["Automatically dismount, cancel forms druid, shaman, priest, when you receive the appropriate error"] = true,
} end)

L:RegisterTranslations("zhCN", function() return {
    ["Dismount"] = "下马",
	["Automatically dismount, cancel forms druid, shaman, priest, when you receive the appropriate error"] = "当报错提示时或与飞行管理员对话时自动下马",
} end)

----------------------------------
--      Module Declaration      --
----------------------------------

Automaton_Dismount = Automaton:NewModule("Dismount")
Automaton_Dismount.modulename = L["Dismount"]
Automaton_Dismount.moduledesc = L["Automatically dismount, cancel forms druid, shaman, priest, when you receive the appropriate error"]
Automaton_Dismount.options = {}

------------------------------
--      Initialization      --
------------------------------

function Automaton_Dismount:OnInitialize()
	self:RegisterOptions(self.options)
end

function Automaton_Dismount:OnEnable()
	self:RegisterEvent("UI_ERROR_MESSAGE")
	self:RegisterEvent("TAXIMAP_OPENED")
end

function Automaton_Dismount:OnDisable()
	self:UnregisterAllEvents()
end

------------------------------
--      Event Handlers      --
------------------------------

BuffsList = {
	"_mount_",						--常规坐骑
	"spell_nature_swiftness",		--骸骨军马、机械陆行鸟、科多兽、地狱战马、迅猛龙等
	"_qirajicrystal_",				--其拉共鸣水晶
	
	--------特殊坐骑请玩家自行往下添加--------
	"hunter_pet_turtle", 			--乌龟坐骑 
	"warstomp", 					--斑马坐骑 
	"bullrush", 					--幽灵狮鹫	
}

ErrorsList = { 
	SPELL_FAILED_NOT_MOUNTED, ERR_ATTACK_MOUNTED, ERR_TAXIPLAYERALREADYMOUNTED,
	SPELL_FAILED_NOT_SHAPESHIFT, SPELL_FAILED_NO_ITEMS_WHILE_SHAPESHIFTED, SPELL_NOT_SHAPESHIFTED,
	SPELL_NOT_SHAPESHIFTED_NOSPACE, ERR_CANT_INTERACT_SHAPESHIFTED, ERR_NOT_WHILE_SHAPESHIFTED,
	ERR_NO_ITEMS_WHILE_SHAPESHIFTED, ERR_TAXIPLAYERSHAPESHIFTED,ERR_MOUNT_SHAPESHIFTED
}

function Automaton_Dismount:UI_ERROR_MESSAGE(msg)
    for id, errorstring in pairs(ErrorsList) do
		if arg1 == errorstring then
			for i=0,31,1 do
				currBuffTex = GetPlayerBuffTexture(i);
				if (currBuffTex) then
					for id, bufftype in pairs(BuffsList) do
						if string.find(string.lower(currBuffTex), bufftype) then
							CancelPlayerBuff(i);
						end
					end
				end
			end
		end
	end
end

function Automaton_Dismount:TAXIMAP_OPENED()
	for i=0,31,1 do
		currBuffTex = GetPlayerBuffTexture(i);
		if (currBuffTex) then
			for id, bufftype in pairs(BuffsList) do
				if string.find(string.lower(currBuffTex), bufftype) then
					CancelPlayerBuff(i);
				end
			end
		end
	end
end