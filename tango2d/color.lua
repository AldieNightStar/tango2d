color = {}

function color.new(r, g, b)
    return {r, g, b, 1}
end

function color.newb(r, g, b)
    local rx, gx, bx = love.math.colorFromBytes(r, b, g)
    return {rx, gx, bx, 1}
end

color.white = color.new(1, 1, 1)
color.red = color.new(1, 0, 0)
color.green = color.new(0, 1, 0)
color.blue = color.new(0, 0, 1)
color.black = color.new(0, 0, 0)
color.grey = color.new(.5, .5, .5)
color.yellow = color.new(1, 1, 0)
color.pink = color.new(1, 0, 1)

-- Color 256-type
color.purple = color.newb(115, 0, 189)
color.orange = color.newb(233, 162, 55)
color.darkRed = color.newb(99, 1, 1)

color.tic = setmetatable({
    color.newb(93, 39, 93),    -- purple
    color.newb(93, 39, 93),    -- tic red
    color.newb(239, 125, 87),  -- tic orange
    color.newb(255, 205, 117), -- tic yellow
    color.newb(167, 240, 112), -- tic l-green
    color.newb(56, 183, 100),  -- tic green
    color.newb(37, 113, 121),  -- tic Dark Green
    color.newb(41, 54, 111),   -- tic Dark Blue
    color.newb(59, 93, 201),   -- tic Blue
    color.newb(65, 166, 246),  -- tic Light Blue
    color.newb(115, 239, 247), -- tic Cyan
    color.newb(244, 244, 244), -- tic White
    color.newb(148, 176, 194), -- tic Light Grey
    color.newb(86, 108, 134),  -- tic Grey
    color.newb(51, 60, 87),    -- tic Dark Grey
}, {__index=function(t, n) return t[math.floor(n)%16] end})
color.tic[0] = color.newb(26, 28, 44) -- tic black