------------------------------
--      Are you local?      --
------------------------------

local L = AceLibrary("AceLocale-2.2"):new("Automaton")
local waterfall = AceLibrary("Waterfall-1.0")

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	["Enabled"] = true,
	["Suspend/resume this module"] = true,
	["Debugging"] = true,
	["Toggle debugging for this module"] = true,
} end)

L:RegisterTranslations("zhCN", function() return {
	["Enabled"] = "启用",
	["Suspend/resume this module"] = "启用该自动模块",
	["Debugging"] = "调试",
	["Toggle debugging for this module"] = "开关该模块的调试模式",
} end)

---------------------------------
--      Addon Declaration      --
---------------------------------

Automaton = AceLibrary("AceAddon-2.0"):new("AceConsole-2.0", "AceEvent-2.0", "AceDebug-2.0", "AceDB-2.0", "AceModuleCore-2.0")
Automaton:SetModuleMixins("AceConsole-2.0", "AceEvent-2.0", "AceDebug-2.0")
Automaton.version = tonumber(string.sub("$1.1.2$", 12, -3))
Automaton.options = {
	type = 'group',
	args = {},
}

Automaton:RegisterDB("AutomatonDB")
Automaton:RegisterChatCommand({"/autocl", "/automatoncl"}, Automaton.options)
Automaton:RegisterChatCommand({ "/auto", "/automaton"}, function() waterfall:Open('Automaton') end)
waterfall:Register('Automaton', 'aceOptions', Automaton.options, 'title','Automaton自动功能') 

------------------------------
--      Initialization      --
------------------------------

function Automaton:OnInitialize()
end

function Automaton:SetDisabledAsDefault(object,name)
	if object.db.profile.disabled then
		object.db.profile.disabled = false
		self:ToggleModuleActive(name, false)
	end
end

--------------------------------
--      Module Prototype      --
--------------------------------

function Automaton.modulePrototype:RegisterOptions(options)
	options.enabled = {
		order = 1,
		type = 'toggle',
		name = L["Enabled"],
		desc = L["Suspend/resume this module"],
		get = function() return Automaton:IsModuleActive(self.name) end,
		set = function(v) Automaton:ToggleModuleActive(self.name, v) end,
	}
	options.debugging = {
		order = 999,
		type = 'toggle',
		name = L["Debugging"],
		desc = L["Toggle debugging for this module"],
		get = function() return self:IsDebugging() end,
		set = function(v) self:SetDebugging(v) end,
	}
	Automaton.options.args[self.name] = {
		type = 'group',
		name = self.modulename,
		desc = self.moduledesc,
		args = options,
	}
end

----------------------------
--      FuBar Plugin      --
----------------------------

Automaton_Options = Automaton:NewModule("Automaton", "AceDB-2.0", "FuBarPlugin-2.0")
Automaton_Options:RegisterDB("AutomatonFubarDB")

Automaton_Options.name = "FuBar - Automaton"
Automaton_Options.hasNoColor = true
Automaton_Options.hasIcon = "Interface\\Icons\\Inv_trinket_naxxramas02"
Automaton_Options.defaultMinimapPosition = 180
Automaton_Options.hideWithoutStandby = true
Automaton_Options.OnClick = function() waterfall:Open('Automaton') end

-- XXX total hack
Automaton_Options.OnMenuRequest = Automaton.options
local args = AceLibrary("FuBarPlugin-2.0"):GetAceOptionsDataTable(Automaton_Options)
for k,v in pairs(args) do
	if Automaton_Options.OnMenuRequest.args[k] == nil then
		Automaton_Options.OnMenuRequest.args[k] = v
	end
end
-- XXX end hack