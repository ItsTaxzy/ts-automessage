Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for i in pairs(config.messages) do
            if config.enabled then
                TriggerEvent('chatMessage', 'TS AUTOMESSAGE', 'automessage', config.messages[i]) -- Chatsender Name, Chatsender Message
                Citizen.Wait(config.time * 60000)
            end
        end
    end
end)
