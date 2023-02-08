--不检查是否自动攻击：以下技能（尤其是盗贼技能，会在使用的时候自动判断是否自动攻击），如果出现进入战斗使用技能导致不该出现的自动攻击或者停止攻击，请在这里添加技能
local NotCheckSpell = {
	"背刺",
	"闷棍",
	"伏击",
	"偷袭",
	"绞喉",
	"瞄准射击",
}

assert(Automaton, "Automaton not found!")

------------------------------
--      Are you local?      --
------------------------------

local L = AceLibrary("AceLocale-2.2"):new("Automaton_Attack")
local aura = AceLibrary("SpecialEvents-Aura-2.0")
local BS = AceLibrary("Babble-Spell-2.2")
local semount = AceLibrary("SpecialEvents-Mount-2.0")
local notcheck = false
----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	["Attack"] = true,
	["Automatically attack."] = true,
} end)

L:RegisterTranslations("zhCN", function() return {
	["Attack"] = "攻击",
	["Automatically attack."] = "在玩家施放技能后/被攻击后自动攻击目标，在目标存在某些可能被打断的状态下则取消自动攻击。",
} end)

----------------------------------
--      Module Declaration      --
----------------------------------

Automaton_Attack = Automaton:NewModule("Attack", "AceEvent-2.0", "AceDebug-2.0")
Automaton_Attack.modulename = L["Attack"]
Automaton_Attack.moduledesc = L["Automatically attack."]
Automaton_Attack.options = {}

------------------------------
--      Initialization      --
------------------------------

function Automaton_Attack:OnInitialize()
    self.db = Automaton:AcquireDBNamespace("Loner")
	Automaton:RegisterDefaults("Attack", "profile", {
		disabled = true,
	})
	Automaton:SetDisabledAsDefault(self, "Attack")

	self:RegisterOptions(self.options)
	
	Orig_Attack_CastSpellByName = CastSpellByName
	CastSpellByName = New_Attack_CastSpellByName
	
	Orig_Attack_UseAction = UseAction
	UseAction = New_Attack_UseAction
end

function Automaton_Attack:OnEnable()
	self:RegisterEvent("PLAYER_ENTER_COMBAT")
	self:RegisterEvent("PLAYER_LEAVE_COMBAT")
	self:RegisterEvent("PLAYER_REGEN_ENABLED")
	self:RegisterEvent("PLAYER_REGEN_DISABLED")
	self:RegisterEvent("START_AUTOREPEAT_SPELL")
	self:RegisterEvent("STOP_AUTOREPEAT_SPELL")
	
	self:RegisterEvent("SpecialEvents_AuraTargetChanged")
	self:RegisterEvent("SpecialEvents_PlayerBuffGained")
	self:RegisterEvent("SpecialEvents_PlayerBuffLost")
	self:RegisterEvent("SpecialEvents_UnitDebuffGained")
	self:RegisterEvent("SpecialEvents_UnitDebuffLost")
end

function Automaton_Attack:OnDisable()
	self:UnregisterAllEvents()
end

------------------------------
--      Event Handlers      --
------------------------------

local buffs = {
	BS["Stealth"],		 			-- 潜行
	BS["Vanish"], 					-- 消失
	BS["Prowl"], 					-- 隐藏
	BS["Feign Death"], 				-- 假死
	BS["Shadowmeld"], 				-- 影盾
	BS["Food"], 					-- 食品
	BS["Drink"], 					-- 饮料
	BS["Enriched Manna Biscuit"], 	-- 可口的魔法点心
	BS["First Aid"], 				-- 急救
}

local debuffs = {
	BS["Gouge"], 					-- 凿击
	BS["Sap"], 						-- 闷棍
	BS["Seduction"], 				-- 诱惑
	BS["Polymorph"], 				-- 变形术
	BS["Polymorph: Turtle"], 		-- 变形术：龟
	BS["Polymorph: Pig"], 			-- 变形术：猪 
	BS["Tame Beast"], 				-- 驯服野兽
	BS["Scare Beast"],				-- 恐吓野兽
	BS["Sleep"], 					-- 催眠术
	BS["Hibernate"], 				-- 休眠
	BS["Fear"],					 	-- 恐惧
	BS["Mind Control"], 			-- 精神控制
	BS["Blind"], 					-- 失明
	BS["Scatter Shot"], 			-- 驱散射击
	BS["Enslave Demon"], 			-- 奴役恶魔
	BS["Shackle Undead"], 			-- 束缚亡灵
	BS["Reckless Charge"], 			-- 无畏冲锋
	BS["Freezing Trap Effect"], 	-- 冰冻陷阱影响
	--BS["Intimidating Shout"], 	  -- 破胆怒吼
	BS["Cheap Shot"], 				-- 偷袭
}

