saves = {}

function saves.save(name, value)
    love.filesystem.write(name, json.encode(value))
end

function saves.load(name, defaultValue)
    if love.filesystem.isFile(name) then
        return json.decode(love.filesystem.read(name))
    end
    return defaultValue
end