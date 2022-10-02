function collide_map(entity,aim,flag)
	--aim = left, right,up,down
	local x=entity.x local y=entity.y
	local w=entity.w local h=entity.h
	local x1=0 local y1=0
	local x2=0 local y2=0
	if aim=="left" then
		x1=x-1 		y1=y
		x2=x					y2=y+h-1
	elseif aim=="right" then
		x1=x+w   y1=y
		x2=x+w+1 y2=y+h-1
	elseif aim=="up" then
		x1=x+1   y1=y-1
		x2=x+w-1 y2=y
	elseif aim=="down" then
		x1=x+2   y1=y+h
		x2=x+w-3 y2=y+h
	end	
	--pixels to tiles
	x1/=8 y1/=8
	x2/=8 y2/=8
	
	if fget(mget(x1,y1), flag)
	or fget(mget(x1,y1), flag)
	or fget(mget(x1,y1), flag)
	or fget(mget(x1,y1), flag) then
		return true
	else
		return false
	end	
end

function map_collision(entity, flag)
    local x1=entity.x/8
    local y1=entity.y/8
    local x2=(entity.x+entity.w-1)/8
    local y2=(entity.y+entity.h-1)/8
    local a=fget(mget(x1,y1),0)
    local b=fget(mget(x1,y2),0)
    local c=fget(mget(x2,y2),0)
    local d=fget(mget(x2,y1),0)
    return a or b or c or d
end

function entity_collision(entity_1, entity_2)
    local x1 = entity_1.x local x2 = entity_2.x
    local y1 = entity_1.y local y2 = entity_2.y
    local w1 = entity_1.w local w2 = entity_2.w
    local h1 = entity_1.h local h2 = entity_2.h

    local hit = false
    local xd=abs((x1+(w1/2))-(x2+(w2/2)))
    local xs=w1*0.5+w2*0.5
    local yd=abs((y1+(h1/2))-(y2+(h2/2)))
    local ys=h1/2+h2/2
    if xd<xs and yd<ys then 
      hit=true 
    end
    
    return hit
end