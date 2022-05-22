saves = {}

function saves.save(name, value)
    love.filesystem.write(name, json.encode(value))
end

function saves.load(name)
    return json.decode(love.filesystem.read(name))
end