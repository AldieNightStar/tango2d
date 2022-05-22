function newOnce()
    local o = setmetatable({}, {__call=function(self, period, func)
        local time = time()
        if self.allowed == nil then self.allowed = time end
        if time < self.allowed then return false
        else self.allowed = time + period; func() end
        return true
    end})
    return o
end

function time()
    return math.floor(love.timer.getTime() * 1000)
end

function tick(max, times_per_second)
	return math.floor(time()/(1000/times_per_second))%max
end