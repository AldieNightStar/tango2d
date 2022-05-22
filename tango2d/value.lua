value = {}

local Value = {}

local function nop() end

function value.once(t, old, newOne)
    if old == nil then return newOne end
    return old
end

function value.oncePer(ms) return function(t, old, newOne)
    if not t.once then t.once = newOnce() end
    if t.once(ms, nop) then
        return newOne
    end
    return old
end end

function value.ofType(tp) return function(t, old, newOne)
    if type(newOne) == tp then return newOne end
    return old
end end

function value.filter(f) return function(t, old, newOne)
    if f(newOne) then return newOne else return old end
end end

function Value:get() return self.__val end
function Value:set(val) self.__val = self.t(self, self.__val, val) end

function value.new(typ)
    return new({t=typ}, Value)
end