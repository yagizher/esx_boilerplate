ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while not ESX do
        ESX = exports.es_extended:getSharedObject()

        Citizen.Wait(100)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)
