function new(t, super)
    local mt = {__index=super}
    return setmetatable(t, mt), mt
end

function typeof(t, super)
  local m = getmetatable(t)
  if not m then return false end
  return m.__index == super
end