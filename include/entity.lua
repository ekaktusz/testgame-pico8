Entity = {}
Entity.__index = Entity

function Entity:new(x, y, w, h, vx, vy) 
    local self = setmetatable({}, Entity)
    self.x = x or 0
    self.y = y or 0
    self.w = w or 8
    self.h = h or 8
    self.vx = vx or 0
    self.vy = vy or 0
    return self
end

function Entity:update()

end

function Entity:draw()

end

function Entity:print_entity()
    log("Entity: x="..x.." y="..y.." w="..w.." h="..h.. " vx="..vx.." vy="..vy)
end
