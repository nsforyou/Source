local curChannelList = {"工会","团队","队伍","近聊","自己"}
local smsg = ""
local channelselect = "自己"
local buffraidlist={}
local dpsnamelist={
CHECKBUFFC5NAME1,
CHECKBUFFC5NAME2,
CHECKBUFFC5NAME3,
CHECKBUFFC5NAME4,
CHECKBUFFC5NAME5,
CHECKBUFFC5NAME6,
CHECKBUFFC5NAME7,
CHECKBUFFC5NAME8,
CHECKBUFFC5NAME9,
CHECKBUFFC5NAME10,
CHECKBUFFC5NAME11,
}
local dpstextlist={
CHECKBUFFC5TEXT1,
CHECKBUFFC5TEXT2,
CHECKBUFFC5TEXT3,
CHECKBUFFC5TEXT4,
CHECKBUFFC5TEXT5,
CHECKBUFFC5TEXT6,
CHECKBUFFC5TEXT7,
CHECKBUFFC5TEXT8,
CHECKBUFFC5TEXT9,
CHECKBUFFC5TEXT10,
CHECKBUFFC5TEXT11,
}
local bufftextlist = {
CHECKBUFFA1TEXT,
CHECKBUFFA2TEXT,
CHECKBUFFA3TEXT,
CHECKBUFFA4TEXT,
CHECKBUFFA5TEXT,
CHECKBUFFA6TEXT,
CHECKBUFFA7TEXT,
CHECKBUFFA8TEXT,
CHECKBUFFA9TEXT,
CHECKBUFFA10TEXT,
CHECKBUFFA11TEXT,
CHECKBUFFB1TEXT,
CHECKBUFFB2TEXT,
CHECKBUFFB3TEXT1,
CHECKBUFFB4TEXT1,
CHECKBUFFB5TEXT1,
CHECKBUFFB6TEXT,
CHECKBUFFB7TEXT1,
CHECKBUFFC4TEXT,
CHECKBUFFB3TEXT2,
CHECKBUFFB4TEXT2,
CHECKBUFFB5TEXT2,
CHECKBUFFB7TEXT2,
}
local buffnamelist={
}
local checknum = 0
local addname=""
local checknumds = 0
local raidnumber=0
local buffd9checked=0
local buttontypeq={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}
local buttontypen={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}
local buttontypes={}
local simclasslist={
SIMCLASS1,
SIMCLASS2,
SIMCLASS3,
SIMCLASS4,
SIMCLASS5,
SIMCLASS6,
SIMCLASS7,
SIMCLASS8,
}
local classlist = {
LOCALCLASS1,
LOCALCLASS2,
LOCALCLASS3,
LOCALCLASS4,
LOCALCLASS5,
LOCALCLASS6,
LOCALCLASS7,
LOCALCLASS8,
}

RC_version = "0.51"
RC_MainLabel = "RAIDCHECK"..RC_version

function RC_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("PLAYER_ENTERING_WORLD")
	SlashCmdList["RC"] = RC_SlashHandler;
	SLASH_RC1 = "/rc";
end

function RC_OnEvent()
	if ( event == "VARIABLES_LOADED" ) then
		DEFAULT_CHAT_FRAME:AddMessage("RaidCheck"..RC_version.."输入命令/rc打开菜单")
	end
	if ( event == "PLAYER_ENTERING_WORLD" ) then
		RC_Initialize()
	end
end

function RC_Initialize()
	this:UnregisterEvent("PLAYER_ENTERING_WORLD")
	RC_ChannelDropDown_OnShow()
	RC_MainFrameEditBox:SetText("4200")	
	if(UnitFactionGroup("player") == "Horde") then
		classlist[6]=LOCALCLASS9
		simclasslist[6]=SIMCLASS9
		RC_MainFrameBuffa7Button:Hide()
		RC_MainFrameBuffa8Button:Hide()
		RC_MainFrameBuffa9Button:Hide()
		RC_MainFrameBuffa10Button:Hide()
		RC_MainFrameBuffa11Button:Hide()
		RC_MainFrameBuffd6CheckBoxText:SetText(CHECKBUFFD9)
	end
	RC_Clean()
end
function RC_SlashHandler(msg)
	RC_MainFrame:Show()
	RC_Clean()
