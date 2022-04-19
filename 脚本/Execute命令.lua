
--------------------------------------------------
QMPlugin={} APE=QMPlugin
function path(name)
if name
then return "/sdcard/"..name
else return "/sdcard/APE.txt"
end end
function read(path,hms)
local t1 = os.time(),tt
  repeat
    if hms==nil 
    then xv,text=pcall(function(path) return io.open(path):read("*a") end,path)
    else xv,text=pcall(function(path) return io.open(path):read() end,path) 
    end
	 local t2=os.time()
	 local tt=os.difftime(t2,t1)  
  until (xv or tt==1)
 if text then return text else return "" end
end
--█████████████████████████████████████████████████████████设备基本控制命令】
--[打出电话]
function QMPlugin.callup(Num)
os.execute("am start -a android.intent.action.CALL -d tel:"..Num.."")
end
--[发出短信]
function QMPlugin.mms(Num,MMS)
if MMS==nil then 
os.execute("am start -a android.intent.action.SENDTO -d sms: --es sms_body "..Num.."")
else
os.execute("am start -a android.intent.action.SENDTO -d sms:"..Num.." --es sms_body "..MMS.."")
os.execute("input keyevent 22")
os.execute("input keyevent 66")
end end
--[重启或者关机]
function QMPlugin.reboot(str)
	if str==nil 
	then os.execute("reboot")
    else os.execute("reboot -p")
    end
end 
--[ 开关数据流量]
function QMPlugin.net(str)
	if str==nil 
	then os.execute("svc data enable")
	else os.execute("svc data disable")
	end 
end 
--[ 开关Wifi ]
function QMPlugin.wifi(str)
if str==nil
then os.execute("svc wifi enable") 
else os.execute("svc wifi disable") 
end end
--[ 开关飞行模式 ] 
function QMPlugin.airplane(str)
if str==nil then
os.execute("settings put global airplane_mode_on 1")
os.execute("am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true")
else
os.execute("settings put global airplane_mode_on 0")
os.execute("am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false")
end end
--█████████████████████████████████████████████████████████设备信息状态查看】
--[获取安卓设备系统版本号] 
function QMPlugin.version()
os.execute("getprop ro.build.version.release > "..path())
return read(path())
end
--[获取设备电池剩余电量值] 
function QMPlugin.power()
 os.execute("dumpsys power  | grep -e mBatteryLevel > "..path())
 return string.match(read(path()),"=([^ ]+)")
 end 
--[检测屏幕状态是否亮屏] 
function QMPlugin.stateled()
 os.execute("dumpsys power  | grep -e mWakefulness > "..path())
 if string.match(read(path()),"Awake")
 then return true 
 else return false 
 end 
end
--[检测wifi是否开启] 
function QMPlugin.wifistate()
 os.execute("dumpsys wifi | grep Wi-Fi > "..path())
 if string.match(read(path()),"enabled")
 then return true 
 else return false 
 end 
end
--[获取Wifi帐号与密码]
function QMPlugin.wifipsk()
 os.execute("dumpsys wifi | grep -A 0 WPA-PSK > "..path())
 local str=string.sub(read(path(),1), 1,-44)    
 local wifim = string.match(str,".+ ([^ ]+)")
   os.execute("cat /data/misc/wifi/*.conf >"..path())
   local s,e=string.find(read(path()),"ssid=\""..wifim.."\"") 
   local psk=string.match(read(path()),"psk=([^\r\n]+)",e) 
   if wifim and psk then return wifim,psk end 
end
--█████████████████████████████████████████████████████████ 安卓 APP 相关命令】
--[获取前台运行APP包名与活动界面组件名/判断APP是否在指定界面运行]
function QMPlugin.activeac(act)
os.execute("dumpsys activity top | grep ACTIVITY > "..path())
 local bm = string.match(read(path()),"ACTIVITY ([^/]+)")              
 local hm = string.match(read(path()),"ACTIVITY ([^ ]+)")                                
