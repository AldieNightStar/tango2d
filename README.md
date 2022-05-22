# Tango2D

# Graphics
```lua
-- Colors
-- Check colors.lua file
color.red
color.white
color.green

-- Custom color
-- each number is float from 0 to 1
local mycolor = color.new(r,b,g)

-- Custom color 256-type
-- each number is int from 0 to 255
local mycolor = color.newb(r,g,b)

-- TIC80 Colors
-- You can use palette from TIC80 console
-- From 0 up to 15. Supports number overflow
color.tic[id]

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

-- Draw tile on the screen
tile(x, y, color)

-- Draw tile on the screen with litter subtile inside of darker color
tilex(x, y, color)

-- Change tile size to draw
tileSize = 20

-- Get tile-based mouse position
-- Could be used to know where to put the tile
local mx, my = tileMousePos()

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
-- Supports p1, p2, p3 and p4 players
if joy.p1.left then ... end
if joy.p1.right then ... end
if joy.p1.up then ... end
if joy.p1.down then ... end
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

-- Make values closer to 0 by period number
-- for example v:limitetate(1) will slowly turn to 0 XY by 1 each call
local v = v:limitate(period)

-- Bounce vector
local v = v:bounce(true) -- horizontal bounce
local v = v:bounce(false) -- vertical bounce

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


# Values
* Special value which can be changed once or once per some time, or filter etc...
```lua
-- Create once-set value. Will be changed once, but second time it will NOT change
local val = value.new(value.once)

-- Create once-per value. Will be changed only ONCE PER 5 seconds
local val = value.new(value.oncePer(5000))

-- Create typed value. Will be changed only to STRING values
local val = value.new(value.ofType("string"))

-- Create filter value. Will be changed ONLY if Filter returns true
-- In our case value will be changed to ANY of values if they has hp>0
local val = value.new(value.filter(
	function(p) return p.hp > 0 end
))

-- Change value
val:set(newVal)

-- Get value
local v = val:get()
```

# OOP
```lua
Player = {}
function Player:move() ... end
function Player:jump() ... end
function Player:shoot() ... end

-- Create new object that inherits Player
local player = new({}, Player)

-- Check that variable inherits player
if typeof(player, Player) then ... end
```

# Debug tools
```lua
-- Turn value into a string representation
-- Unknown values will be: ??
local s = toString(value)

-- Will print out what is inside of the object
-- Could inspect only tables which are iterable with pairs(tableName)
inspect(player, print)
```
* Example:
```
root.sprite: [number] 12
root.inventory.rock: [number] 4
root.inventory.sword: [number] 1
root.inventory.knife: [number] 1
root.inventory.bread: [number] 3
root.inventory.cloth: [number] 16
root.inventory.food: [number] 1
root.y: [number] 240
root.spells.reborn: [number] 2
root.x: [number] 120
```

# Tasks
```lua
-- Create new tasks
local t = task.new()

-- Check that variable is tasks
if task.isTask(t) then ... end

-- Call each task and give an argument
t:call(arg)

-- Call tasks and clear after it
t:call(arg, true)

-- Add (Accumulate) the task
t:add(func)

-- Get all tasks as list
t:list()
```

# JSON
```lua
-- Reads json string and converts to table
json.decode(str)

-- Reads table and make the json string
json.encode(obj)
```

# Save/Load
```lua
-- Save into file json
saves.save("file.json", leveldata)

-- Load from json or nil if not exist
local leveldata = saves.load("file.json")

-- Load from json or default value if not exist
local leveldata = saves.load("file.json", {level="DefaultValue"})
```

# Matrix
```lua
-- new matrix
local m = matrix()

-- set val
m:set(10, 10, VALUE)

-- get val
m:get(10, 10)
```

# Timing
```lua
-- Create OncePer object
local fire_charge = newOnce()

-- Will return true ONCE per N milliseconds
if fire_charge(5000) then ... end

-- Get time in ms since game is started
local ms = time()

-- Returns number from 0 to max by each call
-- times_per_second - How fast change the number per second (Maximum: 1000)
local n = tick(max, time_per_second)
```

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
local velocity = limitate(velocity, 0.25)
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

# State Machine
```lua
-- Create the state machine
local s = newStateMachine()

-- register state
s:register("name", function(s)
	s.count          -- count of calls since last state change. Starting with 1
	s.dat            -- argument data from call(...) method
	s:switch("name") -- change current state to another
end)

-- change the state
s:switch("name")

-- call the state
-- args - will be assigned to s.dat variable (see in register part)
s:call(args)
```