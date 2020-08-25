client_tokens = {}

RegisterNetEvent("AC:RegisterClient")
AddEventHandler("AC:RegisterClient", function(token)
    if client_tokens[source] == nil then
        client_tokens[source] = {}
        client_tokens[source].token = token
        client_tokens[source].ids = GetPlayerIdentifiers(source)
        TriggerClientEvent("AC:InitModules", source, modules)
    else
        if violations[1].restrict_client then
            RestrictPlayer(source)
            DropPlayer(source, prefix.." "..violations[1].text.."\n"..restricted_message)
        else
            DropPlayer(source, prefix.." "..violations[1].text)
        end
    end
end)