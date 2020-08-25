RegisterNetEvent("AC:InitModules")
AddEventHandler("AC:InitModules", function(modules)
    if modules.healths_check then
        InitHealthChecks()
    end
end)