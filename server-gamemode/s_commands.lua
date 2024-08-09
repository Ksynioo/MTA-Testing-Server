--[[Create Vehicle by Model]]--
function createVehicleCommand0 ( thePlayer, commandName, vehicleName )
    local carModel = getVehicleModelFromName ( vehicleName )
    local x, y, z = getElementPosition ( thePlayer )
    local rx, ry, rz = getElementRotation(thePlayer)
    if carModel then
        vehicle = createVehicle ( carModel, x, y, z+0.5 )
        setElementRotation(vehicle, rx, ry, rz)
        warpPedIntoVehicle(thePlayer, vehicle)
    end
end
addCommandHandler ( "car", createVehicleCommand0)


--[[Create Vehicle by Name]]--
function createVehicleCommand1 ( thePlayer, commandName, vehicleID )
    local carID = getVehicleNameFromModel (vehicleID )
    local x, y, z = getElementPosition ( thePlayer )
    local rx, ry, rz = getElementRotation(thePlayer)
    if carID then
        vehicle = createVehicle (tonumber(vehicleID), x, y, z+0.5 )
        setElementRotation(vehicle, rx, ry, rz)
        warpPedIntoVehicle(thePlayer, vehicle)
    end
end
addCommandHandler ( "car", createVehicleCommand1)


--[[Remove Vehicle]]--
function destroyvehicle (player)
    local vehicle = getPedOccupiedVehicle(player)
    if vehicle then
        destroyElement(vehicle, vehicle)
    else
        outputChatBox ( "ERROR: You need a vehicle!", player, 255, 0, 0, true)
    end
end
addCommandHandler("dv", destroyvehicle)


--[[Remove the radar when command destroys vehicle]]--
addEventHandler ( "onPlayerCommand", root, 
    function (command)
        if(command =="dv") then
        setPlayerHudComponentVisible ( source, "radar", false )
    end
end)


--[[Give the weapon by Weapon Name]]--
function weaponGive(source, command, weaponID, ammo)
        local weapon = getWeaponIDFromName(weaponID)
		giveWeapon(source,weaponID, ammo, true)
end
addCommandHandler("weapon", weaponGive)


--[[Remove All Weapons]]--
function removeWeapon(player)
    takeAllWeapons(player)
end
addCommandHandler ( "rweapon", removeWeapon)


--[[Flip Occupied Vehicle]]--
function flipVehicle(player, vehicle)
	local vehicle = getPedOccupiedVehicle(player)
	if vehicle then
		local rX, rY, rZ = getElementRotation(vehicle)
		setElementRotation(vehicle, 0, 0, (rX > 90 and rX < 270) and (rZ + 180) or rZ)
	end
end
addCommandHandler('flip', flipVehicle)


--[[Vehicle God Mode]]--
function toggle_veh_godmode(player)
	local vehicle = getPedOccupiedVehicle(player)
	if vehicle then
		setVehicleDamageProof(vehicle, true)
		outputChatBox("Your car is damage proof", player, 255 ,255, 255)	
	end
end
addCommandHandler("vgod", toggle_veh_godmode)


--[[Vehicle Lock Doors]]--
function lockcar ( player )
    playervehicle = getPedOccupiedVehicle ( player ) -- define 'playervehicle' as the vehicle the player is in
    if ( playervehicle ) then	-- if a player is in a vehicle
        if isVehicleLocked ( playervehicle ) then		-- and if the vehicle is already locked
			setVehicleLocked ( playervehicle, false )
			outputChatBox("Otworzyłeś pojazd!", player, 255, 255, 255)			-- unlock it
        else                                                 -- otherwise (if it isn't locked) 
            setVehicleLocked ( playervehicle, true )   
				outputChatBox("Zamknąłeś pojazd!", player, 255, 255, 255)	-- lock it
        end
    end
end
addCommandHandler("lock",lockcar)


--[[Vehicle Repair]]--
function repairVeh(player, vehicle)
	local vehicle = getPedOccupiedVehicle(player)
	if (vehicle) then
    fixVehicle(vehicle)
	playSoundFrontEnd(player, 46)
	outputChatBox("Your car has been repaired", player, 255, 255, 255)
	else
	outputChatBox("ERROR: You need a vehicle to repair", player, 255, 255, 255)
	end
end
addCommandHandler("repair", repairVeh)


--[[Get Player Coords]]--
function GetPosition ( player ) 
    local x, y, z =  getElementPosition( player ) 
    local rx, ry, rz = getElementRotation(player)
 outputConsole("Pos: "..x..", "..y..", "..z.."\nRotation: "..rx..", "..ry..", "..rz) 
end 
addCommandHandler ( "coords", GetPosition) 



--[[Give Player Jetpack]]--
addCommandHandler ( "jetpack",
    function ( player )
        setPedWearingJetpack ( player, not isPedWearingJetpack ( player ) )
    end, true, false)


    
--[[Set Player Invisible]]--
    function Invis(thePlayer)  
        if getElementAlpha(thePlayer) == 0 then
          setElementAlpha(thePlayer, 255)  
            else
          setElementAlpha(thePlayer, 0)    
         end 
         
     end
     addCommandHandler("inv", Invis, true, false)   


--[[Teleport Player to coords]]--
function teleportToPos(player, command, x, y, z)
		local position = getElementPosition(player, x, y, z)
			setElementPosition(player, x, y, z)
end
addCommandHandler("tp", teleportToPos)


--[[Set Player Interior]]--
function interiorChange(player, command, interiorID)
    local interior = getElementInterior(player, interiorID)
        setElementInterior(player, interiorID)
end
addCommandHandler("interior", interiorChange, true, false)


--[[Set Vehicle Plate]]--
function PlateText(thePlayer,commandName,text)
	local Vehicle = getPedOccupiedVehicle(thePlayer)
	if Vehicle then
		if text then
			setVehiclePlateText( Vehicle, text )
		else
			outputChatBox("ERROR: Syntax for this command is: /setplate [message]",thePlayer, 255, 0, 0)
		end
	else
		outputChatBox("ERROR: You must be in a Vehicle.",thePlayer)
	end
end
addCommandHandler("setplate",PlateText, true, false)

--[[Set Time]]--
function timeSet(player, command, hour, minute)
    local currrentHours, currentMinute = getTime()
    hours = hours and tonumber(hours) or currrentHours
    minutes = minutes and tonumber(minutes) or currentMinute
    setTime(hour, minute)
    outputChatBox("Changed the server time to: "..hour..":"..minute)
end

addCommandHandler("timeset", timeSet, true, false)


--[[Set Weather]]--
function weather(weatherID)
	setWeather(0)
	outputChatBox("Changed server weather to: EXTRASUNNY LA!",source,  255, 255, 255) 
end
addCommandHandler("weather.extrasunny",weather)
	
function weather(weatherID)
	setWeather(1)
	outputChatBox("Changed server weather to: SUNNY LA!")
end
addCommandHandler("weather.sunny",weather)
	
function weather(weatherID)
	setWeather(4)
	outputChatBox("Changed server weather to: CLOUDY LA!")
end
addCommandHandler("weather.cloudy",weather)
	
function weather(weatherID)
	setWeather(8)
	outputChatBox("Changed server weather to: RAINY LA!")
end
addCommandHandler("weather.rainy",weather)
	
function weather(weatherID)
	setWeather(9)
	outputChatBox("Changed server weather to: FOGGY LA!")
end
addCommandHandler("weather.foggy",weather)