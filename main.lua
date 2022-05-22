require 'tango2d'

function love.draw()
    for i=1,100 do
        for j=1,100 do
            rect(i*6, j*6, 6, 6, color.tic[i/j])
        end
    end
end

function love.load()
	
end

function love.update()
end