local services = loadstring(game:HttpGet('https://raw.githubusercontent.com/gnochi5000bea/ditto/refs/heads/main/utilities/services.lua', true))()

local lplr = services['Players'].LocalPlayer

local functions = {}; do
    function functions:is_character_loaded()
        local character = lplr.Character

        if character then 
            return character:FindFirstChild("HumanoidRootPart"), character:FindFirstChild("Humanoid"), character
        end

        return
    end
end

return functions
