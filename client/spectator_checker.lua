function InitSpectatorChecks()
    Citizen.CreateThread(function()
        while true do
            if NetworkIsInSpectatorMode() then
                TriggerServerEvent("AC:Violations", 5)
            end
            Wait(2000)
        end
    end)
end