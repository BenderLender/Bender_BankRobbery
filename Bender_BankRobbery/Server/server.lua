RegisterNetEvent('BenderPRT:Addmessage')
AddEventHandler('BenderPRT:Addmessage', function(msg)
    TriggerClientEvent('chatMessage', -1, msg)
end)