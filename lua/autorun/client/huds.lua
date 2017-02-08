local HUDS = {}

function GetHuds()
	if HUDS then
		return HUDS
	end
	return false
end

function HudActive( Name )
	return HUDS[Name].active
end

function HudEnable( Name )
	if !HUDS[Name] then return end
	
	HUDS[Name].init()
	HUDS[Name].active = true
	
	hook.Add( "HUDPaint",Name,HUDS[Name].draw )
	
	if HUDS[Name].think then
		hook.Add( "Think",Name,HUDS[Name].think )
	end
end

function HudEnableList( T )
	for k,v in pairs(T) do
		HudEnable( v )
	end
end

function HudDisable( Name )
	if !HUDS[Name] then return end
	HUDS[Name].active = false
	
	hook.Remove( "HUDPaint",Name )
	
	if HUDS[Name].think then
		hook.Remove( "Think",Name )
	end
end

function HudDisableList( T )
	for k,v in pairs(T) do
		HudDisable( v )
	end
end

function HudVisibleList( T,Visible )
	for k,v in pairs(T) do
		HudVisible(v,Visible)
	end
end

function HudVisible(Name,Visible)
	if !HUDS[Name] then return end
	
	if Visible then
		if HUDS[Name].active then
			hook.Add( "HUDPaint",Name,HUDS[Name].draw )
		end
	else
		hook.Remove( "HUDPaint",Name )
	end
end

function AddHud( Name,Init,Draw,Think,Enable )
	HUDS[Name] = {
		init = Init,
		draw = Draw,
		think = Think,
		active = Enable
	}
	if Enable then
		HudEnable( Name )
	end
end

function RemoveHud( Name )
	HUDS[Name] = nil
end

function DermaOpen( Name )
	if !HUDS[Name] then return end
	
	if !HUDS[Name].init() then
		HUDS[Name].active = true
	else
		DermaClose( Name )
	end
end

function DermaClose( Name )
	if !HUDS[Name] then return end
	
	HUDS[Name].close()
	HUDS[Name].active = false
end

function AddDerma( Name,Init,Close,Enable )
	HUDS[Name] = {
		init = Init,
		close = Close,
		active = Enable
	}
	if Enable then
		DermaOpen( Name )
	end
end

hook.Add("UpdateScreenRes","RefreshInit",function()
	for k,v in pairs(HUDS) do
		if v.active then
			v.init()
		end
	end
end)