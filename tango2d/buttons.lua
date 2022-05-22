-- KEYS(P)
(function()
    key = setmetatable({}, {__index=function(t, name)
        return love.keyboard.isDown(name)
    end})
    
    local joys = love.joystick.getJoysticks()
    local joy1 = joys[1]
    local joy2 = joys[2]

    joy = {
        p1=setmetatable({}, {__index=function(t, name)
            if joy1 then
                return joy1:isGamepadDown(name)
            end
            return false
        end}),
        p2=setmetatable({}, {__index=function(t, name)
            if joy2 then
                return joy2:isGamepadDown(name)
            end
            return false
        end}),
    }

    mouse = setmetatable({}, {__index=function (t, name)
        if name == "position" then
            local pos = love.mouse.getPosition()
            return {x=pos.y, y=pos.y}
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