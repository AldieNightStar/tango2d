require 'tango2d'

function love.draw()
    gprint("x: "..x, 0, 0, 4, color.red)
end

function love.load()
    onWheel = newSignal()
    onWheel:connect(function(c) print(c) end)
    x = 0
    op = newOnce()
end

function love.update()
    x = x + 1
    if x % 10 == 0 then onWheel:emit(x) end
    if op(1000) then x = 0 end
end