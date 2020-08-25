prefix = "Simple AC |"

restricted_message = "You have been temporarily restricted from this server due to AC violations. Your account is being investigated."

restricte_ip = false -- Can cause false restrict / ban if cheater is using VPN or cloud service sush as Shadow, other player can take the same IP

display_console_restrict_add = true

alive_check = true
alive_check_cooldown = 1 -- In minutes.

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
}