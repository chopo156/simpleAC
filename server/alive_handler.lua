local clients_alive = {}
Citizen.CreateThread(function()
    if not alive_check then return end
    while true do
        Wait(alive_check_cooldown*60*1000)
        print("^1"..prefix.."^7: Checking alive status for all clients ...")
        clients_alive = {}

        for k,v in pairs(GetPlayers()) do
            clients_alive[source] = false
            TriggerClientEvent("AC:IsAlive", v)
        end

        Wait(10*1000)
        for k,v in pairs(clients_alive) do
            if GetPlayerPing(k) ~= 0 then
                if v == false then
                    if violations[3].restrict_client then
                        RestrictPlayer(k)
                        DropPlayer(k, prefix.." "..violations[3].text.."\n"..restricted_message)
                    else
                        DropPlayer(k, prefix.." "..violations[3].text)
                    end 
                end
            end
        end

        print("^1"..prefix.."^7: Alive status check for all clients done!")
    end
end)


RegisterNetEvent("AC:IsAlive")
AddEventHandler("AC:IsAlive", function(token)
    if client_tokens[source] == token then
        clients_alive[source] = true
    else
        if violations[2].restrict_client then
            RestrictPlayer(source)
            DropPlayer(source, prefix.." "..violations[2].text.."\n"..restricted_message)
        else
            DropPlayer(source, prefix.." "..violations[2].text)
        end
    end
end)