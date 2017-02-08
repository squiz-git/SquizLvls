local Fonts = {
	["XPFont"]={
		font = "Bebas Neue Bold",
		size = sres(28),
		antialias = true,
		shadow = true
	},
	["LevelFont"]={
		font = "Bebas Neue Bold",
		size = sres(50),
		antialias = true,
		shadow = true
	},
}

function RefreshFont( font )
	if Fonts[font] then
		surface.CreateFont( font,Fonts[font] )
	else
		print( "Invalid font!" )
	end
end

function RefreshAllFonts()
	for k,v in pairs(Fonts) do
		surface.CreateFont( k,v )
	end
end
hook.Add("Initialize","RefreshFonts",RefreshAllFonts)
hook.Add("OnReloaded","RefreshFonts",RefreshAllFonts)
hook.Add("UpdateScreenRes","RefreshFonts",RefreshAllFonts)
