-- To trigger mhacking

function benderhackingbank(success, timeremaining)
    local coords = GetEntityCoords(GetPlayerPed(-1))
    for _, bankcoords in pairs(config.bankcoords) do
    if (config.enableBanks == true) then
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, bankcoords.x, bankcoords.y, bankcoords.z, true) < config.distance then
            if success then
                TriggerServerEvent('BenderPRT:Addmessage', bankcoords.alarm)
                TriggerEvent('mhacking:hide')
            else
                TriggerEvent('mhacking:hide')
            end
        end
    end
    end
end

function benderhackingshop(success, timeremaining)
    local coords = GetEntityCoords(GetPlayerPed(-1))
    for _, shopcoords in pairs(config.shopcoords) do
    if (config.enableBanks == true) then
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, shopcoords.x, shopcoords.y, shopcoords.z, true) < config.distance then
            if success then
                TriggerServerEvent('BenderPRT:Addmessage', shopcoords.alarm)
                TriggerEvent('mhacking:hide')
            else
                TriggerEvent('mhacking:hide')
            end
        end
    end
    end
end

-- Main thread to for hacking and grabbing location

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        for _, bankcoords in pairs(config.bankcoords) do
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, bankcoords.x, bankcoords.y, bankcoords.z, true) < config.distance then
                DrawMarker(config.markertype, bankcoords.x, bankcoords.y, bankcoords.z - 0.95, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, config.size, config.size, .2, 255, 0, 0, 255, false, false, 2, false, nil, nil, false)
                DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
                if IsControlJustReleased(1,38) then -- E Key
                    TriggerEvent("mhacking:show")
                    TriggerEvent("mhacking:start",7,config.hacktimer,benderhackingbank)
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        for _, shopcoords in pairs(config.shopcoords) do
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, shopcoords.x, shopcoords.y, shopcoords.z, true) < config.distance then
                DrawMarker(config.markertype, shopcoords.x, shopcoords.y, shopcoords.z - 0.95, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, config.size, config.size, .2, 255, 0, 0, 255, false, false, 2, false, nil, nil, false)
                DisplayNotification('~r~Press the ~w~E ~r~key to rob the 24/7')
                if IsControlJustReleased(1,38) then -- E Key
                    TriggerEvent("mhacking:show")
                    TriggerEvent("mhacking:start",7,config.hacktimer,benderhackingshop)
                end
            end
        end
    end
end)

-- Below is to make a function to display notification.

function DisplayNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

Citizen.CreateThread(function()

    for _, bankcoords in pairs(config.bankcoords) do
        bankcoords.blip = AddBlipForCoord(bankcoords.x, bankcoords.y, bankcoords.z)
      SetBlipSprite(bankcoords.blip, config.SpriteId)
      SetBlipDisplay(bankcoords.blip, 4)
      SetBlipScale(bankcoords.blip, 0.9)
      SetBlipColour(bankcoords.blip, config.SpriteColour)
      SetBlipAsShortRange(bankcoords.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(bankcoords.name)
      EndTextCommandSetBlipName(bankcoords.blip)
    end
end)

Citizen.CreateThread(function()

    for _, shopcoords in pairs(config.shopcoords) do
        shopcoords.blip = AddBlipForCoord(shopcoords.x, shopcoords.y, shopcoords.z)
      SetBlipSprite(shopcoords.blip, config.ShopSpriteId)
      SetBlipDisplay(shopcoords.blip, 4)
      SetBlipScale(shopcoords.blip, 0.9)
      SetBlipColour(shopcoords.blip, config.ShopSpriteColour)
      SetBlipAsShortRange(shopcoords.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(shopcoords.name)
      EndTextCommandSetBlipName(shopcoords.blip)
    end
end)