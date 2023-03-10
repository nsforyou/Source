--[[ TrinketMenuOpt.lua : Options and sort window for TrinketMenu ]]

TrinketMenu.CheckOptInfo = {
{"ShowIcon","ON","Minimap Button","Show or hide minimap button."},
{"SquareMinimap","OFF","Square Minimap","Move minimap button as if around a square minimap.","ShowIcon"},
{"CooldownCount","OFF","Cooldown Numbers","Display time remaining on cooldowns ontop of the button."},
{"TooltipFollow","OFF","At Mouse","Display all tooltips near the mouse.","ShowTooltips"},
{"KeepOpen","OFF","Keep Menu Open","Keep menu open at all times."},
{"KeepDocked","ON","Keep Menu Docked","Keep menu docked at all times."},
{"Notify","OFF","Notify When Ready","Sends an overhead notification when a trinket's cooldown is complete."},
{"DisableToggle","OFF","Disable Toggle","Disables the minimap button's ability to toggle the trinket frame.","ShowIcon"},
{"NotifyChatAlso","OFF","Notify Chat Also","Sends notifications through chat also."},
{"Locked","OFF","Lock Windows","Prevents the windows from being moved, resized or rotated."},
{"ShowTooltips","ON","Show Tooltips","Shows tooltips."},
{"NotifyThirty","ON","Notify At 30 sec","Sends an overhead notification when a trinket has 30 seconds left on cooldown."},
{"MenuOnShift","OFF","Menu On Shift","Check this to prevent the menu appearing unless Shift is held."},
{"TinyTooltips","OFF","Tiny Tooltips","Shrink trinket tooltips to only their name, charges and cooldown.","ShowTooltips"},
{"SetColumns","OFF","Set Menu Columns","Define how many trinkets before the menu will wrap to the next row.\n\nUncheck to let TrinketMenu choose how to wrap the menu."},
{"LargeCooldown","ON","Large Numbers","Display the cooldown time in a larger font.","CooldownCount"},
{"ShowHotKeys","ON","Show Key Bindings","Display the key bindings over the equipped trinkets."},
{"StopOnSwap","OFF","Stop Queue On Swap","Swapping a passive trinket stops an auto queue.  Check this to also stop the auto queue when a clickable trinket is manually swapped in via TrinketMenu.  This will have the most use to those with frequent trinkets marked Priority."}
}

TrinketMenu.TooltipInfo = {
{"TrinketMenu_LockButton","Lock Windows","Prevents the windows from being moved, resized or rotated."},
{"TrinketMenu_Trinket0Check","Top Trinket Auto Queue","Check this to enable auto queue for this trinket slot.  You can also Alt+Click the trinket slot to toggle Auto Queue."},
{"TrinketMenu_Trinket1Check","Bottom Trinket Auto Queue","Check this to enable auto queue for this trinket slot.  You can also Alt+Click the trinket slot to toggle Auto Queue."},
{"TrinketMenu_SortPriority","High Priority","When checked, this trinket will be swapped in as soon as possible, whether the equipped trinket is on cooldown or not.\n\nWhen unchecked, this trinket will not equip over one already worn that's not on cooldown."},
{"TrinketMenu_SortDelay","Swap Delay","This is the time (in seconds) before a trinket will be swapped out.  ie, for Earthstrike you want 20 seconds to get the full 20 second effect of the buff."},
{"TrinketMenu_SortKeepEquipped","Pause Queue","Check this to suspend the auto queue while this trinket is equipped. ie, for Carrot on a Stick if you have a mod to auto-equip it to a slot with Auto Queue active."}
}

function TrinketMenu.InitOptions()
	TrinketMenu.CreateTimer("DragMinimapButton",TrinketMenu.DragMinimapButton,0,1)
	TrinketMenu.MoveMinimapButton()
	for i=1,table.getn(TrinketMenu.CheckOptInfo) do
		getglobal("TrinketMenu_Opt"..TrinketMenu.CheckOptInfo[i][1].."Text"):SetText(TrinketMenu.CheckOptInfo[i][3])
		getglobal("TrinketMenu_Opt"..TrinketMenu.CheckOptInfo[i][1].."Text"):SetTextColor(.95,.95,.95)
	end
	TrinketMenu.Tab_OnClick(1)
	table.insert(UISpecialFrames,"TrinketMenu_OptFrame")
	TrinketMenu_Title:SetText("TrinketMenu "..TrinketMenu_Version)

	TrinketMenu_OptFrame:SetBackdropBorderColor(.3,.3,.3,1)
	TrinketMenu_SubOptFrame:SetBackdropBorderColor(.3,.3,.3,1)
	if TrinketMenu.QueueInit then
		TrinketMenu.QueueInit()
	else
		TrinketMenu_OptStopOnSwap:Hide() -- remove StopOnSwap option if queue not loaded
	end
	TrinketMenu_OptColumnsSlider:SetValue(TrinketMenuOptions.Columns)
	TrinketMenu.ReflectLock()
	TrinketMenu.ReflectCooldownFont()
	TrinketMenu.ReflectKeyBindings()
