function mid(nums)
    local n = #nums
    local nn = 0
    for i, v in ipairs(nums) do
        nn = v + nn
    end
    return nn / n
end

function limitate(n, period)
    if n < 0 then n = n + period
    elseif n > 0 then n = n - period end
    if n >= -period and n <= period then
        n = 0
    end
    return n
end