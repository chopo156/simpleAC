function GenerateToken()
    return ""..math.random(10001,90009).."-"..math.random(10001,90009).."-"..math.random(10001,90009).."-"
end

Citizen.CreateThreadNow(function()
    TriggerServerEvent("AC:RegisterClient", GenerateToken())
end)