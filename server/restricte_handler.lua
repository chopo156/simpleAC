local restricted = {}

function RestrictPlayer(id)
    local ids = GetPlayerIdentifiers(id)
    for k,v in pairs(ids) do
        if not restricte_ip then
            if not string.find(v, "ip:") then
                restricted[v] = true
                if display_console_restrict_add then
                    print("^1"..prefix.."^7: ["..v.."] has been restricted.")
                end
            end
        else
            restricted[v] = true
            if display_console_restrict_add then
                print("^1"..prefix.."^7: ["..v.."] has been restricted.")
            end
        end
    end
end


local function OnPlayerConnecting(name, setKickReason, deferrals)
    local source = source
    local identifiers = GetPlayerIdentifiers(player)

    for _, v in pairs(identifiers) do
        if restricted[v] ~= nil then
            CancelEvent()
            setKickReason(prefix.." "..restricted_message)
        end
    end
end

AddEventHandler("playerConnecting", OnPlayerConnecting)