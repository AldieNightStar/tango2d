require 'tango2d'

function love.draw()
    -- Tripple size
    love.graphics.scale(3, 3)

    -- Rect
    rect(r.x, r.y, r.w, r.h, color.tic[1])
    rect(p.x, p.y, p.w, p.h, color.tic[2])

    if p.collide then
        gprint("Collision", 0, 0, 1, color.red)
    end
end

function love.load()
    r = {x=50, y=50, w=50, h=50}
    p = {x=25, y=25, w=10, h=10}
end

function love.update()
    if key.left or joy.p1.left then p.x = p.x - 1 elseif key.right or joy.p1.right then p.x = p.x + 1 end
    if key.up or joy.p1.up then p.y = p.y - 1 elseif key.down or joy.p1.down then p.y = p.y + 1 end

    p.collide = collide4(p.x, p.y, p.w, p.h, r.x, r.y, r.w, r.h)
end