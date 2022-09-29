Entity = {}
Entity.__index = Entity

function Entity:new(position, size, velocity) 
    local self = setmetatable({}, Entity)
    self.position = position or Vector:new(0, 0)
    self.size = size or Vector:new(8, 8) -- tile size 8x8
    self.velocity = velocity or Vector:new(0, 0)
    return self
end

function Entity:update()

end

function Entity:draw()

end

function Entity:print_entity()
    log("-- Entity data")
    log("Position: ")
    self.position:print_vector()
    log("Size: ")
    self.size:print_vector()
    log("Velocity: ")
    self.velocity:print_vector()
end
