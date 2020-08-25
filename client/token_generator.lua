local generated_token = nil

function GenerateToken()
    return ""..math.random(10001,90009).."-"..math.random(10001,90009).."-"..math.random(10001,90009).."-"
end

Citizen.CreateThreadNow(function()
    generated_token = GenerateToken()
    TriggerServerEvent("AC:RegisterClient", generated_token)
end)

RegisterNetEvent("AC:IsAlive")
AddEventHandler("AC:IsAlive", function()
    TriggerServerEvent("AC:IsAlive", generated_token)
end)