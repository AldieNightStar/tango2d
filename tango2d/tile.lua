tileSize = 32

function tile(x, y, c)
    love.graphics.setColor(unpack(c))
    love.graphics.rectangle("fill", x*tileSize, y*tileSize, tileSize, tileSize)
end

function tilex(x, y, c)
    love.graphics.setColor(unpack(c))
    local half = tileSize/2
    local half2 = half/2
    love.graphics.rectangle("fill", x*tileSize, y*tileSize, tileSize, tileSize)
    love.graphics.setColor(c[1]/1.2, c[2]/1.2, c[3]/1.2)
    love.graphics.rectangle("fill", x*tileSize+half2, y*tileSize+half2, half, half)
end