end
function RC_ChannelDropDown_Initialize()
	local info;
	for i = 1, getn(curChannelList), 1 do
		info = {
			text = curChannelList[i];
			func = RC_ChannelDropDown_OnClick;
		};
		UIDropDownMenu_AddButton(info);
		if (curChannelList[i] == channelselect) then
			UIDropDownMenu_SetSelectedID(RC_MainFrameChannelsDropdown, i);
			UIDropDownMenu_SetText(curChannelList[i], RC_MainFrameChannelsDropdown);
		end
	end
end
function RC_ChannelDropDown_OnClick()
	i = this:GetID();
	UIDropDownMenu_SetSelectedID(RC_MainFrameChannelsDropdown, i);
	channelselect = this:GetText();
	RC_ChannelDropDown_OnShow();
end
function RC_ChannelDropDown_OnShow()
	UIDropDownMenu_Initialize(RC_MainFrameChannelsDropdown, RC_ChannelDropDown_Initialize);
	UIDropDownMenu_SetWidth(64, RC_MainFrameChannelsDropdown);
end
function RC_ClassAll()
	for i=1,8,1 do
		local checkBoxName = "RC_MainFrameBuffd"..i.."CheckBox"
		getglobal(checkBoxName):SetChecked(1)
	end
end
function RC_Clean()
	for i=1,11,1 do
		local checkBoxName = "RC_MainFrameBuffa"..i.."Button"
		getglobal(checkBoxName):SetTextColor(1, 0.82, 0)
	end
	for i=1,7,1 do
		local checkBoxName = "RC_MainFrameBuffb"..i.."Button"
		getglobal(checkBoxName):SetTextColor(1, 0.82, 0)
	end
	for i=1,5,1 do
		local checkBoxName = "RC_MainFrameBuffc"..i.."Button"
		getglobal(checkBoxName):SetTextColor(1, 0.82, 0)
	end
	for i=1,10,1 do
		local checkBoxName = "RC_MainFrameBuffd"..i.."CheckBox"
		getglobal(checkBoxName):SetChecked(0)
	end
	buttontypeq={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}
	buttontypen={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}
	if IsRaidLeader() or IsRaidOfficer() then
		RC_MainFrameBuffd10CheckBox:Show()
	else
		RC_MainFrameBuffd10CheckBox:Hide()
	end
