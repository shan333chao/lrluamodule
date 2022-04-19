------------------------->>> ��ͷ����! <<<-------------------------[...]
local TURING = require("TURING")


TULING_HELPER={}
-- ��Ҫ�ѡ�UTF8.lib���ֿ��ļ���ӵ�����Դ���У����ͷ�"TURING.rc"ʹ�ã�

function TULING_HELPER.init(resource,wordlib)
	extractAssets(resource, getSdPath(), wordlib)
	TURING.Lib_Load(getSdPath() .. "/"..wordlib)    -- ʶ���ֿ�·�������и���������
	print("init:"..getSdPath() .. "/"..wordlib)
end


function TULING_HELPER.getText(jsonBody)
	TURING.Pixel_FromScreen(jsonBody.area[1],jsonBody.area[2],jsonBody.area[3],jsonBody.area[4])    -- ��Ҫ�޸ĵĵط���
	TURING.Filter_Binaryzation(jsonBody.color)
	TURING.Incise_ScopeAisle(jsonBody.cut.row,jsonBody.cut.col,jsonBody.cut.width,jsonBody.cut.high)
	local ocrRes = TURING.OCR(jsonBody.sames)
	if ocrRes ~= nil and ocrRes ~= "" then    -- ע�⣺��ֵ�ж�
		return ocrRes
	else
		return nil
	end
end

function TULING_HELPER.getTextTableXY(jsonBody)
	local posMap={}
	TURING.Pixel_FromScreen(jsonBody.area[1],jsonBody.area[2],jsonBody.area[3],jsonBody.area[4])    -- ��Ҫ�޸ĵĵط���
	TURING.Filter_Binaryzation(jsonBody.color)
	TURING.Incise_ScopeAisle(jsonBody.cut.row,jsonBody.cut.col,jsonBody.cut.width,jsonBody.cut.high)
	local ocrRes = TURING.OCR(jsonBody.sames,1)
	if ocrRes ~= nil and ocrRes ~= "" then    -- ע�⣺��ֵ�ж�
		local absolutePos=TURING.OCR_AbsCoords(ocrRes)
		local list=TULING_HELPER.cutStr(absolutePos[1],4)
		local i
		for i=1,#list,1 do
			posMap[list[i]]=absolutePos[i+1]
		end
		return posMap
	else
		return nil
	end
end



function TULING_HELPER.cutStr(str, unit)
	
	local  res={}
	print(str)
	local found_len=utf8.length (str)
	print(found_len)
	if found_len == 0  then
		return res
	end
	
	if  found_len == unit  then
		res[1] = str
		return res
	end
	
	local max_cut=0
	if  found_len % unit == 0 then
		max_cut = found_len / unit-1
	else
		max_cut = CInt((found_len / unit) + 1)-2
	end
	
	local i
	for i=0,max_cut,1 do
		local cuted_str=utf8.mid(str,i*unit+1,unit)
        print(cuted_str)
		table.insert(res,cuted_str)
	end
    print(res)
	return res
	
	
end


return TULING_HELPER
