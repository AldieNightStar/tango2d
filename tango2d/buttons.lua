-- KEYS(P)
(function()
    key = setmetatable({}, {__index=function(t, name)
        return love.keyboard.isDown(name)
    end})

    local joys = love.joystick.getJoysticks()
    local joy1 = joys[1]
    local joy2 = joys[2]
    local joy3 = joys[3]
    local joy4 = joys[4]

    local function joyController(joyN) return function(t, name)
        if name == "left" then name = "dpleft"
        elseif name == "right" then name = "dpright"
        elseif name == "up" then name = "dpup"
        elseif name == "down" then name = "dpdown" end
        if joyN then
            return joyN:isGamepadDown(name)
        end
        return false
    end end

    joy = {
        p1=setmetatable({}, {__index=joyController(joy1)}),
        p2=setmetatable({}, {__index=joyController(joy2)}),
        p3=setmetatable({}, {__index=joyController(joy3)}),
        p4=setmetatable({}, {__index=joyController(joy4)}),
    }

    mouse = setmetatable({}, {__index=function (t, name)
        if name == "position" then
            local mx, my = love.mouse.getPosition()
            return {x=mx, y=my}
        elseif name == "left" then
            return love.mouse.isDown(1)
        elseif name == "right" then
            return love.mouse.isDown(2)
        elseif name == "middle" then
            return love.mouse.isDown(3)
        elseif name == "button4" then
            return love.mouse.isDown(4)
        elseif name == "button5" then
            return love.mouse.isDown(5)
        end
    end})
end)()