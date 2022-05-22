function new(t, super)
    local mt = {__index=super}
    return setmetatable(t, mt), mt
  end