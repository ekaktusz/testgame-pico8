function collide_map(entity, flag)
    local x_offset = 0
    if entity.velocity.x > 0  then x_offset = entity.size.x - 1 end

    --look for a wall
    local h = mget((entity.position.x + x_offset)/8,(entity.position.y + entity.size.y-1)/8)
    if fget(h, flag) then
        
    end

    --check bottom center of entity
    local v = mget((entity.position.x + entity.size.x/2)/8, (entity.position.y + entity.size.y)/8)
    if (entity.velocity.y >= 0) then
        if (fget(v,flag)) then
            
        end
    end

    --check top center of entity
    v=mget((entity.position.x+ entity.size.x/2)/8,(entity.position.y)/8)
    if (entity.velocity.y <=0) then
        if fget(v,flag) then
            
        end
    end
end