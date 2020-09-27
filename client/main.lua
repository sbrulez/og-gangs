Keys = {
    ['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
    ['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
    ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
    ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
    ['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
    ['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
    ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
    ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
}


ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
  end)
  

local PlayerJob = {}
local PlayerData = {}


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function IsJobTrue1()
    if PlayerData ~= nil then
        local IsJobTrue1 = false
        if PlayerData.job ~= nil and PlayerData.job.name == 'ballas' then
            IsJobTrue1 = true
        end
        return IsJobTrue1
    end
end

function IsJobTrue2()
    if PlayerData ~= nil then
        local IsJobTrue2 = false
        if PlayerData.job ~= nil and PlayerData.job.name == 'thefamily' then
        IsJobTrue2 = true
        end
    return IsJobTrue1
   end
end

function IsJobTrue3()
    if PlayerData ~= nil then
        local IsJobTrue3 = false
        if PlayerData.job ~= nil and PlayerData.job.name == 'vagos' then
        IsJobTrue3 = true
        end
    return IsJobTrue3
    end
end  

function IsJobTrue4()
    if PlayerData ~= nil then
        local IsJobTrue4 = false
        if PlayerData.job ~= nil and PlayerData.job.name == 'marabunta' then
        IsJobTrue4 = true
        end
    return IsJobTrue4
end  
end

-- Code
function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Ballas

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue1() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue1() then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnballas"].coords.x, Config.Locations["ogcarspawnballas"].coords.y, Config.Locations["ogcarspawnballas"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["ogcarspawnballas"].coords.x, Config.Locations["ogcarspawnballas"].coords.y, Config.Locations["ogcarspawnballas"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnballas"].coords.x, Config.Locations["ogcarspawnballas"].coords.y, Config.Locations["ogcarspawnballas"].coords.z, true) < 1.5) then
                        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                            DrawText3D(Config.Locations["ogcarspawnballas"].coords.x, Config.Locations["ogcarspawnballas"].coords.y, Config.Locations["ogcarspawnballas"].coords.z, "~g~E~w~ - Store The Vehicle")
                        else
                            DrawText3D(Config.Locations["ogcarspawnballas"].coords.x, Config.Locations["ogcarspawnballas"].coords.y, Config.Locations["ogcarspawnballas"].coords.z, "~g~E~w~ - Remove A Vehicle")
                        end
                        if IsControlJustReleased(0, Keys["E"]) then
                            if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                                DeleteVehicle(GetVehiclePedIsIn(GetPlayerPed(-1)))
                            else
                                ogVehicleSpawnBallas()
                                Menu.hidden = not Menu.hidden
                            end
                        end
                        Menu.renderGUI()
                    end 
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue1() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue1()  then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashballas"].coords.x, Config.Locations["stashballas"].coords.y, Config.Locations["stashballas"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["stashballas"].coords.x, Config.Locations["stashballas"].coords.y, Config.Locations["stashballas"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashballas"].coords.x, Config.Locations["stashballas"].coords.y, Config.Locations["stashballas"].coords.z, true) < 1.5) then
                            DrawText3D(Config.Locations["stashballas"].coords.x, Config.Locations["stashballas"].coords.y, Config.Locations["stashballas"].coords.z, "~g~E~w~ - Use The Stash Here ")
                        if IsControlJustReleased(0, Keys["E"]) then
                        --(Add You Inventory Trigger Here)

                            end
                        end
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)

