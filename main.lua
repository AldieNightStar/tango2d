require 'tango2d'

function love.draw()
    gprint(""..v:get(), 0, 0, 1, color.red)
end

function love.load()
    n = 0
    v = value.new(value.oncePer(1000))
end

function love.update()
    n = n + 1
    v:set(n)
end