end
function RC_SetTip()
	if this == RC_MainFrameBuffa1Button then
		if (buttontypen[1]==0 and buttontypeq[1]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[1].."人缺智力"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][6]==i and buffraidlist[j][7]==0) then
						RC_ResultToolTip:AddLine((i.."队"..simclasslist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffa2Button then
		if (buttontypen[2]==0 and buttontypeq[2]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[2].."人缺耐力"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][6]==i and buffraidlist[j][8]==0) then
						RC_ResultToolTip:AddLine((i.."队"..simclasslist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end			
		end
	end
	if this == RC_MainFrameBuffa3Button then		
		if (buttontypen[3]==0 and buttontypeq[3]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[3].."人缺精神"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][6]==i and buffraidlist[j][9]==0) then
						RC_ResultToolTip:AddLine((i.."队"..simclasslist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffa4Button then
		if (buttontypen[4]==0 and buttontypeq[4]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[4].."人缺爪子"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][6]==i and buffraidlist[j][10]==0) then
						RC_ResultToolTip:AddLine((i.."队"..simclasslist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffa5Button then
		if (buttontypen[5]==0 and buttontypeq[5]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[5].."人缺暗抗"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][6]==i and buffraidlist[j][11]==0) then
						RC_ResultToolTip:AddLine((i.."队"..simclasslist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffa6Button then
		if (buttontypen[6]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[6].."人已绑灵魂石"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for j=1,raidnumber,1 do
				if (buffraidlist[j][4]>0 and buffraidlist[j][12]==1 and (buffraidlist[j][5]==5 or buffraidlist[j][5]==6)) then
					RC_ResultToolTip:AddLine((classlist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
				end
			end
		else
			RC_ResultToolTip:AddLine("警告!无人绑灵魂石", 1, 0, 0)
		end
	end
	if this == RC_MainFrameBuffa7Button then
		if (buttontypen[7]==0 and buttontypeq[7]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[7].."人缺智慧祝福"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=3,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][13]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffa8Button then
		if (buttontypen[8]==0 and buttontypeq[8]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[8].."人缺王者祝福"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][14]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end	
	if this == RC_MainFrameBuffa9Button then
		if (buttontypen[9]==0 and buttontypeq[9]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[9].."人缺光明祝福"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][15]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end		
	if this == RC_MainFrameBuffa10Button then
		if (buttontypen[10]==0 and buttontypeq[10]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[10].."人缺力量祝福"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,2,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][16]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end		
	if this == RC_MainFrameBuffa11Button then
		if (buttontypen[11]==0 and buttontypeq[11]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[11].."人缺拯救祝福"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][17]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end	
	if this == RC_MainFrameBuffb1Button then
		if (buttontypen[12]==0 and buttontypeq[12]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[12].."人无泰坦药剂"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][18]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffb2Button then
		if (buttontypen[13]==0 and buttontypeq[13]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[13].."人无超能药剂"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=3,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][19]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffb3Button then
		if (buttontypen[14]==0 and buttontypeq[14]==0) then
			local nlname="人无暗抗药剂"
			local nlnum=1
			if buffd9checked==1 then
				nlname="人无强效暗抗"
				nlnum=2
			end
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[14]..nlname), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][20]<nlnum) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffb4Button then
		if (buttontypen[15]==0 and buttontypeq[15]==0) then
			local nlname="人无火抗药剂"
			local nlnum=1
			if buffd9checked==1 then
				nlname="人无强效火抗"
				nlnum=2
			end
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[15]..nlname), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][21]<nlnum) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffb5Button then
		if (buttontypen[16]==0 and buttontypeq[16]==0) then
			local nlname="人无冰抗药剂"
			local nlnum=1
			if buffd9checked==1 then
				nlname="人无强效冰抗"
				nlnum=2
			end
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[16]..nlname), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][22]<nlnum) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffb6Button then
		if (buttontypen[17]==0 and buttontypeq[17]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[16].."人无奥抗药剂"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][23]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffb7Button then
		if (buttontypen[18]==0 and buttontypeq[18]==0) then
			local nlname="人无自然药剂"
			local nlnum=1
			if buffd9checked==1 then
				nlname="人无强效自然"
				nlnum=2
			end
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[18]..nlname), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][24]<nlnum) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffc1Button then
		if (buttontypen[19]==0 and buttontypeq[19]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[19].."人未到位"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for j=1,raidnumber,1 do
				if (buffraidlist[j][2]==0) then
					RC_ResultToolTip:AddLine(("掉线:"..buffraidlist[j][1]), 1, 0, 0)
				end
			end
			for j=1,raidnumber,1 do
				if (buffraidlist[j][2]==1) then
					RC_ResultToolTip:AddLine(("死亡:"..buffraidlist[j][1]), 1, 0, 0)
				end
			end
			for j=1,raidnumber,1 do
				if (buffraidlist[j][4]>0 and buffraidlist[j][2]==2) then
					RC_ResultToolTip:AddLine(("过远:"..buffraidlist[j][1]), 1, 0.82, 0)
				end
			end
		end
	end
	if this == RC_MainFrameBuffc2Button then
		if (buttontypen[20]==0 and buttontypeq[20]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[20].."人有PVP"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for j=1,raidnumber,1 do
				if (buffraidlist[j][4]>0 and buffraidlist[j][3]==1) then
					RC_ResultToolTip:AddLine((classlist[buffraidlist[j][5]]..":"..buffraidlist[j][1]), 1, 0.82, 0)
				end
			end
		end
	end
	if this == RC_MainFrameBuffc3Button then
		if (buttontypen[21]==0 and buttontypeq[21]==0) then
			local hpnamelist={}
			local hphplist={}
			local hpsortname={}
			local hpsorthp={}
			for j=1,raidnumber,1 do
				if (buffraidlist[j][4]>0 and buffraidlist[j][4]<(RC_MainFrameHpNowButton:GetText()*1)) then
					table.insert(hpnamelist, buffraidlist[j][1])
					table.insert(hphplist, buffraidlist[j][4])
				end
			end
			for i=1,buttontypes[21],1 do
				j=1
				k=1
				tempname=hpnamelist[1]
				temphp=hphplist[1]
				while hphplist[j]~=nil do
					if temphp>=hphplist[j] then
						temphp=hphplist[j]
						k=j
					end
					j=j+1
				end
				table.insert(hpsortname,hpnamelist[k])
				table.insert(hpsorthp,hphplist[k])
				table.remove(hpnamelist,k)
				table.remove(hphplist,k)
			end
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[21].."人血量不足"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,buttontypes[21],1 do
				RC_ResultToolTip:AddLine((hpsortname[i]..":"..hpsorthp[i]), 1, 0.82, 0)
			end
		end
	end
	if this == RC_MainFrameBuffc4Button then
		if (buttontypen[22]==0 and buttontypeq[22]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine(("检查"..checknum.."队员:"..buttontypes[22].."人无黎明"), 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,8,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i and buffraidlist[j][25]==0) then
						RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]), 1, 0.82, 0)
					end
				end
			end
		end
	end
	if this == RC_MainFrameBuffc5Button then
		if (buttontypen[23]==0) then
			RC_ResultToolTip:AddLine(addname, 1, 0.82, 0)
			RC_ResultToolTip:AddLine("DPS增强情况:", 1, 0.82, 0)
			RC_ResultToolTip:AddLine(" ", 1, 0.82, 0)
			for i=1,4,1 do
				for j=1,raidnumber,1 do
					if (buffraidlist[j][4]>0 and buffraidlist[j][5]==i) then
						if buffraidlist[j][26]=="" then
							RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]..":无"), 1, 0, 0)
						else
							RC_ResultToolTip:AddLine((classlist[i]..":"..buffraidlist[j][1]..":"..buffraidlist[j][26]), 1, 0.82, 0)
						end
					end
				end
			end
			for j=1,raidnumber,1 do
				if (buffraidlist[j][4]>0 and buffraidlist[j][5]==8) then
					if buffraidlist[j][26]=="" then
						RC_ResultToolTip:AddLine(("术士:"..buffraidlist[j][1]..":无"), 1, 0, 0)
					else
						RC_ResultToolTip:AddLine(("术士:"..buffraidlist[j][1]..":"..buffraidlist[j][26]), 1, 0.82, 0)
					end
				end
			end
		end
	end
