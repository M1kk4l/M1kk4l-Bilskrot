--[[
███╗   ███╗  ███╗  ██╗  ██╗██╗  ██╗  ██╗██╗██╗
████╗ ████║░████║  ██║ ██╔╝██║ ██╔╝ ██╔╝██║██║
██╔████╔██║██╔██║  █████═╝ █████═╝ ██╔╝ ██║██║
██║╚██╔╝██║╚═╝██║  ██╔═██╗ ██╔═██╗ ███████║██║
██║ ╚═╝ ██║███████╗██║ ╚██╗██║ ╚██╗╚════██║███████╗
╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝     ╚═╝╚══════╝
--]] 

HT = nil

vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function()
    while HT == nil do
        TriggerEvent('HT_base:getBaseObjects', function(obj) HT = obj end)
        Citizen.Wait(0)
    end
end)

local Skrot = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if Skrot then
        for k,v in pairs(M1kk4l.Sted) do
        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),v.x,v.y,v.z, true) < 35 then
            DrawMarker(36, v.x,v.y,v.z, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5001, 60, 163, 49, 250, 0, 0, 0, 1)
            if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.x,v.y,v.z, true ) < 1 then
                DrawText3D(v.x,v.y,v.z+1.0, "[~b~E~w~] Skrotte køretøjet")
                if IsControlJustPressed (1, M1kk4l.Key) then
                    HT.TriggerServerCallback('M1kk4l:Client:CheckJob', function(Job)
                        if Job == true then
                            Skrot = false
                            local ped = GetPlayerPed(-1)
                            local vehicle = GetVehiclePedIsIn(ped, false)
                            if (IsPedSittingInAnyVehicle(ped)) then 
                                exports['M1kk4l_progressBars']:startUI(10000, "Skrotter køretøjet...")
                                RequestModel(GetHashKey('s_m_y_armymech_01'))
                                while not HasModelLoaded('s_m_y_armymech_01') do
                                    Citizen.Wait(1)
                                end
                                for k,b in pairs(M1kk4l.NPC) do
                                SetVehicleDoorOpen(vehicle, 4, false)
                                Ped2 = CreatePed(4, 0x62CC28E2, b.x, b.y, b.z-1, b.h, false, true)
                                SetEntityHeading(Ped2, b.h)
                                FreezeEntityPosition(Ped2, true)
                                SetEntityInvincible(Ped2, true)
                                SetBlockingOfNonTemporaryEvents(Ped2, true)
                                RequestAnimDict("anim@amb@facility@missle_controlroom@")
                                    while not HasAnimDictLoaded("anim@amb@facility@missle_controlroom@") do
                                        Citizen.Wait(1)
                                    end
                                TaskPlayAnim(Ped2,"anim@amb@facility@missle_controlroom@", "idle", 8.0, 1.0, -1, 0, 0, 0, 0, 0)
                                FreezeEntityPosition(vehicle, true)
                                Citizen.Wait(10000)
                                FreezeEntityPosition(vehicle, false)
                                SetVehicleDoorShut(vehicle, 4, true)
                                TaskLeaveVehicle(ped, vehicle)
                                Citizen.Wait(1000)
                                while DoesEntityExist(vehicle) do
                                    Citizen.Wait(500)
                                    DeleteGivenVehicle(vehicle)
                                    DeleteEntity(Ped2)
                                    TriggerServerEvent("M1kk4l:BilskrotPenge")
                                    Skrot = true
                                end
                                end
                                else
                                    exports['mythic_notify']:DoHudText('error', 'Du skal sidde i et køretøj.')
                                    Skrot = true
                            end
                        else
                            TriggerEvent("pNotify:SendNotification",{text = "Du er ikke Mekaniker",type = "error",timeout = (5000),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})    
                          end
                    end)
                end
            end
        end
    end
    end
