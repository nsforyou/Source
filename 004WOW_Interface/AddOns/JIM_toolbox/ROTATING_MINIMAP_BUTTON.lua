function ROTATING_MINIMAP_BUTTON_OnLoad()
	this:SetScript( "OnUpdate", nil )
	
	if ( this.backupOnEvent ) then
		this:SetScript( "OnEvent", this.backupOnEvent )
		if ( event ) then	this.backupOnEvent()	end
		this.backupOnEvent = nil
		
	else
		this.backupOnEvent = this:GetScript( "OnEvent" )
		this:SetScript( "OnEvent", ROTATING_MINIMAP_BUTTON_OnLoad )
		this:RegisterEvent( "VARIABLES_LOADED" )	
	end
	
	this:RegisterForClicks( "LeftButtonUp" )
end
