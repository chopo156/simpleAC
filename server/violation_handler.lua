RegisterNetEvent("AC:Violations")
AddEventHandler("AC:Violations", function(type)
    if violations[tonumber(type)] ~= nil then
        if violations[tonumber(type)].restrict_client then
            RestrictPlayer(source)
            DropPlayer(source, prefix.." "..violations[tonumber(type)].text.."\n"..restricted_message)
        else
            DropPlayer(source, prefix.." "..violations[tonumber(type)].text)
        end 
    end
end)