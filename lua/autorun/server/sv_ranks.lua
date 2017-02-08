function CheckForRank(ply,xp)
 	
 	xpTable = {140,196,274,384,538,753,1054,1476,2066,2892,4049,5669,7937,11112,
 	15557,21780,30492,40492,50492,60492,70492,80492,90492,100492,110492,
 	120492,130492,140492,150492,160492,170492,180492,190492,200492,210492,
 	220492,230492,240492,250492,260492,270492,280492,290492,300492,310492,320492,
 	330492,340492,350492,360492,370492,380492,390492,400492,410492,420492,430492,
 	440492,450492,460492,470492,480492,490492,500492,510492,520492,530492,540492,
 	550492,560492,570492,580492,590492,600492,610492,620492,630492,640492,650492,
 	660492,670492,680492,690492,700492,710492,720492,730492,740492,750492,760492,
 	770492,780492,790492,800492,810492,820492,830492,840492,850492}
	
 	xpCountUp = 1
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
     if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
 	
 	-- Level 10
 	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 			for k,v in pairs ( player.GetAll() ) do
 				v:PrintMessage(HUD_PRINTTALK,ply:Nick().." just reached level 10!")
 			end
 		end xpCountUp = xpCountUp+1
 	end
	
	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
     if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
 	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
	if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 		end xpCountUp = xpCountUp+1
 	end
	
	-- Level 20 
	
	 if (xp >= xpTable[xpCountUp]) then 
 		if(lvl == xpCountUp) then
 			SetLvl(ply,xpCountUp+1)
 			for k,v in pairs ( player.GetAll() ) do
 				v:PrintMessage(HUD_PRINTTALK,ply:Nick().." just reached level "..xpCountUp+1.."!")
 			end
 		end xpCountUp = xpCountUp+1
 	end
	
end