if act==bm or act==hm or act==nil 
then return bm,hm
else return false
end end	
--[关闭退出APP]
function QMPlugin.offapp(bm)
os.execute("am force-stop "..bm.."")
end
--[返回指定APP安装包所在路径]
function QMPlugin.package(bm)
os.execute("pm path "..bm.." > "..path())
local str = string.match(read(path()),"/.+k")
if str then return str else return "" 
end end
--[检测设备是否安装了指定的APP]
function QMPlugin.packages(bm)
os.execute("pm list packages -3 > "..path())
local str = string.match(read(path()),bm)
if str then return true else return false
end end
--[监听全部APP或指定APP通知栏信息]（支持同步监听两个"指定"的APP）
function QMPlugin.ticker(pkg,pkg2)
  if pkg == nil 
    then os.execute("dumpsys notification | grep -e tickerText= >"..path())
    local tickerText = read(path()) 
    if tickerText then 
    return tickerText
    else return "" end
  end
  if pkg2 == nil 
    then os.execute("dumpsys notification | grep -e pkg="..pkg.." -e tickerText >"..path())
    tickerText = read(path())
  elseif pkg and pkg2 
	then os.execute("dumpsys notification | grep -e pkg="..pkg.." -e pkg="..pkg2.." -e tickerText >"..path())
    tickerText = read(path())
	local s,e=string.find(tickerText,pkg2)
    if e then Text2 = string.match(tickerText,"tickerText=([^\r\n]+)",e) end
    if Text2 == nil then Text2 = "" end
  end    
      local s,e=string.find(tickerText,pkg)
      if e then Text = string.match(tickerText,"tickerText=([^\r\n]+)",e) end
      if Text == nil then Text = "" end
      return Text,Text2
end	
--█████████████████████████████████████████████████████████ 时间 相关 命令】
--[日期转换为时间戳]
function QMPlugin.ToTime(Date,ms)
T = {} 
local _,_,n,y,r,s,f,m= Date:find(ms)
T.year = n 
T.month= y 
T.day =  r 
T.hour = s
T.min =  f
T.sec =  m
return os.time(T)
end
--[获取网络时间增强版]（完美解决北京时间凌晨1到8点之间返回的日期是前一天的bug问题）
function QMPlugin.Webtime(str,Exp)
  xv= pcall(function() os.execute("curl --connect-timeout 10 -I http://www.taobao.com > "..path()) end)
  if xv == nil then return "" end
  local _,_,x,r,y,n,s,f,m = string.find(read(path()),"Date: (%a+), (%d+) (%a+) (%d+) (%d+):(%d+):(%d+)")
  if r == nil or n == nil then return "" end
  local Month = {["Jan"]=1,["Feb"]=2,["Mar"]=3,["Apr"]=4,["May"]=5,["Jun"]=6,["Jul"]=7,["Aug"]=8,["Sep"]=9,["Oct"]=10,["Nov"]=11,["Dec"]=12}
  local ToTime = QMPlugin.ToTime(n.."/"..Month[y].."/"..r.." "..s..":"..f..":"..m,"(%d+)/(%d+)/(%d+) (%d+):(%d+):(%d+)") 
  local Date = os.date(str,ToTime+28800)
	 local Expires = {["Mon"]=1,["Tue"]=2,["Wed"]=3,["Thu"]=4,["Fri"]=5,["Sat"]=6,["Sun"]=0}
     local Expires2 = {[1]="一",[2]="二",[3]="三",[4]="四",[5]="五",[6]="六",[0]="日"}
     if s+8 >= 24 then s = s+8-24 else s = s+8 end
     if s >= 8 then x = Expires[x] else x = Expires[x]+1 end if x == 7 then x = 0 end 
     local x = Expires2[x] 
	 if str == nil then return os.date("%Y/%m/%d/ %H:%M:%S",ToTime+28800)
     elseif Exp then return Date..x
	 else return Date
     end
end 
--█████████████████████████████████████████████████████████ http 网页信息类】
--[读网页源文件]
function QMPlugin.Gethttp(http,time)
	if time == nil then time = 8 end
	os.execute(string.format("curl --connect-timeout %s -o %s '%s' ", time , path(), http))
	text = read(path())
	if text then return text else return "" end
end

--█████████████████████████████████████████████████████████ 特殊 命令集】
--[返回用户点击屏幕坐标与颜色值]
function QMPlugin.comero()
 os.execute("getevent -l > "..path())  
 local xx=string.match(read(path()),"POSITION_X ([^\r\n]+)")            
 local yy=string.match(read(path()),"POSITION_Y ([^\r\n]+)")        
 if xx then x=tonumber(xx,16) end
 if yy then y=tonumber(yy,16) end
    if x == nil or y == nil then return "","","" end
	local vx,color=pcall(function(x,y) return string.format("0x%x",getcolor(x,y)) end,x,y)
    if vx and color then return x,y,color end
	local vx,color=pcall(function(x,y) return LuaAuxLib.GetPixelColor(x,y) end,x,y)
    if vx and color then return x,y,color end
    if vx == false then return x,y,"" end
end



