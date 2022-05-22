function matrix()
    local arr={}
    function arr:get(x,y)
        if self[y] == nil then self[y] = {} end
        return self[y][x]
    end
    function arr:set(x, y, val)
        if self[y] == nil then self[y] = {} end
        self[y][x] = val
    end
    return arr
end