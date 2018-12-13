---------------------------------
--- Child Lock, Made by FAXES ---
---------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsUsing(ped)
        --local veh GetVehiclePedIsIn(ped, false)
        
        if IsPedInVehicle(ped, veh, false) then
            --if GetVehiclePedIsIn(ped, false) then
                if GetVehicleClass(veh) == 18 then
                    --print("class passed")
                    if GetPedInVehicleSeat(veh, -1) ~= ped and GetPedInVehicleSeat(veh, 0) ~= ped then
                        --print("ped is not in drivers seat")
                        if IsVehicleSeatFree(veh, -1) then
                            --print("drivers seat is free")
                            DisableControlAction(0, 75, true) -- exit veh
                            if IsDisabledControlJustPressed(0, 75) then
                                TriggerEvent("chatMessage", "^1^*Vehicle child lock is active.")
                            end
                        end
                    end
                end
            --end
        end
	end
end)