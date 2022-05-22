require 'tango2d'

function love.draw()
	if state == 1 then
		gprint("Press start", 50, 50, 1, color.red)
	end
end

function love.load()
	state = 1
end

function love.update()
	print(time())
end