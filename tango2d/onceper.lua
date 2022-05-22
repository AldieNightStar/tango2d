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
    return love.timer.getTime() * 1000
end