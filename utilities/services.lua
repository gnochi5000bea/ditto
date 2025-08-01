local get_service = setmetatable({}, {__index = function(Self, Service)
    return game:GetService(Service)
end})

local service_list = {'Players', 'RunService', 'ReplicatedStorage', 'CoreGui', 'TextService', 'TextChatService', 'HttpService', 'GuiService', 'UserInputService', 'MarketplaceService', 'TweenService', 'VirtualUser', 'Stats', 'StarterGui', 'CollectionService'}

local services = {}; do
    for index, service in pairs service_list do
        services[service] = get_service[service]
    end

    services['VirtualInputManager'] = Instance.new('VirtualInputManager')
end

return services
