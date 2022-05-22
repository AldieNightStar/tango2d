function collide(x, y, x2, y2, w2, h2)
    if x < x2 then return false end
    if x > x2+w2 then return false end
    if y < y2 then return false end
    if y > y2+h2 then return false end
    return true
end

function collide4(x, y, w, h, x2, y2, w2, h2)
    if x+w < x2 then return false end
    if y+h < y2 then return false end
    if x > x2+w2 then return false end
    if y > y2+h2 then return false end
    return true
end