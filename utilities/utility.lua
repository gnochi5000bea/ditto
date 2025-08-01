local services = loadstring(game:HttpGet('https://raw.githubusercontent.com/gnochi5000bea/cuck84/refs/heads/main/utilities/services.lua', true))()

local utility = {connections = {}, stored_connections = {}}; do
    function utility:create_connection(signal, callback)
		    local connection = signal:Connect(callback)

		    table.insert(utility.stored_connections, connection)

		    return connection
	  end
end

return utility
