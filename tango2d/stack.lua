function newStack()
    local s = {ptr=1, s={}}
    function s:push(val)
        s.s[s.ptr] = val
        s.ptr = s.ptr + 1
    end
    function s:pop()
        s.ptr = s.ptr - 1
        if s.ptr < 1 then s.ptr = 1; return nil end
        return s.s[s.ptr]
    end
    return s
end