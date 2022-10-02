Player = {}
Player.__index = Player

function Player:new(x, y, w, h, vx, vy)
    local self = setmetatable(Entity:new(x, y, w, h, vx, vy), Player)
    self.sprite = 1
    self.acc = 0.5
    self.flip = false
    self.max_vx = 2
    self.max_vy = 3
    self.jump_vy = 4
    self.anim = 0
    self.landed = false
    return self
end

function Player:update()
    self.vy += gravity
    self.vx *= friction

    self:update_controls()
    self:update_collisions()

    self.x += self.vx
    self.y += self.vy
end

function Player:update_controls()
    if btn(⬅️) then
		self.vx -= self.acc
		self.flip = true
	end
	if btn(➡️) then
		self.vx += self.acc
		self.flip = false
	end
	if btnp(⬆️) and self.landed then
		self.vy -= self.jump_vy
		self.landed = false
	end
end

function Player:update_collisions()
    if self.vy>0 then
        self.landed=false
		if collide_map(self,"down",0) then
            self.landed=true
			self.vy=0
			self.y-=((self.y+self.h+1)%8)-1
		end
	end
    if self.vx<0 then
		if collide_map(self,"left",0) then
			self.vx=0
		end
	elseif self.vx>0 then
		if collide_map(self,"right",0) then
			self.vx=0
		end
	end
end

function Player:draw()
    spr(self.sprite, self.x, self.y, 1, 1)
end