----TheFamily-----

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue2()  then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue2() then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnTheFamily"].coords.x, Config.Locations["ogcarspawnTheFamily"].coords.y, Config.Locations["ogcarspawnTheFamily"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["ogcarspawnTheFamily"].coords.x, Config.Locations["ogcarspawnTheFamily"].coords.y, Config.Locations["ogcarspawnTheFamily"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnTheFamily"].coords.x, Config.Locations["ogcarspawnTheFamily"].coords.y, Config.Locations["ogcarspawnTheFamily"].coords.z, true) < 1.5) then
                        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                            DrawText3D(Config.Locations["ogcarspawnTheFamily"].coords.x, Config.Locations["ogcarspawnTheFamily"].coords.y, Config.Locations["ogcarspawnTheFamily"].coords.z, "~g~E~w~ - Store The Vehicle")
                        else
                            DrawText3D(Config.Locations["ogcarspawnTheFamily"].coords.x, Config.Locations["ogcarspawnTheFamily"].coords.y, Config.Locations["ogcarspawnTheFamily"].coords.z, "~g~E~w~ - Remove A Vehicle")
                        end
                        if IsControlJustReleased(0, Keys["E"]) then
                            if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                                DeleteVehicle(GetVehiclePedIsIn(GetPlayerPed(-1)))
                            else
                                ogVehicleSpawnTheFamily()
                                Menu.hidden = not Menu.hidden
                            end
                        end
                        Menu.renderGUI()
                    end 
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue2() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue2() then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashthefamily"].coords.x, Config.Locations["stashthefamily"].coords.y, Config.Locations["stashthefamily"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["stashthefamily"].coords.x, Config.Locations["stashthefamily"].coords.y, Config.Locations["stashthefamily"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashthefamily"].coords.x, Config.Locations["stashthefamily"].coords.y, Config.Locations["stashthefamily"].coords.z, true) < 1.5) then
                            DrawText3D(Config.Locations["stashthefamily"].coords.x, Config.Locations["stashthefamily"].coords.y, Config.Locations["stashthefamily"].coords.z, "~g~E~w~ - Use The Stash Here ")
                        if IsControlJustReleased(0, Keys["E"]) then
                        --(Add You Inventory Trigger Here)

                            end
                        end
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)

-------Vagos Gang-------

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue3() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue3() then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnVagos"].coords.x, Config.Locations["ogcarspawnVagos"].coords.y, Config.Locations["ogcarspawnVagos"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["ogcarspawnVagos"].coords.x, Config.Locations["ogcarspawnVagos"].coords.y, Config.Locations["ogcarspawnVagos"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnVagos"].coords.x, Config.Locations["ogcarspawnVagos"].coords.y, Config.Locations["ogcarspawnVagos"].coords.z, true) < 1.5) then
                        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                            DrawText3D(Config.Locations["ogcarspawnVagos"].coords.x, Config.Locations["ogcarspawnVagos"].coords.y, Config.Locations["ogcarspawnVagos"].coords.z, "~g~E~w~ - Store The Vehicle")
                        else
                            DrawText3D(Config.Locations["ogcarspawnVagos"].coords.x, Config.Locations["ogcarspawnVagos"].coords.y, Config.Locations["ogcarspawnVagos"].coords.z, "~g~E~w~ - Remove A Vehicle")
                        end
                        if IsControlJustReleased(0, Keys["E"]) then
                            if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                                DeleteVehicle(GetVehiclePedIsIn(GetPlayerPed(-1)))
                            else
                                ogVehicleSpawnVagos()
                                Menu.hidden = not Menu.hidden
                            end
                        end
                        Menu.renderGUI()
                    end 
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue3() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if PlayerJob.name == "vagos"  then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashVagos"].coords.x, Config.Locations["stashVagos"].coords.y, Config.Locations["stashVagos"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["stashVagos"].coords.x, Config.Locations["stashVagos"].coords.y, Config.Locations["stashVagos"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashVagos"].coords.x, Config.Locations["stashVagos"].coords.y, Config.Locations["stashVagos"].coords.z, true) < 1.5) then
                            DrawText3D(Config.Locations["stashVagos"].coords.x, Config.Locations["stashVagos"].coords.y, Config.Locations["stashVagos"].coords.z, "~g~E~w~ - Use The Stash Here ")
                        if IsControlJustReleased(0, Keys["E"]) then
                         --(Add You Inventory Trigger Here)

                            end
                        end
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)