end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if Skrot then
        for k,v in pairs(M1kk4l.Sted2) do
        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),v.x,v.y,v.z, true) < 35 then
            DrawMarker(36, v.x,v.y,v.z, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5001, 60, 163, 49, 250, 0, 0, 0, 1)
            if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.x,v.y,v.z, true ) < 1 then
                DrawText3D(v.x,v.y,v.z+1.0, "[~b~E~w~] Skrotte køretøjet")
                if IsControlJustPressed (0, M1kk4l.Key) then
                    HT.TriggerServerCallback('M1kk4l:Client:CheckJob', function(Job)
                        if Job == true then
                            Skrot = false
                            local ped = GetPlayerPed(-1)
                            local vehicle = GetVehiclePedIsIn(ped, false)
                            if (IsPedSittingInAnyVehicle(ped)) then 
                                exports['M1kk4l_progressBars']:startUI(10000, "Skrotter køretøjet...")
                                RequestModel(GetHashKey('s_m_y_armymech_01'))
                                while not HasModelLoaded('s_m_y_armymech_01') do
                                    Citizen.Wait(1)
                                end
                                for k,b in pairs(M1kk4l.NPC2) do
                                SetVehicleDoorOpen(vehicle, 4, false)
                                Ped2 = CreatePed(4, 0x62CC28E2, b.x, b.y, b.z-1, b.h, false, true)
                                SetEntityHeading(Ped2, b.h)
                                FreezeEntityPosition(Ped2, true)
                                SetEntityInvincible(Ped2, true)
                                SetBlockingOfNonTemporaryEvents(Ped2, true)
                                RequestAnimDict("anim@amb@facility@missle_controlroom@")
                                    while not HasAnimDictLoaded("anim@amb@facility@missle_controlroom@") do
                                        Citizen.Wait(1)
                                    end
                                TaskPlayAnim(Ped2,"anim@amb@facility@missle_controlroom@", "idle", 8.0, 1.0, -1, 0, 0, 0, 0, 0)
                                FreezeEntityPosition(vehicle, true)
                                Citizen.Wait(10000)
                                FreezeEntityPosition(vehicle, false)
                                SetVehicleDoorShut(vehicle, 4, true)
                                TaskLeaveVehicle(ped, vehicle)
                                Citizen.Wait(1000)
                                while DoesEntityExist(vehicle) do
                                    Citizen.Wait(500)
                                    DeleteGivenVehicle(vehicle)
                                    DeleteEntity(Ped2)
                                    TriggerServerEvent("M1kk4l2:BilskrotPenge")
                                    Skrot = true
                                end
                                end
                                else
                                    exports['mythic_notify']:DoHudText('error', 'Du skal sidde i et køretøj.')
                                    Skrot = true
                            end
                        else
                            TriggerEvent("pNotify:SendNotification",{text = "Du er ikke Mekaniker",type = "error",timeout = (5000),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})    
                          end
                    end)
                end
            end
        end
    end
    end
end
end)


function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
  
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
        local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

function DeleteGivenVehicle(veh, timeoutMax)
    local timeout = 0 
    
    SetEntityAsMissionEntity(veh, true, true)
    DeleteVehicle(veh)

    if (DoesEntityExist(veh)) then
        exports['mythic_notify']:DoHudText('error', 'Kunne ikke skrotte køretøjet. Prøv igen.')

        while (DoesEntityExist(veh) and timeout < timeoutMax) do 
            DeleteVehicle(veh)

            if (not DoesEntityExist(veh) ) then 
                exports['mythic_notify']:DoHudText('success', 'Køretøjet er skrottet.')
            end 

            timeout = timeout + 1 
            Citizen.Wait(500)

            if (DoesEntityExist(veh) and (timeout == timeoutMax - 1)) then
                exports['mythic_notify']:DoHudText('error', 'Kunne ikke skrotte køretøjet. Prøv igen.')
            end 
        end 
    else 
        exports['mythic_notify']:DoHudText('success', 'Køretøjet er skrottet.')
    end 
end 