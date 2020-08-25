RegisterNetEvent("AC:InitModules")
AddEventHandler("AC:InitModules", function(modules)
    if modules.healths_check then
        InitHealthChecks()
    end
    if modules.spectator then
        InitSpectatorChecks()
    end
end)