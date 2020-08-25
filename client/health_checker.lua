function InitHealthChecks()

    Citizen.CreateThread(function()
        while true do
            local pPed = GetPlayerPed(-1)
            local pHeatlh = GetEntityHealth(pPed)

            if pHeatlh > 200 then
                TriggerServerEvent("AC:Violations", 4)
            end

            SetPlayerHealthRechargeMultiplier(GetPlayerIndex(), 0.0)

            SetEntityHealth(pPed, pHeatlh - 2)
            Wait(200)
            if GetEntityHealth(pPed) ~= pHeatlh - 2 then
                TriggerServerEvent("AC:Violations", 4)
            else
                SetEntityHealth(pPed, pHeatlh + 2)
            end

            Wait(1000)
        end
    end)
end