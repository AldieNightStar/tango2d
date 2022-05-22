function rect(x, y, w, h, color)
    love.graphics.setColor(unpack(color))
    love.graphics.rectangle('fill', x, y, w, h)
end

function loadFont(name, size)
    return love.graphics.newFont(name, size)
end

function gfont(font)
    love.graphics.setFont(font)
end

function gprint(text, x, y, size, color)
    if not size then size = 1 end
    if not color then color = color.white end
    love.graphics.setColor(unpack(color))
    love.graphics.print(text, x, y, 0, size, size)
end

-- love.graphics.line( x1, y1, x2, y2, ... )
function line(x, y, x2, y2, color)
    if not color then color = color.white end
    love.graphics.setColor(unpack(color))
    love.graphics.line(x, y, x2, y2)
end

function draw(img, x, y, sx, sy)
    love.graphics.draw(img, x, y, 0, sx, sy)
end

function draws(img, x, y, w, h)
    local imgw = img:getPixelWidth()
    local imgh = img:getPixelHeight()
    love.graphics.draw(img, x, y, 0, w/imgw, h/imgh)
end

function gload(name)
    return love.graphics.newImage(name)
end