end

function TrinketMenu.ToggleFrame(frame)
	if frame:IsVisible() then
		frame:Hide()
	else
		frame:Show()
	end
end

function TrinketMenu.OptFrame_OnShow()
	TrinketMenu.ValidateChecks()
	if TrinketMenu.CurrentlySorting then
		TrinketMenu.PopulateSort(TrinketMenu.CurrentlySorting)
	end
end

--[[ Minimap button ]]

function TrinketMenu.MoveMinimapButton()
	local xpos,ypos
	if TrinketMenuOptions.SquareMinimap=="ON" then
		xpos = 110 * cos(TrinketMenuOptions.IconPos or 0)
		ypos = 110 * sin(TrinketMenuOptions.IconPos or 0)
		xpos = math.max(-82,math.min(xpos,84))
		ypos = math.max(-86,math.min(ypos,82))
	else
		xpos = 80*cos(TrinketMenuOptions.IconPos or 0)
		ypos = 80*sin(TrinketMenuOptions.IconPos or 0)
	end
	TrinketMenu_IconFrame:SetPoint("TOPLEFT","Minimap","TOPLEFT",52-xpos,ypos-52)
	if TrinketMenuOptions.ShowIcon=="ON" then
		TrinketMenu_IconFrame:Show()
	else
		TrinketMenu_IconFrame:Hide()
	end
end

function TrinketMenu.DragMinimapButton()
	local xpos,ypos = GetCursorPosition()
	local xmin,ymin = Minimap:GetLeft() or 400, Minimap:GetBottom() or 400
	xpos = xmin-xpos/Minimap:GetEffectiveScale()+70
	ypos = ypos/Minimap:GetEffectiveScale()-ymin-70
	TrinketMenuOptions.IconPos = math.deg(math.atan2(ypos,xpos))
	TrinketMenu.MoveMinimapButton()
end

function TrinketMenu.MinimapButton_OnClick()
	PlaySound("GAMEGENERICBUTTONPRESS")
	if arg1=="LeftButton" and TrinketMenuOptions.DisableToggle=="OFF" then
		TrinketMenu.ToggleFrame(TrinketMenu_MainFrame)
	else
		TrinketMenu.ToggleFrame(TrinketMenu_OptFrame)
	end
end

--[[ CheckButton ]]

function TrinketMenu.ValidateChecks()
	local check
	for i=1,table.getn(TrinketMenu.CheckOptInfo) do
		check = TrinketMenu.CheckOptInfo[i]
		getglobal("TrinketMenu_Opt"..check[1]):SetChecked(TrinketMenuOptions[check[1]]=="ON")
		if check[5] then
			if TrinketMenuOptions[check[5]]=="ON" then
				getglobal("TrinketMenu_Opt"..check[1]):Enable()
				getglobal("TrinketMenu_Opt"..check[1].."Text"):SetTextColor(.95,.95,.95)
			else
				getglobal("TrinketMenu_Opt"..check[1]):Disable()
				getglobal("TrinketMenu_Opt"..check[1].."Text"):SetTextColor(.5,.5,.5)
			end
		end
	end
	TrinketMenu_OptColumnsSlider:SetAlpha((TrinketMenuOptions.SetColumns=="ON") and 1 or .5)
	TrinketMenu_OptColumnsSlider:EnableMouse((TrinketMenuOptions.SetColumns=="ON") and 1 or 0)
	TrinketMenu_OptColumnsSlider:SetValue(TrinketMenuOptions.Columns)
end

function TrinketMenu.OptColumnsSlider_OnValueChanged()
	TrinketMenuOptions.Columns = this:GetValue()
	TrinketMenu_OptColumnsSliderText:SetText(TrinketMenuOptions.Columns.." trinkets")
	if TrinketMenu_MenuFrame:IsVisible() then
		TrinketMenu.BuildMenu()
	end
end

