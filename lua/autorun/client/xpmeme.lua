local Name = "ServerExperience"
local Enabled = false

local bb,bp,bl,p,xp,nxp,lvl

local function Init()

local xpTable = {140,196,274,384,538,753,1054,1476,2066,2892,4049,5669,7937,11112,
 	15557,21780,30492,40492,50492,60492,70492,80492,90492,100492,110492,
 	120492,130492,140492,150492,160492,170492,180492,190492,200492,210492,
 	220492,230492,240492,250492,260492,270492,280492,290492,300492,310492,320492,
 	330492,340492,350492,360492,370492,380492,390492,400492,410492,420492,430492,
 	440492,450492,460492,470492,480492,490492,500492,510492,520492,530492,540492,
 	550492,560492,570492,580492,590492,600492,610492,620492,630492,640492,650492,
 	660492,670492,680492,690492,700492,710492,720492,730492,740492,750492,760492,
 	770492,780492,790492,800492,810492,820492,830492,840492,850492}

local lvl = GetLvl(LocalPlayer())
local v1 = xpTable[lvl]
local v2 = xpTable[lvl+1]
local cur = GetXP(LocalPlayer())

	bb = {
		x = 1440/2-250,
		y = 30,
		w = 500,
		h = 32,
		c = Color( 0,0,0,180 )
	}
	
	bp = {
		x = 1440/2-250+4,
		y = 30+4,
		w = 500-8,
		h = 32-8,
	}
	
	bl = {
		x = 1440/2-50,
		y = 30+32,
		w = 100,
		h = 40,
	}
	
	p = {
		x = 1440/2-250+4,
		y = 30+4,
		w = 492 * math.Clamp( (cur - v1) / (v2 - v1), 0, 1 ),
		h = 32-8,
		c = Color( 110,220,80 )
	}
	
	xp = {
		t = GetXP(LocalPlayer()),
		f = "XPFont",
		x = 1440/2-244,
		y = 31,
		ax = 0,
		ay = 0,
		c = Color(255,255,255)
	}
	
	nxp = {
		t = xpTable[GetLvl(LocalPlayer())+1],
		f = "XPFont",
		x = 1440/2+244,
		y = 31,
		ax = 2,
		ay = 0,
		c = Color(255,255,255)
	}
	
	lvl = {
		t = GetLvl(LocalPlayer()),
		f = "LevelFont",
		x = 1440/2,
		y = 54,
		ax = 1,
		ay = 0,
		c = Color(255,255,255)
	}
end

local function Think()
	if !LocalPlayer() then return end
end

local function Draw()
	SetCol( bb.c )
	DBox( bb )
	DBox( bp )
	DBox( bl )
	SetCol( p.c )
	DBox( p )
	DText( xp )
	DText( nxp )
	DText( lvl )
end

RemoveHud( Name )
AddHud( Name,Init,Draw,Think,Enabled )

hook.Add("OnContextMenuClose","XPMeme",function()
	HudDisable( Name )
end)

hook.Add("OnContextMenuOpen","XPMeme",function()
	HudEnable( Name )
end)