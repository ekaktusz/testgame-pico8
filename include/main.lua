function _draw()
    cls()
    map(0,0)
    p:draw()
end

function _init()
    gravity = 0.3
    friction = 0.85
    -- position, size, velocity
    p = Player:new(Vector:new(59, 59), Vector:new(2, 3), Vector:new(0, 0))
end

function _update()
    p:update()
end