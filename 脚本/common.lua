function  cmpColorExex(colordeviation,besimilar,time)
		local x=nil y=nil crsd="@" tesi=nil switch=nil
		local andtime = os.time()
		
		sleep(1000)
		if (time>0) then
			
			while ((interval-andtime)<time) do
				local state = cmpColorEx(colordeviation,besimilar)
				local interval = os.time()
				if str ~=nil  then
					tesi =state
					switch=true
					break
				else
					local timeinterval=(interval-andtime)
					print("没有找到色")
					if (timeinterval>time)then
						switch=false
						print("找到色时间已经到了")
						break
					end
					
					sleep(500)
				end
			end
		else
			local state = cmpColorEx(colordeviation,besimilar)
			
			if state ~=nil  then
				
				tesi =state
				return tesi
			else
				
				return false
			end
			
		end
		if(switch==true)then
			return tesi
		else
			return false
		end
	end
	
	
	
	function  ocrex(x1, y1, x2, y2,colordeviation,besimilar,Fontname,time)
		local x=nil y=nil crsd="@" tesi=nil switch=nil
		local andtime = os.time()
		setDict(0,Fontname) --字库需要放到资源文件中大家可以加我3142506501学习交流
		useDict(0)
		sleep(1000)
		if (time>0) then
			
			while ((interval-andtime)<time) do
				local str = ocr(x1, y1, x2, y2,colordeviation,besimilar)
				local interval = os.time()
				if str ~=nil  then
					tesi =str
					switch=true
					break
				else
					local timeinterval=(interval-andtime)
					print("没有找到字")
					if (timeinterval>time)then
						switch=false
						print("找到字时间已经到了")
						break
					end
					sleep(500)
				end
			end
		else
			local str = ocr(x1, y1, x2, y2,colordeviation,besimilar)
			
			if str ~=nil  then
				
				tesi =str
				return tesi
			else
				
				return false
			end
			
		end
		if(switch==true)then
			return tesi
		else
			return false
		end
	end
	
	
	function  findPicex(x1, y1, x2, y2, picturename, colordeviation, direction,besimilar,time)
		local x=nil y=nil crsd="@" tesi=nil switch=nil
		local andtime = os.time()
		sleep(1000)
		if (time>0) then
			
			while ((interval-andtime)<time) do
				ret,x,y = findPic(x1, y1, x2, y2, picturename, colordeviation, direction,besimilar)
				local interval = os.time()
				if x ~=nil and y ~=nil then
					tesi =x..crsd..y
					switch=true
					break
				else
					local timeinterval=(interval-andtime)
					print("没有找到图")
					if (timeinterval>time)then
						switch=false
						print("找到图时间已经到了")
						break
					end
					sleep(500)
				end
			end
		else
			ret,x,y = findPic(x1, y1, x2, y2, picturename, colordeviation, direction,besimilar)
			
			if x ~=nil and y ~=nil then
				print(x,y)
				tesi =x..crsd..y
				return tesi
			else
				print(x,y)
				return false
			end
			
		end
		if(switch==true)then
			return tesi
		else
			return false
		end
	end
	--下面是使用方法
	
	local y1=nil
	y1=findPicex(0,0,0,0,"8.png|10.png", "202020",0,0.5,5 )--调用findPic方法
	print(y1)
	if(findPicex(0,0,0,0,"8.png|10.png", "202020",0,0.5,5 )~=nil) then--判断findPic方法
		print("111")
	else
		print("222"..tesi)
		
	end
	sleep(1000)
	strin=nil
	strin=ocrex(35,172,96,229,"FFFFFF-505050",0.6,"2.txt",5)--调用ocr方法
	print(strin)
	retvalue=cmpColorExex("226|468|BDC3CE,225|524|CECFBD,254|498|B5BEB5,198|499|C6D7C6",0.9,5)
	print(retvalue)
	if cmpColorExex("226|468|BDC3CE,225|524|CECFBD,254|498|B5BEB5,198|499|C6D7C6",0.9,5) == 1 then--判断cmpColorEx方法
		print("tesi")
	end