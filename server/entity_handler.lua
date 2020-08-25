local entity_rate_limiter = {}

AddEventHandler("entityCreating", function(entity) 
    if blacklisted_entity[GetEntityModel(entity)] ~= nil then
        CancelEvent()
    end


    if modules.entity_rate_limiter then
        local source = NetworkGetEntityOwner(entity)
        if entity_rate_limiter[source] == nil then
            entity_rate_limiter[source] = 1
        else
            entity_rate_limiter[source] = entity_rate_limiter[source] + 1
        end

        if modules.entity_rate_limiter_alerts[entity_rate_limiter[source]] ~= nil then
            print("^1"..prefix.."^7: Entity counter for [^3"..source.."^7] = "..entity_rate_limiter[source].." reached in less than ^3"..modules.entity_rate_limiter_reset.."^7s")
        end

        if entity_rate_limiter[source] >= modules.entity_rate_limiter_limit then
            CancelEvent()
        end
    end


end)

Citizen.CreateThread(function()
    while true do
        Wait(modules.entity_rate_limiter_reset*1000)
        entity_rate_limiter = {}
    end
end)