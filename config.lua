prefix = "Simple AC |"

restricted_message = "You have been temporarily restricted from this server due to AC violations. Your account is being investigated."

restricte_ip = false -- Can cause false restrict / ban if cheater is using VPN or cloud service sush as Shadow, other player can take the same IP

display_console_restrict_add = true

alive_check = true
alive_check_cooldown = 1 -- In minutes.

modules = {
    healths_check = true, -- This disable health regen
    spectator = true,
    blacklist_entity = true,
    entity_rate_limiter = true,
    entity_rate_limiter_limit = 300,
    entity_rate_limiter_reset = 5, -- In second. 30 means the limiter will be reseted every 30 seconds.
    entity_rate_limiter_alerts = { -- Display console alerts
        [50] = true, 
        [100] = true, 
        [150] = true, 
        [200] = true, 
        [250] = true, 
        [300] = true, 
        [350] = true, 
        [400] = true, 
        [450] = true, 
        [500] = true, 
    }
}

blacklisted_entity = {
    [GetHashKey("ambulance")] = true,
    [GetHashKey("police")] = true,
    [GetHashKey("police2")] = true,
    [GetHashKey("policeb")] = true,
}

violations = {
    [1] = {
        text = "Client token violation.",
        webhook = "",
        restrict_client = true,
    },
    [2] = {
        text = "Alive status token violation.",
        webhook = "",
        restrict_client = true,
    },
    [3] = {
        text = "Alive status violation.",
        webhook = "",
        restrict_client = true,
    },
    [4] = {
        text = "Health check violation.",
        webhook = "",
        restrict_client = true,
    },
    [5] = {
        text = "Spectator check violation.",
        webhook = "",
        restrict_client = true,
    },
}