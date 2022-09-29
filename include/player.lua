Player = {}
Player.__index = Player

function Player:new(position, size, velocity)
    local self = setmetatable(Entity:new(position, size, velocity), Player)
    self.sprite = 1
    self.acceleration = 0.5
    self.flip = false
    self.max_veolicty = Vector:new(2, 3)
    self.jump_velocity = 4
    self.anim = 0
    self.landed = false
    return self
end

function Player:update()
    self.velocity.y += gravity
    self.velocity.x *= friction

    self:update_controls()

    self.position.x += self.velocity.x
    self.position.y += self.velocity.y
end

function Player:update_controls()
    if btn(⬅️) then
		self.velocity.x -= self.acceleration
		self.flip = true
	end
	if btn(➡️) then
		self.velocity.x += self.acceleration
		self.flip = false
	end
	if btnp(⬆️) and self.landed then
		self.velocity.y -= self.jump_velocity
		self.landed = false
	end
end

function Player:draw()
    spr(self.sprite, self.position.x, self.position.y, 1, 1)
end



