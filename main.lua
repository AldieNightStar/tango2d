require 'tango2d'

function love.draw()
	
end

function love.load()
	player = {
		x=120,
		y=240,
		sprite=12,
		inventory={
			sword=1,
			knife=1,
			bread=3,
			cloth=16,
			food=1,
			rock=4
		},
		spells={
			reborn=2
		}
	}
	inspect(player, print)
end

function love.update()
	
end