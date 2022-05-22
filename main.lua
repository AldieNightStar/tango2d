require 'tango2d'

function love.draw()
	
end

function love.load()
	val = {a=1,b=2,c=3,d="Hello!",e={x=1, y=2, force={x=1,y=22, go=function(a,b,c) end}}}
	inspect(val)
end

function love.update()
	
end