-------Marabunta Gang-------

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue4() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue4() then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnMarabunta"].coords.x, Config.Locations["ogcarspawnMarabunta"].coords.y, Config.Locations["ogcarspawnMarabunta"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["ogcarspawnMarabunta"].coords.x, Config.Locations["ogcarspawnMarabunta"].coords.y, Config.Locations["ogcarspawnMarabunta"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["ogcarspawnMarabunta"].coords.x, Config.Locations["ogcarspawnMarabunta"].coords.y, Config.Locations["ogcarspawnMarabunta"].coords.z, true) < 1.5) then
                        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                            DrawText3D(Config.Locations["ogcarspawnMarabunta"].coords.x, Config.Locations["ogcarspawnMarabunta"].coords.y, Config.Locations["ogcarspawnMarabunta"].coords.z, "~g~E~w~ - Store The Vehicle")
                        else
                            DrawText3D(Config.Locations["ogcarspawnMarabunta"].coords.x, Config.Locations["ogcarspawnMarabunta"].coords.y, Config.Locations["ogcarspawnMarabunta"].coords.z, "~g~E~w~ - Remove A Vehicle")
                        end
                        if IsControlJustReleased(0, Keys["E"]) then
                            if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                                DeleteVehicle(GetVehiclePedIsIn(GetPlayerPed(-1)))
                            else
                                ogVehicleSpawnMarabunta()
                                Menu.hidden = not Menu.hidden
                            end
                        end
                        Menu.renderGUI()
                    end 
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsJobTrue4() then
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if IsJobTrue4() then
                if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashMarabunta"].coords.x, Config.Locations["stashMarabunta"].coords.y, Config.Locations["stashMarabunta"].coords.z, true) < 10.0) then
                    DrawMarker(2, Config.Locations["stashMarabunta"].coords.x, Config.Locations["stashMarabunta"].coords.y, Config.Locations["stashMarabunta"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                    if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["stashMarabunta"].coords.x, Config.Locations["stashMarabunta"].coords.y, Config.Locations["stashMarabunta"].coords.z, true) < 1.5) then
                            DrawText3D(Config.Locations["stashMarabunta"].coords.x, Config.Locations["stashMarabunta"].coords.y, Config.Locations["stashMarabunta"].coords.z, "~g~E~w~ - Use The Stash Here ")
                        if IsControlJustReleased(0, Keys["E"]) then
                        --(Add You Inventory Trigger Here)

                            end
                        end
                end
            else
                Citizen.Wait(2500)
            end
        else
            Citizen.Wait(2500)
        end
    end
end)


function ogVehicleSpawnBallas()
    ped = GetPlayerPed(-1);
    MenuTitle = "Garage"
    ClearMenu()
    Menu.addButton("Vehicle", "VehicleListBallas", nil)
    Menu.addButton("Close menu", "closeMenuFull", nil) 
end

function ogVehicleSpawnVagos()
    ped = GetPlayerPed(-1);
    MenuTitle = "Garage"
    ClearMenu()
    Menu.addButton("Vehicle", "VehicleListVagos", nil)
    Menu.addButton("Close menu", "closeMenuFull", nil) 
end

function ogVehicleSpawnMarabunta()
    ped = GetPlayerPed(-1);
    MenuTitle = "Garage"
    ClearMenu()
    Menu.addButton("Vehicle", "VehicleListMarabunta", nil)
    Menu.addButton("Close menu", "closeMenuFull", nil) 
end

function ogVehicleSpawnTheFamily()
    ped = GetPlayerPed(-1);
    MenuTitle = "Garage"
    ClearMenu()
    Menu.addButton("Vehicle", "VehicleListTheFamily", nil)
    Menu.addButton("Close menu", "closeMenuFull", nil) 
end


function VehicleListBallas(isDown)
    ped = GetPlayerPed(-1);
    MenuTitle = "Vehicle:"
    ClearMenu()
    for k, v in pairs(Config.Vehicles) do
        Menu.addButton(Config.Vehicles[k], "TakeOutVehicleBallas", k, "Garage", " Engine: 100%", " Body: 100%", " Fuel: 100%")
    end
        
    Menu.addButton("Return", "ogVehicleSpawnBallas",nil)
end


function VehicleListVagos(isDown)
    ped = GetPlayerPed(-1);
    MenuTitle = "Vehicle:"
    ClearMenu()
    for k, v in pairs(Config.Vehicles) do
        Menu.addButton(Config.Vehicles[k], "TakeOutVehicleVagos", k, "Garage", " Engine: 100%", " Body: 100%", " Fuel: 100%")
    end
        
    Menu.addButton("Return", "ogVehicleSpawnVagos",nil)
end


function VehicleListMarabunta(isDown)
    ped = GetPlayerPed(-1);
    MenuTitle = "Vehicle:"
    ClearMenu()
    for k, v in pairs(Config.Vehicles) do
        Menu.addButton(Config.Vehicles[k], "TakeOutVehicleMarabunta", k, "Garage", " Engine: 100%", " Body: 100%", " Fuel: 100%")
    end
        
    Menu.addButton("Return", "ogVehicleSpawnMarabunta",nil)
end


