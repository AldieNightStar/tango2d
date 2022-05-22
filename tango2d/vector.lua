local Vector = {}

function Vector:set(x, y)
    self.x = x
    self.y = y
end

function Vector:get()
    return self.x, self.y
end

function Vector:add(v)
    return newVector(self.x + v.x, self.y + v.y)
end

function Vector:negate()
    return newVector(-self.x, -self.y)
end

function Vector:bounce(horizontal)
    if horizontal then return newVector(-self.x, self.y)
    else return newVector(self.x, -self.y) end
end

function Vector:multiply(num)
    return newVector(self.x*num, self.y*num)
end

function Vector:divide(num)
    return newVector(self.y/num, self.x/num)
end

function Vector:sub(v)
    return self:add(v:negate())
end

function Vector:limitate(period)
    return newVector(limitate(self.x, period), limitate(self.y, period))
end

function newVector(x, y)
    local v = setmetatable({}, {__index=Vector})
    v.x = x
    v.y = y
    return v
end

function isVector(v)
    local m = getmetatable(m)
    if not m then return false end
    return m.__index == Vector
end