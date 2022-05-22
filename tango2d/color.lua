color = {}

function color:new(r, g, b)
    return {r, g, b, 1}
end

color.white = color:new(1, 1, 1)
color.red = color:new(1, 0, 0)
color.green = color:new(0, 1, 0)
color.blue = color:new(0, 0, 1)
color.black = color:new(0, 0, 0)
color.grey = color:new(.5, .5, .5)