require 'tango2d'

function love.draw()
	gprint("Hello!", x,y, 4, {1, 0, 0, 1})
	if key.left or joy.p1.dpleft then
		x = x - 1
	elseif key.right or joy.p1.dpright then
		x = x + 1
	end
end

function love.load()
	x=10
	y=10
end

function love.update()
	
end