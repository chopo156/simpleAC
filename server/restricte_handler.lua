local restricted = {}

function RestrictPlayer(id)
    local ids = GetPlayerIdentifiers(id)
    for k,v in pairs(ids) do
        if not restricte_ip then
            if not string.find(v, "ip:") then
                table.insert(restricted, v)
                if display_console_restrict_add then
                    print("^1"..prefix.."^7: ["..v.."] has been restricted.")
                end
            end
        else
            table.insert(restricted, v)
            if display_console_restrict_add then
                print("^1"..prefix.."^7: ["..v.."] has been restricted.")
            end
        end
    end
end