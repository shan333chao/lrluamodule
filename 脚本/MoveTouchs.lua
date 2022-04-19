MoveTouchs={}

function MoveTouchs.TapEx(x,y,delay)
	touchDown(1,x,y)
    if delay~=nil then
    	sleep(delay)
    else
    	sleep(math.random(70,200))
    end
    touchUp(1)
end



function MoveTouchs.TapExRectangle(x1,y1,x2,y2)
    local x=math.random(x1,x2)
    local y=math.random(y1,y2)
    return MoveTouchs.TapEx(x,y)
end


function MoveTouchs.TapExArray(array)
    local x=math.random(array[1],array[3])
    local y=math.random(array[2],array[4])
    return  MoveTouchs.TapEx(x,y)
end


function  MoveTouchs.TapInCircle(x,y,r)
    local radius=math.random(0,r)
    local ao=math.random(1.360)
    local x1=x+radius*math.cos(ao*math.pi/180)
    local y1=y+radius*math.sin(ao*math.pi/180)
    return  MoveTouchs.TapEx(x1,y1)
end


function MoveTouchs.TapCircle(x,y,x1)
    local r=math.abs(x1-x)
    return MoveTouchs.TapInCircle(x,y,r)
end

function MoveTouchs.TapCircleA(array)
    return MoveTouchs.TapCircle(array[1],array[2],array[3])
end



function MoveTouchs.touchMove(x1,y1,x2,y2)
    touchDown(1,x1,y1)
    sleep(math.random(50,150))
    touchMoveEx(1,x2,y2,math.random(150,800))
    touchUp(1)
end

function MoveTouchs.touchMoveEx()




    

end

function MoveTouchs.DrawRect(x,y,w,h)
	MoveTouchs.DrawLine(x,y,x+w,y)
	MoveTouchs.DrawLine(x,y,x,y+h)
	MoveTouchs.DrawLine(x+w,y,x+w,y+h)
	MoveTouchs.DrawLine(x,y+h,x+w,y+h)
end


function MoveTouchs.DrawLine(x1,y1,x2,y2) 
	if math.abs(x2-x1)>math.abs(y2-y1) then
		steps=math.abs(x2-x1);
	else
		steps=math.abs(y2-y1);
	end
		increx=(x2-x1)/steps;
		increy=(y2-y1)/steps;
		x=x1;
		y=y1;
    
    touchDown(1,x+math.random(1,10),y+math.random(1,10))
    print(steps)
	for i=1,steps,steps/10 do
		x=x+increx+math.random(1,30);
		y=y+increy+math.random(1,30);
        print(x,y)
        touchMoveEx(1,x,y,math.random(1,40))
	end
    touchMoveEx(1,x2+math.random(1,10),y2+math.random(1,10),100)
	touchUp(1)
end
 
 





return MoveTouchs