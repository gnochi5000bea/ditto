local services = loadstring(game:HttpGet('https://raw.githubusercontent.com/gnochi5000bea/ditto/refs/heads/main/utilities/services.lua', true))()

local utility = {connections = {}, stored_connections = {}, debounces = {}}; do
    local connections = utility.connections
    local stored_connections = utility.stored_connections
    local debounces = utility.debounces
    
    function utility:create_connection(signal, callback)
	    local connection = signal:Connect(callback)

	    table.insert(utility.stored_connections, connection)

	    return connection
    end

    function utility:register_debounce(flag)
        debounces[flag] = tick()

        return debounces[flag]
    end

    function utility:debounce(flag, time)
        if tick() - debounces[flag] >= time then
            debounces[flag] = tick()

            return true
        end

        return false
    end
end

return utility
