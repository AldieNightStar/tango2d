# Tango2D

# Colliders
```lua
-- Check colliding point with square
collide(
	player.x, player.y,
	wall.x, wall.y, wall.width, wall.height
)

-- Check two squares for colliding
collide4(
	player.x, player.y, player.width, player.height,
	wall.x, wall.y, wall.width, wall.height
)
```

# Math Utils
```lua
-- Get middle number from array
mid({10, 20, 30}) -- will return 20

-- Limitate the number. Make it closer to 0
-- If number > 0 then number -= 0.25
-- Or if number < 0 then number += 0.25
limitate(velocity, 0.25)
```

# Vector
```lua
-- New Vector
local v = newVector(10, 10)

-- Set new x y
v:set(12, 13)

-- Get x y
local x, y = v:get()

-- Add vector
-- return new vector with x+x y+y
local v = v:add(newVector(10, 12))

-- Get negative vector
-- For example x=1 y=2 will be x=-1 y=-2
local v = v:negate()

-- Makes vector's x,y multiplied by 2
local v = v:multiply(2)

-- Makes vector's x,y divided by 2
local v = v:divide(2)

-- Subtract from vector
local v = v:sub(newVector(1,2))

-- Returns true if variable is Vector
local ok = isVector(v)
```

# Signal
```lua
-- Create signal
local sig = newSignal()

-- Connect to a signal
-- It will return same function as in arguments
local some_func = sig:connect(some_func)

-- Disconnect from a signal
sig:disconnect(some_func)

-- Emit the signal
sig:emit(data)

-- Check that object is Signal
isSignal(sig)
```

# Game collection
```lua

-- Create collection
local c = collection.new()

-- Add element to the collection
c:add(elem)

-- Add element to the collection, but when elements > 10 - remove first one
c:add(elem, 10)

-- Add element to the collection or return false when there are already 10 elements
c:addl(elem, 10)

-- Process each element
c:process(function(elem)
	if elem.hp < 0 then
		-- Delete the element
		return collection.delete
	end
end)

-- Get list of all elements
local elems = c:list()
```

# Graphics
```lua
-- Draw the Rectangle
rect(x, y, w, h, color)

-- Load font for gprint
local font = loadFont("Arial.ttf", 16)

-- Set font for gprint
gfont(font)

-- Print text on the screen
gprint(text, x, y, size=1, color=white)

-- Draw the Line from x,y to x2,y2
line(x, y, x2, y2, color=white)

-- Draw the image (img) to the screen
-- x,y   - coords
-- sx,sy - scale x,y 
draw(img, x, y, sx, sy)

-- Draw (SIZED) image (img) to the screen
-- x,y   -- coords
-- w,h   -- size in pixels
draws(img, x, y, w, h)

-- Load Image
local img = gload(filename)
```

# Controls
```lua
-- Is key is pressed
if key.left then ... end
if key.right then ... end
if key.up then ... end
if key.down then ... end
if key.space then ... end
if key.enter then ... end
if key.esc then ... end
if key.w then ... end
if key.a then ... end
if key.s then ... end
if key.d then ... end
-- etc

-- Joystick
-- There are only p1, p2 player joysticks
if joy.p1.dpleft then ... end
if joy.p1.dpright then ... end
if joy.p1.dpup then ... end
if joy.p1.dpdown then ... end
if joy.p1.a then ... end
if joy.p1.b then ... end
if joy.p1.x then ... end
if joy.p1.y then ... end
if joy.p1.back then ... end
if joy.p1.start then ... end
if joy.p1.leftstick then ... end
if joy.p1.rightstick then ... end
if joy.p1.leftshoulder then ... end
if joy.p1.rightshoulder then ... end
if joy.p1.guide then ... end

-- Mouse
if mouse.left then ... end
if mouse.right then ... end
if mouse.middle then ... end
if mouse.button4 then ... end
if mouse.button5 then ... end
local pos = mouse.position -- {x, y}
```