function VehicleListTheFamily(isDown)
    ped = GetPlayerPed(-1);
    MenuTitle = "Vehicle:"
    ClearMenu()
    for k, v in pairs(Config.Vehicles) do
        Menu.addButton(Config.Vehicles[k], "TakeOutVehicleTheFamily", k, "Garage", " Engine: 100%", " Body: 100%", " Fuel: 100%")
    end
        
    Menu.addButton("Return", "ogVehicleSpawnTheFamily",nil)
end

function TakeOutVehicleBallas(vehicleInfo)
    ESX.Game.SpawnVehicle(vehicleInfo, {
        x = Config.Locations["ogcarspawnballas"].coords.x,
        y = Config.Locations["ogcarspawnballas"].coords.y,
        z = Config.Locations["ogcarspawnballas"].coords.z
      }, Config.Locations["ogcarspawnballas"].coords.h, function(vehicle)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
        local numberplate = math.random(1000, 9999)
        SetVehicleNumberPlateText(vehicle," STARBUCKS  “ .. numberplate .. ”")
        local color = GetIsVehiclePrimaryColourCustom(vehicle)
        SetVehicleCustomPrimaryColour(vehicle, 108,11,184)
        SetVehicleCustomSecondaryColour(vehicle, 108,11,184)
        local plate = GetVehicleNumberPlateText(vehicle)
        TriggerServerEvent('garage:addKeys', plate)
        closeMenuFull()
      end)
end



function TakeOutVehicleVagos(vehicleInfo)
    ESX.Game.SpawnVehicle(vehicleInfo, {
        x = Config.Locations["ogcarspawnVagos"].coords.x,
        y = Config.Locations["ogcarspawnVagos"].coords.y,
        z = Config.Locations["ogcarspawnVagos"].coords.z
      }, Config.Locations["ogcarspawnVagos"].coords.h, function(vehicle)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
        local numberplate = math.random(1000, 9999)
        SetVehicleNumberPlateText(vehicle," VAG  “ .. numberplate .. ”")
        local color = GetIsVehiclePrimaryColourCustom(vehicle)
        SetVehicleCustomPrimaryColour(vehicle, 179,176,37)
        SetVehicleCustomSecondaryColour(vehicle, 0,0,0)
        local plate = GetVehicleNumberPlateText(vehicle)
        TriggerServerEvent('garage:addKeys', plate)
        closeMenuFull()
      end)
end

function TakeOutVehicleTheFamily(vehicleInfo)
    ESX.Game.SpawnVehicle(vehicleInfo, {
        x = Config.Locations["ogcarspawnTheFamily"].coords.x,
        y = Config.Locations["ogcarspawnTheFamily"].coords.y,
        z = Config.Locations["ogcarspawnTheFamily"].coords.z
      }, Config.Locations["ogcarspawnTheFamily"].coords.h, function(vehicle)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
        local numberplate = math.random(1000, 9999)
        SetVehicleNumberPlateText(vehicle," FAM  “ .. numberplate .. ”")
        local color = GetIsVehiclePrimaryColourCustom(vehicle)
        SetVehicleCustomPrimaryColour(vehicle, 0, 50, 0)
        SetVehicleCustomSecondaryColour(vehicle, 0, 0, 0)
        local plate = GetVehicleNumberPlateText(vehicle)
        TriggerServerEvent('garage:addKeys', plate)
        closeMenuFull()
      end)
end

function TakeOutVehicleMarabunta(vehicleInfo)
    ESX.Game.SpawnVehicle(vehicleInfo, {
        x = Config.Locations["ogcarspawnMarabunta"].coords.x,
        y = Config.Locations["ogcarspawnMarabunta"].coords.y,
        z = Config.Locations["ogcarspawnMarabunta"].coords.z
      }, Config.Locations["ogcarspawnMarabunta"].coords.h, function(vehicle)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
        local numberplate = math.random(1000, 9999)
        SetVehicleNumberPlateText(vehicle," FAM  “ .. numberplate .. ”")
        local color = GetIsVehiclePrimaryColourCustom(vehicle)
        SetVehicleCustomPrimaryColour(vehicle, 0, 65, 188)
        SetVehicleCustomSecondaryColour(vehicle, 0, 65, 188)
        local plate = GetVehicleNumberPlateText(vehicle)
        TriggerServerEvent('garage:addKeys', plate)
        closeMenuFull()
      end)
end

function closeMenuFull()
    Menu.hidden = true
    currentGarage = nil
    ClearMenu()
end

--End Of The Script

-- Script Made By SBRULEZ#6969