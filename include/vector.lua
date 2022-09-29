Vector = {}
Vector.__index = Vector

function Vector:new(x, y) 
    local self = setmetatable({}, Vector)
    self.x = x or 0
    self.y = y or 0
    return self
end

function Vector:print_vector()
    log("Coordinates: "..self.x..":"..self.y)
end
