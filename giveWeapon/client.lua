function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    DrawNotification(false, false)
end

RegisterCommand("giveweapon", function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    local weaponHash = GetHashKey(args[1])
    local ammoCount = 9999

    GiveWeaponToPed(playerPed, weaponHash, ammoCount, false)
end)

TriggerEvent('chat:addSuggestion', '/giveweapon', 'Give weapon command.', {{
    name = "weapon_key",
    help = "Example: weapon_pistol"
}})
