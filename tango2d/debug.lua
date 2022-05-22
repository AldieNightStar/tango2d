function toString(k)
    local r = "??"
    if type(k) == "string" then r = k
    elseif type(k) == "number" then r = ""..k
    elseif type(k) == "boolean" then if k then r = "true" else r = "false" end
    elseif type(k) == "function" then r = "function("..debug.getinfo(k).nparams.." params)"
    elseif type(k) == "table" then
        local t = "table{ "
        for tk, _ in pairs(k) do
            t = t.."\""..tk.."\" "
        end
        r = t.."}"
    end
    return r
end

function inspect(obj, printFunc, prefix)
    if printFunc == nil then printFunc = print end
    if prefix==nil then prefix = "root." end
    for k, v in pairs(obj) do
        if type(v) == "table" then
            inspect(v, printFunc, prefix..toString(k)..".")
        else
            local rkey = toString(k)
            local rval = toString(v)
            printFunc(prefix..rkey..": ["..type(v).."] "..rval)
        end
    end
    printFunc("---------------")
end