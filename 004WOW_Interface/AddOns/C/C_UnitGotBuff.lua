function C_UnitGotBuff(unit, buff)
	-- figure out if this player got this buff
	local bufftexture = C_buff_texture_map[buff];
	if (not bufftexture) then
		return;
	end
	local name = C_UnitName(unit);
	if (string.find(unit, "pet")) then
		-- pet
		if (unit == "pet") then
			name = C_UnitName("player") .. "-" .. name;
		else
			name = C_UnitName(string.gsub(unit, "pet", "")) .. "-" .. name;
		end
	end
	if (not C_player_data[name] or not C_player_data[name]["Buff"][bufftexture]) then
		return;
	end
	if (C_player_data[name]["Buff"][bufftexture]["Tick"] == C_player_data[name]["CurrentTick"] and C_player_data[name]["Buff"][bufftexture]["Name"] == buff) then
		return C_player_data[name]["Buff"][bufftexture];
	end
end
