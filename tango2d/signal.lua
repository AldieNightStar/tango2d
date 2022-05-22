-- SIGNAL
(function()
    local SignalSuper = {}
    
    function SignalSuper:disconnect(func)
    	local toRem = -1
    	for id, f in pairs(self.funcs) do
    	    if f == func then
    	    	toRem = id
    	    end
    	end
    	if toRem > -1 then
    		table.remove(self.funcs, toRem)
    	end
    end
    
    function SignalSuper:emit(data)
    	for id, func in pairs(self.funcs) do
    	    func(data)
    	end
    end
    
    function SignalSuper:connect(func)
    	table.insert(self.funcs, func)
    	return func
    end
    
    function newSignal()
    	local sig = {}
    	sig.funcs = {}
    	setmetatable(sig, {__index=SignalSuper})
    	return sig
    end
    
    function isSignal(s)
        local m = getmetatable(s)
        if not m then return false end
        return m.__index == SignalSuper
    end
end)()