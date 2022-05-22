(function()
	local StateMachineSuper = {}
	function StateMachineSuper:register(name, func)
	    self.states[name] = func
	end
	function StateMachineSuper:switch(name)
	    self.state = self.states[name]
	    self.count = 0
	end
	function StateMachineSuper:call(args)
	    if self.state then
	        self.dat = args
	        self.state(self)
	        self.count = self.count + 1
	    end
	end
	function newStateMachine()
	    st = {
	        states={},
	        count=0
	    }
	    setmetatable(st, {__index=StateMachineSuper})
	    return st
	end
end)()