function TrinketMenu.CheckButton_OnClick()
	local _,_,var = string.find(this:GetName(),"TrinketMenu_Opt(.+)")
	if TrinketMenuOptions[var] then
		TrinketMenuOptions[var] = this:GetChecked() and "ON" or "OFF"
		PlaySound(this:GetChecked() and "igMainMenuOptionCheckBoxOn" or "igMainMenuOptionCheckBoxOff")
		TrinketMenu.ValidateChecks()
	end

	if this==TrinketMenu_OptCooldownCount then
		TrinketMenu.WriteWornCooldowns()
		TrinketMenu.WriteMenuCooldowns()
	elseif this==TrinketMenu_OptLocked then
		TrinketMenu.DockWindows()
		TrinketMenu.ReflectLock()
	elseif this==TrinketMenu_OptKeepOpen or this==TrinketMenu_OptSetColumns then
		if TrinketMenuOptions.KeepOpen=="ON" then
			TrinketMenu.BuildMenu()
		end
	elseif this==TrinketMenu_OptKeepDocked then
		TrinketMenu.DockWindows()
	elseif this==TrinketMenu_OptLargeCooldown then
		TrinketMenu.ReflectCooldownFont()
	elseif this==TrinketMenu_OptSquareMinimap then
		TrinketMenu.MoveMinimapButton()
	elseif this==TrinketMenu_OptShowHotKeys then
		TrinketMenu.ReflectKeyBindings()
	elseif this==TrinketMenu_OptShowIcon then
		TrinketMenu.MoveMinimapButton()
	end
end

function TrinketMenu.ReflectLock()
	local c = TrinketMenuOptions.Locked=="ON" and 0 or .5
	TrinketMenu_OptFrame:SetBackdropBorderColor(c,c,c,1)
	TrinketMenu_MainFrame:SetBackdropColor(c,c,c,c)
	TrinketMenu_MainFrame:SetBackdropBorderColor(c,c,c,c*2)
	TrinketMenu_MenuFrame:SetBackdropColor(c,c,c,c)
	TrinketMenu_MenuFrame:SetBackdropBorderColor(c,c,c,c*2)
	TrinketMenu_MenuFrame:EnableMouse(c*2)
	TrinketMenu_OptLocked:SetChecked(1-c*2)
	if c==0 then
		TrinketMenu_MainResizeButton:Hide()
		TrinketMenu_MenuResizeButton:Hide()
	else
		TrinketMenu_MainResizeButton:Show()
		TrinketMenu_MenuResizeButton:Show()
	end
end

function TrinketMenu.ReflectCooldownFont()
	TrinketMenu.SetCooldownFont("TrinketMenu_Trinket0")
	TrinketMenu.SetCooldownFont("TrinketMenu_Trinket1")
	for i=1,30 do
		TrinketMenu.SetCooldownFont("TrinketMenu_Menu"..i)
	end
end

function TrinketMenu.SetCooldownFont(button)
	local item = getglobal(button.."Time")
	if TrinketMenuOptions.LargeCooldown=="ON" then
		item:SetFont(STANDARD_TEXT_FONT,16,"OUTLINE")
		item:SetTextColor(1,.82,0,1)
		item:ClearAllPoints()
		item:SetPoint("CENTER",button,"CENTER")
	else
		item:SetFont(STANDARD_TEXT_FONT,14,"OUTLINE")
		item:SetTextColor(1,1,1,1)
		item:ClearAllPoints()
		item:SetPoint("BOTTOM",button,"BOTTOM")
	end
end


--[[ Titlebar buttons ]]

function TrinketMenu.SmallButton_OnClick()
	PlaySound("igMainMenuOptionCheckBoxOn")
	if this==TrinketMenu_CloseButton then
		TrinketMenu_OptFrame:Hide()
	elseif this==TrinketMenu_LockButton then
		TrinketMenuOptions.Locked = (TrinketMenuOptions.Locked=="ON") and "OFF" or "ON"
		TrinketMenu.DockWindows()
		TrinketMenu.ReflectLock()
	end
end

--[[ Tabs ]]

function TrinketMenu.Tab_OnClick(override)
	PlaySound("GAMEGENERICBUTTONPRESS")
	local id = override or this:GetID()
	local tab
	for i=1,3 do
		tab = getglobal("TrinketMenu_Tab"..i)
		if tab then
			tab:UnlockHighlight()
		end
	end
	getglobal("TrinketMenu_Tab"..id):LockHighlight()
	if id==1 then
		TrinketMenu_SubOptFrame:Show()
		if TrinketMenu_SubQueueFrame then
			TrinketMenu_SubQueueFrame:Hide()
		end
	else
		TrinketMenu_SubOptFrame:Hide()
		TrinketMenu_SubQueueFrame:Show()
		TrinketMenu.OpenSort(3-this:GetID())
	end
end