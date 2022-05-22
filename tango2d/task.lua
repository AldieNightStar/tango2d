task = {}

local Task = {}

function Task:add(f)
    table.insert(self.tasks, f)
end

function Task:call(arg, doClear)
    for _, f in ipairs(self.tasks) do
        f(arg)
    end
    if doClear then self.tasks = {} end
end

function Task:list() return self.tasks end

function task.new()
    return setmetatable({tasks={}}, {__index=Task})
end

function task.isTask(t)
    local m = getmetatable(t)
    if not m then return nil end
    return m.__index == Task
end