end
function RC_Report()
	if RC_ResultToolTip:NumLines()==1 then
		smsg=getglobal("RC_ResultToolTipTextLeft1"):GetText()
		RC_SayChannel()
	else
		if RC_MainFrameBuffd10CheckBox:GetChecked() then
			for i=1,RC_ResultToolTip:NumLines(),1 do 
				if getglobal("RC_ResultToolTipTextLeft"..i):GetText()~=" " then
					smsg=getglobal("RC_ResultToolTipTextLeft"..i):GetText()
					RC_SayChannel()
				end
			end
		else
			if this ~= RC_MainFrameBuffc5Button then
				smsg=getglobal("RC_ResultToolTipTextLeft2"):GetText()
				RC_SayChannel()
			end
		end
	end
end
function RC_Check()
	-- if select no  buff or select no class, say no select,return
	raidnumber=GetNumRaidMembers()
	local checkcheckc=0
	local checkcheckd=""
	addname=""
	for i=1,8,1 do
		local checkBoxName = "RC_MainFrameBuffd"..i.."CheckBox"
		if getglobal(checkBoxName):GetChecked() then
			checkcheckc=1
		end
	end
	local tempb=0
	for i=1,8,1 do
		local checkBoxName = "RC_MainFrameBuffd"..i.."CheckBox"
		if getglobal(checkBoxName):GetChecked() then
			checkcheckd=checkcheckd..simclasslist[i]
			tempb=tempb+1
		end
	end
	if checkcheckc==0 then 
		DEFAULT_CHAT_FRAME:AddMessage(NOSELECTCLASS)
		return
	end
	-- add name
	if (tempb==8) then
		addname = "全体检查"
	else
		addname = checkcheckd.."检查"
	end
	-- if not in a raid group ,say no raid,return.
	if(GetNumRaidMembers()==0) then 
		DEFAULT_CHAT_FRAME:AddMessage(NORAID)
		return
	end
	buffraidlist={}
	-- buff check with class check
	checknum = 0
	checknumds = 0
	for i = 1,GetNumRaidMembers(),1 do
		table.insert(buffraidlist,{"",0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",})
		local raidnum = "raid"..i
		local rccname, rccrank, rccgroup = GetRaidRosterInfo(i)
		buffraidlist[i][1]=rccname
		if UnitIsConnected(raidnum) then 
			if UnitIsDeadOrGhost(raidnum) then
				buffraidlist[i][2]=1
			else
				if UnitIsVisible(raidnum) then
					buffraidlist[i][2]=3
				else
					buffraidlist[i][2]=2
				end
			end
		end
		if UnitIsPVP(raidnum) then
			buffraidlist[i][3]=1
		end
		buffraidlist[i][6]=rccgroup
		for j = 1,8,1 do
			if (classlist[j]==UnitClass(raidnum)) then
				buffraidlist[i][5] = j
			end
		end
		local checkBoxName = "RC_MainFrameBuffd"..buffraidlist[i][5].."CheckBox"
		if (getglobal(checkBoxName):GetChecked() and buffraidlist[i][2]<=1) then
			checknumds=checknumds+1
		end
		-- if class checked and online
		if (getglobal(checkBoxName):GetChecked() and buffraidlist[i][2]>1) then
			buffraidlist[i][4]=UnitHealthMax(raidnum)
			if buffraidlist[i][5]<3 then
				buffraidlist[i][7]=1
				buffraidlist[i][9]=1
				buffraidlist[i][13]=1
				buffraidlist[i][19]=1		
			else
				buffraidlist[i][16]=1
			end
			checknum=checknum+1
			local buffid =1 
			while (UnitBuff(raidnum,buffid)) do
				RC_ChkBuffToolTip:ClearLines()
				RC_ChkBuffToolTip:SetUnitBuff(raidnum,buffid)
				buffname=RC_ChkBuffToolTipTextLeft1:GetText()
				bufftext=RC_ChkBuffToolTipTextLeft2:GetText()
				for k=1,19,1 do
					if (bufftext==bufftextlist[k]) then
						buffraidlist[i][k+6]=1
						break
					end
				end
				if (bufftext==bufftextlist[20]) then
					buffraidlist[i][20]=2
				end
				if (bufftext==bufftextlist[21]) then
					buffraidlist[i][21]=2
				end
				if (bufftext==bufftextlist[22]) then
					buffraidlist[i][22]=2
				end
				if (bufftext==bufftextlist[23]) then
					buffraidlist[i][24]=2
				end
				for k=1,11,1 do
					if (bufftext==dpstextlist[k]) then
						buffraidlist[i][26]=buffraidlist[i][26]..dpsnamelist[k]
					end
				end
				buffid = buffid + 1
			end
		end
	end
	buttontypeq={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}
	buttontypen={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}
	buttontypes={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,}
	for i = 1,GetNumRaidMembers(),1 do	
		if  buffraidlist[i][4]>0 then	
			if buffraidlist[i][26]~="" then
				buttontypen[23]=0					
			else
				buttontypeq[23]=0
			end			
			for j=10,11,1 do
				if buffraidlist[i][j]==1 then
					buttontypen[j-6]=0					
				else
					buttontypeq[j-6]=0
					buttontypes[j-6]=buttontypes[j-6]+1
				end				
			end	
			if buffraidlist[i][8]==1 then
				buttontypen[2]=0					
			else
				buttontypeq[2]=0
				buttontypes[2]=buttontypes[2]+1
			end				
			for j=14,15,1 do
				if buffraidlist[i][j]==1 then
					buttontypen[j-6]=0					
				else
					buttontypeq[j-6]=0
					buttontypes[j-6]=buttontypes[j-6]+1
				end				
			end
			for j=17,18,1 do
				if buffraidlist[i][j]==1 then
					buttontypen[j-6]=0					
				else
					buttontypeq[j-6]=0
					buttontypes[j-6]=buttontypes[j-6]+1
				end				
			end
			if (buffraidlist[i][19]==1 and buffraidlist[i][5]>2) then
				buttontypen[13]=0
			else
				if (buffraidlist[i][19]==0 and buffraidlist[i][5]>2) then
					buttontypeq[13]=0
					buttontypes[13]=buttontypes[13]+1
				end
			end
			if (buffraidlist[i][13]==1 and buffraidlist[i][5]>2) then
				buttontypen[7]=0
			else
				if (buffraidlist[i][13]==0 and buffraidlist[i][5]>2) then
					buttontypeq[7]=0
					buttontypes[7]=buttontypes[7]+1
				end
			end
			if (buffraidlist[i][16]==1 and buffraidlist[i][5]<3) then
				buttontypen[10]=0
			else
				if (buffraidlist[i][16]==0 and buffraidlist[i][5]<3) then
					buttontypeq[10]=0
					buttontypes[10]=buttontypes[10]+1
				end
			end
			if (buffraidlist[i][7]==1 and buffraidlist[i][5]>2) then
				buttontypen[1]=0
			else
				if (buffraidlist[i][7]==0 and buffraidlist[i][5]>2) then
					buttontypeq[1]=0
					buttontypes[1]=buttontypes[1]+1
				end
			end
			if (buffraidlist[i][9]==1 and buffraidlist[i][5]>2) then
				buttontypen[3]=0
			else
				if (buffraidlist[i][9]==0 and buffraidlist[i][5]>2) then
					buttontypeq[3]=0
					buttontypes[3]=buttontypes[3]+1
				end
			end
			if (buffraidlist[i][12]==1 and (buffraidlist[i][5]==5 or buffraidlist[i][5]==6)) then
				buttontypen[6]=0
				buttontypes[6]=buttontypes[6]+1
			end
			if (buffraidlist[i][2]==3) then
				buttontypen[19]=0
			else
				buttontypeq[19]=0
				buttontypes[19]=buttontypes[19]+1
			end
			if (buffraidlist[i][3]==0) then
				buttontypen[20]=0				
			else
				buttontypeq[20]=0
				buttontypes[20]=buttontypes[20]+1
			end
			if (buffraidlist[i][4]>(RC_MainFrameHpNowButton:GetText()*1)) then
				buttontypen[21]=0
			else
				buttontypeq[21]=0
				buttontypes[21]=buttontypes[21]+1
			end
			if (buffraidlist[i][23]==1) then
				buttontypen[17]=0
			else
				buttontypeq[17]=0
				buttontypes[17]=buttontypes[17]+1
			end
			if (buffraidlist[i][25]==1) then
				buttontypen[22]=0
			else
				buttontypeq[22]=0
				buttontypes[22]=buttontypes[22]+1
			end
			if RC_MainFrameBuffd9CheckBox:GetChecked() then
				buffd9checked=1
				if (buffraidlist[i][20]==2) then
					buttontypen[14]=0
				else
					buttontypeq[14]=0
					buttontypes[14]=buttontypes[14]+1
				end
				if (buffraidlist[i][21]==2) then
					buttontypen[15]=0
				else
					buttontypeq[15]=0
					buttontypes[15]=buttontypes[15]+1
				end
				if (buffraidlist[i][22]==2) then
					buttontypen[16]=0
				else
					buttontypeq[16]=0
					buttontypes[16]=buttontypes[16]+1
				end
				if (buffraidlist[i][24]==2) then
					buttontypen[18]=0
				else
					buttontypeq[18]=0
					buttontypes[18]=buttontypes[18]+1
				end
			else
				buffd9checked=0
				if (buffraidlist[i][20]>0) then
					buttontypen[14]=0
				else
					buttontypeq[14]=0
					buttontypes[14]=buttontypes[14]+1
				end
				if (buffraidlist[i][21]>0) then
					buttontypen[15]=0
				else
					buttontypeq[15]=0
					buttontypes[15]=buttontypes[15]+1
				end
				if (buffraidlist[i][22]>0) then
					buttontypen[16]=0
				else
					buttontypeq[16]=0
					buttontypes[16]=buttontypes[16]+1
				end
				if (buffraidlist[i][24]>0) then
					buttontypen[18]=0
				else
					buttontypeq[18]=0
					buttontypes[18]=buttontypes[18]+1
				end
			end
		end
	end	
	for i = 1,23,1 do
		if i<12 then
			ButtonName = "RC_MainFrameBuffa"..i.."Button"
		else
			if i<19 then 
				ButtonName = "RC_MainFrameBuffb"..(i-11).."Button"
			else
				ButtonName = "RC_MainFrameBuffc"..(i-18).."Button"
			end
		end 
		if buttontypen[i]==1 then 
			getglobal(ButtonName):SetTextColor(0, 0, 0)
		else
			if buttontypeq[i]==1 then 
				getglobal(ButtonName):SetTextColor(0, 1, 0)
			else
				getglobal(ButtonName):SetTextColor(1, 0.82, 0)
			end
		end
	end
	if buttontypen[6]==1 then 
		RC_MainFrameBuffa6Button:SetTextColor(0.5, 0.5, 1)
	end	
end
function RC_SayChannel()
	if channelselect == "工会" then 
	SendChatMessage(smsg, "GUILD")
	end
	if channelselect == "团队" then 
	SendChatMessage(smsg, "RAID")
	end
	if channelselect == "队伍" then 
	SendChatMessage(smsg, "PARTY")
	end
	if channelselect == "近聊" then 
	SendChatMessage(smsg,"SAY")
	end
	if channelselect == "自己" then 
		DEFAULT_CHAT_FRAME:AddMessage(smsg)
	end
end