function Automaton_Attack:PLAYER_ENTER_COMBAT()
	if not self.inCombat then
		self.selfImposedCombat = true
	end
	self.attacking = true
end

function Automaton_Attack:PLAYER_LEAVE_COMBAT()
	self.attacking = false
	self.selfImposedCombat = false
end

function Automaton_Attack:PLAYER_REGEN_ENABLED()
	self.inCombat = false
	self.selfImposedCombat = false
	self:StopAttacking()
	notcheck = false
end

--hookCastSpellByName
function New_Attack_CastSpellByName(spellname, onSelf)
	Orig_Attack_CastSpellByName(spellname, onSelf)
	_NotAutoAttack(spellname)
end

--hook:UseAction
function New_Attack_UseAction(arg1, arg2, arg3)
	Orig_Attack_UseAction(arg1, arg2, arg3)
    local usableAction, outOfMana = IsUsableAction(arg1)
    if usableAction then
    	if UnitCanAttack("player", "target") then
    		if IsActionInRange(arg1) == 1 then
				GameTooltip:SetOwner(WorldFrame,"ANCHOR_NONE")
				GameTooltip:SetAction(arg1)
				local spellname = GameTooltipTextLeft1:GetText()
				GameTooltip:Hide()
				if spellname then _NotAutoAttack(spellname) end
			end
    	end
    end
end

--进入战斗后不检查
function _NotAutoAttack(spellname)
	local _, _, sname = string.find (spellname, "^([^%(]+)")
	if sname then 
		spellname = sname
	end
	for k=1, table.getn(NotCheckSpell) do
		if spellname == NotCheckSpell[k] then
			notcheck = true
		end
	end
end

function Automaton_Attack:PLAYER_REGEN_DISABLED()
	self.selfImposedCombat = false
	self.inCombat = true
	if notcheck == false then
		self:Check()
	end
end

function Automaton_Attack:START_AUTOREPEAT_SPELL()
	self.autoRepeating = true
	self:StopAttacking()
end

function Automaton_Attack:STOP_AUTOREPEAT_SPELL()
	self.autoRepeating = false
	self:Check()
end

function Automaton_Attack:SpecialEvents_AuraTargetChanged()
	self.attacking = false
	if not UnitAura("player", "潜行") then
		self:Check()
	end
end

function Automaton_Attack:SpecialEvents_PlayerBuffGained(buff)
	if buffs[buff] then
		self:Check()
	end
end

function Automaton_Attack:SpecialEvents_PlayerBuffLost(buff)
	if buffs[buff] then
		self:Check()
	end
end

function Automaton_Attack:SpecialEvents_UnitDebuffGained(unitID, debuff)
	if unitID == "target" and debuffs[debuff] then
		self:Check()
	end
	if UnitAura("target", "破胆怒吼") then
		self:StopAttacking()
	end
end

function Automaton_Attack:SpecialEvents_UnitDebuffLost(unitID, debuff)
	if unitID == "target" and debuffs[debuff] then
		self:Check()
	end
end

function Automaton_Attack:Check()
	local mount = semount:PlayerOnMount()
	if (not self.inCombat and not self.selfImposedCombat) or self.autoRepeating or not UnitExists("target") or UnitIsUnit("target", "player") or UnitIsDeadOrGhost("target") or not UnitCanAttack("player", "target") or UnitIsFriend("player", "target") or self:PlayerHasSpecialBuff() or self:TargetIsCrowdControlled() or mount then
		self:StopAttacking()
	else
		self:StartAttacking()
	end
end

function Automaton_Attack:StopAttacking()
	if self.attacking then
		AttackTarget()
	end
end

function Automaton_Attack:StartAttacking()
	if not self.attacking then
		AttackTarget()
	end
end

function Automaton_Attack:PlayerHasSpecialBuff()
	for buff in pairs(buffs) do
		if aura:UnitHasBuff("player", buff) then
			return true
		end
	end
	return false
end

function Automaton_Attack:TargetIsCrowdControlled()
	for debuff in pairs(debuffs) do
		if aura:UnitHasDebuff("target", debuff) then
			return true
		end
	end
	return false
end