assert(Automaton, "Automaton not found!")

------------------------------
--      Are you local?      --
------------------------------

local L = AceLibrary("AceLocale-2.2"):new("Automaton_follow")

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	["follow"] = true,
	["Options for sending out party follows."] = true,
	["follow text"] = true,
	["The text users send to trigger an follow."] = true,
	["keyword follow"] = true,
	["Ignore case"] = true,
	["Disable case sensitivity for the follow text"] = true,


} end)

L:RegisterTranslations("zhCN", function() return {
	["follow"] = "密语跟随",
	["Options for sending out party follows."] = "自动邀请密语你关键字的玩家",
	["follow text"] = "关键字",
	["The text users send to trigger an follow."] = "密语关键字",
	["keyword follow"] = "关键字邀请",
	["Ignore case"] = "模糊关键字",
	["Disable case sensitivity for the follow text"] = "模糊关键字的匹配(不论大小写等)",


} end)

----------------------------------
--      Module Declaration      --
----------------------------------

Automaton_follow = Automaton:NewModule("follow")
Automaton_follow.modulename = L["follow"]
Automaton_follow.moduledesc = L["Options for sending out party follows."]
Automaton_follow.options = {
	keyword = {
		type = "text", name = L["follow text"], desc = L["The text users send to trigger an follow."],
		order = 3, usage = L["keyword follow"],
		get = function() return Automaton_follow.db.profile.followString end,
		set = function(v) Automaton_follow.db.profile.followString = v end,
	},
	case = {
		type = "toggle", name = L["Ignore case"], desc = L["Disable case sensitivity for the follow text"],
		order = 2,
		get = function() return Automaton_follow.db.profile.ignoreCase end,
		set = function(v) Automaton_follow.db.profile.ignoreCase = v end,
	},
}

------------------------------
--      Initialization      --
------------------------------

function Automaton_follow:OnInitialize()
	self.db = Automaton:AcquireDBNamespace("follow")
	Automaton:RegisterDefaults("follow", "profile", {
		disabled = true,
		followString = "On me",
		ignoreCase = true,
		turnraid = false,
	})
	Automaton:SetDisabledAsDefault(self, "follow")
	
	self:RegisterOptions(self.options)
end

function Automaton_follow:OnEnable()
	self:RegisterEvent("CHAT_MSG_WHISPER")
	self:RegisterEvent("CHAT_MSG_SAY")
	self:RegisterEvent("CHAT_MSG_PARTY")
end

function Automaton_follow:OnDisable()
	self:UnregisterAllEvents()
end

------------------------------
--      Event Handlers      --
------------------------------
function Automaton_follow:CHAT_MSG_SAY(text,from)
	local keyword, msg, numgroup
	local player = from
	local keyword = Automaton_follow.db.profile.followString
	local msg = text
	if Automaton_follow.db.profile.ignoreCase then
		keyword = string.lower(keyword)
		msg = string.lower(msg)
	end
	if string.find(msg,format("^%s$",keyword)) then
		FollowByName(player)
		--SendChatMessage("收到跟随指令，正在跟随!", "WHISPER", nil,player)
		AssistByName(player)
	end
end

function Automaton_follow:CHAT_MSG_PARTY(text,from)
	local keyword, msg, numgroup
	local player = from
	local keyword = Automaton_follow.db.profile.followString
	local msg = text
	if Automaton_follow.db.profile.ignoreCase then
		keyword = string.lower(keyword)
		msg = string.lower(msg)
	end
	if string.find(msg,format("^%s$",keyword)) then
		FollowByName(player)
		--SendChatMessage("收到跟随指令，正在跟随!", "WHISPER", nil,player)
		AssistByName(player)
	end
end

function Automaton_follow:CHAT_MSG_WHISPER(text,from)
	local keyword, msg, numgroup
	local player = from
	local keyword = Automaton_follow.db.profile.followString
	local msg = text
	if Automaton_follow.db.profile.ignoreCase then
		keyword = string.lower(keyword)
		msg = string.lower(msg)
	end
	if string.find(msg,format("^%s$",keyword)) then
		FollowByName(player)
		--SendChatMessage("收到跟随指令，正在跟随!", "WHISPER", nil,player)
		AssistByName(player)
	end
end