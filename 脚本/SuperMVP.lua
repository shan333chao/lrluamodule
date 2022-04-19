local  TULING_HELPER=require("TURING_HELPER")
require("懒人综合插件")
local moveTouchs=require("MoveTouchs")
 
	moveTouchs.DrawLine(161,1166,353,207)
    moveTouchs.DrawRect(303,337,50.60)
 

sleep(10000)

TULING_HELPER.init("SuperMVP.rc","mini_mvp.lib")

--[===[local all_body={mini={area={242,91,363,686},color="8E8E8E-202020|4C4C4C-404040",cut={row=20,col=10,width="35-110",high="50-55"},sames=85,textUnit=4}}

local resTxt=TULING_HELPER.getTextTableXY(all_body.mini)
local jsonStr=  类_Json.转Json格式(resTxt)

print(jsonStr)]===]