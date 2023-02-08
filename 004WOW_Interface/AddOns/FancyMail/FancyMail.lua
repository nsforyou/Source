local Blue = "\124cff0000ff"
local Black = "\124cff000000"
local Gray = "\124cff555555"
local Red = "\124cff990000"
FM_TakeItem = false


function OnMailboxUpdate()
	--for temp = 1, GetInboxNumItems() do
		_,_,sender,subject,money,CODAmount,hasItem = GetInboxHeaderInfo(1);
		if (money > 0) then
			GetInboxText(1)
			TakeInboxMoney(1)
		end
		if (FM_TakeItem) then
			GetInboxText(1)
			TakeInboxItem(1)
		end
	--end
	_,_,sender,subject,money,CODAmount,hasItem = GetInboxHeaderInfo(1);
	if (sender == "Stormwind Auction House") then
		if (subject == "") then
			if (money == 0) then
				if (hasItem == 0) and (CODAmount == 0) then
					GetInboxText(1)
					DeleteInboxItem(1)
					Print("Empty mail was deleted")
				end
			end
		end

	end
end

-- Event handler.
CreateFrame("Frame", "MAIL_ON_UPDATE");
MAIL_ON_UPDATE:SetScript("OnEvent", function()
	OnMailboxUpdate()
end);
MAIL_ON_UPDATE:RegisterEvent("MAIL_INBOX_UPDATE")

-- Event handler.
CreateFrame("Frame", "FANCYMAIL_ADDONLOADED");
FANCYMAIL_ADDONLOADED:SetScript("OnEvent", function()
	if (arg1 == "FancyMail") then
		FancyMail_UseContainerItem = UseContainerItem
		
		function UseContainerItem(bag,slot,onself)
			if(MailFrame) then
				if (MailFrame:IsVisible()) then
					PickupContainerItem(bag,slot)
					ClickSendMailItemButton()
					return
				end
			end
			FancyMail_UseContainerItem(bag,slot,onself)
		end
	end
end);
FANCYMAIL_ADDONLOADED:RegisterEvent("ADDON_LOADED")



